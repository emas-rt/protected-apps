const dataPrepPipelineRuns = {{ getAllDataPrepPipelineRun.data }}
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
  selectedDateRange = {{ dateRange.value }}
}

const startDate = selectedDateRange.start
const endDate = selectedDateRange.end

/**
 * Calculates time differences between pipeline stages for data prep pipeline runs
 * @param {Array} runs - Array of DataPrepPipelineRun objects
 * @returns {Array} Array of objects with time differences in minutes and hours
 */
function calculateDataPrepDurations(runs) {
  // Helper function to calculate time difference in minutes and hours
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
    .filter(run => run.run_successful === true && run.validation_run_successful === true)
    .filter(run => (run.created_at <= endDate) && (run.created_at >= startDate))
    .filter(run => {
      // Include if org|kpi combination is in the inclusion list
      const orgKpiKey = run.org_name_as_key + "|" + run.kpi_name_as_key;
      return includeSet.has(orgKpiKey);
    })
    .map(run => ({
      id: run._key,
      org_name_as_key: run.org_name_as_key,
      kpi_name_as_key: run.kpi_name_as_key,
      created_at: run.created_at,
      started_at: run.started_at,
      validation_started_at: run.validation_started_at,
      updated_at: run.updated_at,
      data_prep_duration: getTimeDiff(run.started_at, run.validation_started_at),
      validation_duration: getTimeDiff(run.validation_started_at, run.updated_at),
      total_duration: getTimeDiff(run.started_at, run.updated_at)
    }))
    .filter(run => {
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
}

return calculateDataPrepDurations(dataPrepPipelineRuns)
