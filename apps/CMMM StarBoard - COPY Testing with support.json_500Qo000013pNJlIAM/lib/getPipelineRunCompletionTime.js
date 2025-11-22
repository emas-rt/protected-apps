const promotionPipelineRuns = {{ getAllPromotionPipelineRun.data }}
const includeOrgKpis = {{ includeKpisByOrgsList.selectedItems }} // Your ["org|kpi"] array

function getLastXDays(days) {
  const endDate = new Date();
  const startDate = new Date();
  startDate.setDate(startDate.getDate() - days);
  
  return {
    start: startDate.toISOString(),
    end: endDate.toISOString()
  };
}

var selectedDateRange = null
if ({{ timeRangeSelect.value }} == "Last 7 days") {
  selectedDateRange = getLastXDays(7)
} else if ({{ timeRangeSelect.value }} == "Last 30 days") {
  selectedDateRange = getLastXDays(30)
} else {
  selectedDateRange = {{dateRange.value}}
}

const startDate = selectedDateRange.start
const endDate = selectedDateRange.end

/**
 * Calculates time differences between pipeline stages for promotion pipeline runs
 * @param {Array} runs - Array of PromotionPipelineRun objects
 * @returns {Array} Array of objects with time differences in minutes and hours
 */
function calculatePipelineDurations(runs) {
  // Helper function to calculate time difference in minutes
  const getTimeDiff = (start, end) => {
    if (!start || !end) return null;
    const startTime = new Date(start);
    const endTime = new Date(end);
    const diffMs = endTime - startTime;
    return {
      minutes: Math.round(diffMs / 1000 / 60),
      hours: Math.round((diffMs / 1000 / 60 / 60) * 100) / 100
    };
  };
  
  // Create a Set for faster lookup
  const includeSet = new Set(includeOrgKpis);
  
  return runs
    .filter(run => run.deployed_to_prod === true)
    .filter(run => (run.created_at <= endDate) && (run.created_at >= startDate))
    .filter(run => {
      // Exclude if org|kpi combination is in the exclusion list
      const orgKpiKey = run.org_name_as_key + "|" + run.kpi_name_as_key;
      return includeSet.has(orgKpiKey);
    })
    .map(run => ({
      id: run._key,
      org_name_as_key: run.org_name_as_key,
      kpi_name_as_key: run.kpi_name_as_key,
      created_at: run.created_at,
      training_start_at: run.training_start_at,
      validation_start_at: run.validation_start_at,
      serving_start_at: run.serving_start_at,
      deployed_to_staging_at: run.deployed_to_staging_at,
      deployed_to_prod_at: run.deployed_to_prod_at,
      training_to_validation: getTimeDiff(run.training_start_at, run.validation_start_at),
      validation_to_serving: getTimeDiff(run.validation_start_at, run.serving_start_at),
      serving_to_staging: getTimeDiff(run.serving_start_at, run.deployed_to_staging_at),
      staging_to_prod: getTimeDiff(run.deployed_to_staging_at, run.deployed_to_prod_at),
      total_training_to_prod: getTimeDiff(run.training_start_at, run.deployed_to_prod_at)
    })).filter(run => {
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
}

return calculatePipelineDurations(promotionPipelineRuns)