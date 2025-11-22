/**
 * Aggregates pipeline duration statistics across multiple runs
 * @param {Array} processedRuns - Array of runs from calculatePipelineDurations()
 * @param {String} timeUnit - Either 'minutes' or 'hours'
 * @returns {Object} Aggregated statistics for each pipeline stage
 */
function aggregatePipelineStats(processedRuns, timeUnit) {
  // Input validation
  if (!processedRuns || !Array.isArray(processedRuns) || processedRuns.length === 0) {
    return {
      error: 'No valid data provided',
      total_runs: 0
    };
  }

  // Filter out runs with null or negative values in any step
  const validRuns = processedRuns.filter(run => {
    const durations = [
      run.training_to_validation,
      run.validation_to_serving,
      run.serving_to_staging,
      run.staging_to_prod,
      run.total_training_to_prod
    ];
    
    return durations.every(duration => 
      duration !== null && 
      duration.minutes !== null && 
      duration.minutes > 0 
    );
  });

  if (validRuns.length === 0) {
    return {
      error: 'No valid runs after filtering',
      total_runs: 0,
      filtered_out: processedRuns.length
    };
  }

  // Helper function to calculate percentile
  const percentile = (arr, p) => {
    if (arr.length === 0) return null;
    const sorted = [...arr].sort((a, b) => a - b);
    const index = (p / 100) * (sorted.length - 1);
    const lower = Math.floor(index);
    const upper = Math.ceil(index);
    const weight = index % 1;
    
    if (lower === upper) return sorted[lower];
    return sorted[lower] * (1 - weight) + sorted[upper] * weight;
  };

  // Helper function to calculate stats for a specific duration field
  const calculateStats = (field) => {
    const values = validRuns
      .map(run => timeUnit === 'hours' ? run[field]?.hours : run[field]?.minutes)
      .filter(val => val !== null && val !== undefined && !isNaN(val));
    
    if (values.length === 0) {
      return {
        count: 0,
        min: null,
        p50: null,
        p95: null,
        max: null
      };
    }

    const min = Math.min(...values);
    const max = Math.max(...values);
    const p50 = percentile(values, 50);
    const p95 = percentile(values, 95);

    return {
      min: Math.round(min * 100) / 100,
      p50: Math.round(p50 * 100) / 100,
      p95: Math.round(p95 * 100) / 100,
      max: Math.round(max * 100) / 100,
      count: values.length
    };
  };

  const stats = {
    total_runs: validRuns.length,
    original_runs: processedRuns.length,
    filtered_out: processedRuns.length - validRuns.length,
    training_to_validation: calculateStats('training_to_validation'),
    validation_to_serving: calculateStats('validation_to_serving'),
    serving_to_staging: calculateStats('serving_to_staging'),
    staging_to_prod: calculateStats('staging_to_prod'),
    total_training_to_prod: calculateStats('total_training_to_prod')
  };

  // Convert to array format for Retool tables (metrics as rows, stages as columns)
  const tableData = [
    {
      metric: `Min (${timeUnit})`,
      training_to_validation: stats.training_to_validation.min,
      validation_to_serving: stats.validation_to_serving.min,
      serving_to_staging: stats.serving_to_staging.min,
      staging_to_prod: stats.staging_to_prod.min,
      total_training_to_prod: stats.total_training_to_prod.min
    },
    {
      metric: `P50 (${timeUnit})`,
      training_to_validation: stats.training_to_validation.p50,
      validation_to_serving: stats.validation_to_serving.p50,
      serving_to_staging: stats.serving_to_staging.p50,
      staging_to_prod: stats.staging_to_prod.p50,
      total_training_to_prod: stats.total_training_to_prod.p50
    },
    {
      metric: `P95 (${timeUnit})`,
      training_to_validation: stats.training_to_validation.p95,
      validation_to_serving: stats.validation_to_serving.p95,
      serving_to_staging: stats.serving_to_staging.p95,
      staging_to_prod: stats.staging_to_prod.p95,
      total_training_to_prod: stats.total_training_to_prod.p95
    },
    {
      metric: `Max (${timeUnit})`,
      training_to_validation: stats.training_to_validation.max,
      validation_to_serving: stats.validation_to_serving.max,
      serving_to_staging: stats.serving_to_staging.max,
      staging_to_prod: stats.staging_to_prod.max,
      total_training_to_prod: stats.total_training_to_prod.max
    },
    {
      metric: 'Count',
      training_to_validation: stats.training_to_validation.count,
      validation_to_serving: stats.validation_to_serving.count,
      serving_to_staging: stats.serving_to_staging.count,
      staging_to_prod: stats.staging_to_prod.count,
      total_training_to_prod: stats.total_training_to_prod.count
    }
  ];

  return tableData;
}

// For Retool, use:
return aggregatePipelineStats({{ getPipelineRunCompletionTime.value }}, {{ timeUnit.value }});