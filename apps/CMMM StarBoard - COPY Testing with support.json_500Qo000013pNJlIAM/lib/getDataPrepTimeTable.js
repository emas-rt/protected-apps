/**
 * Aggregates data prep pipeline duration statistics across multiple runs
 * @param {Array} processedRuns - Array of runs from calculateDataPrepDurations()
 * @param {String} timeUnit - Either 'minutes' or 'hours'
 * @returns {Object} Aggregated statistics for each pipeline stage
 */
function aggregateDataPrepStats(processedRuns, timeUnit) {
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
      run.data_prep_duration,
      run.validation_duration,
      run.total_duration
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
    data_prep_duration: calculateStats('data_prep_duration'),
    validation_duration: calculateStats('validation_duration'),
    total_duration: calculateStats('total_duration')
  };

  // Convert to array format for Retool tables (metrics as rows, stages as columns)
  const tableData = [
    {
      metric: `Min (${timeUnit})`,
      data_prep_duration: stats.data_prep_duration.min,
      validation_duration: stats.validation_duration.min,
      total_duration: stats.total_duration.min
    },
    {
      metric: `P50 (${timeUnit})`,
      data_prep_duration: stats.data_prep_duration.p50,
      validation_duration: stats.validation_duration.p50,
      total_duration: stats.total_duration.p50
    },
    {
      metric: `P95 (${timeUnit})`,
      data_prep_duration: stats.data_prep_duration.p95,
      validation_duration: stats.validation_duration.p95,
      total_duration: stats.total_duration.p95
    },
    {
      metric: `Max (${timeUnit})`,
      data_prep_duration: stats.data_prep_duration.max,
      validation_duration: stats.validation_duration.max,
      total_duration: stats.total_duration.max
    },
    {
      metric: 'Count',
      data_prep_duration: stats.data_prep_duration.count,
      validation_duration: stats.validation_duration.count,
      total_duration: stats.total_duration.count
    }
  ];

  return tableData;
}

// For Retool, use:
return aggregateDataPrepStats({{ getDataPrepPipelineCompletionTime.value }}, {{ timeUnit.value }});