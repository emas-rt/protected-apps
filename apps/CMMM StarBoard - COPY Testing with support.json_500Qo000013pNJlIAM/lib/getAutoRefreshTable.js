const promotinoPipelineRunData = {{ getAllPromotionPipelineRun.data }}
const dataPrepPipelineRuns = {{ getAllDataPrepPipelineRun.data }}
const filtered_data = promotinoPipelineRunData.filter(run => (run.auto_refresh === true));

// Create a lookup map for faster access to data prep pipeline runs by ID
const dataPrepLookup = dataPrepPipelineRuns.reduce((acc, dpRun) => {
  acc[dpRun._key.name] = dpRun;
  return acc;
}, {});

const extracted_info = filtered_data.map(run => {
  // Find the corresponding data prep pipeline run
  const dataPrepRun = dataPrepLookup[run.data_prep_pipeline_run_id];
  
  return {
    "orgNameAsKey": run.org_name_as_key,
    "kpiNameAsKey": run.kpi_name_as_key,
    "dataRefreshDate": run.data_refresh_timestamp,
    "country": dataPrepRun?.country || null, // Add country field
    "dataPrepRunId": run.data_prep_run_id,
    "dataPrepSuccessful": run.data_prep_run_successful,
    "dataPrepValidationRunId": run.data_prep_validation_run_id,
    "dataPrepValidationSuccessful": run.data_prep_validation_successful,
    "trainingRunId": run.training_run_id,
    "trainingSuccessful": run.training_run_successful,
    "validationRunId": run.validation_run_id,
    "validationSuccessful": run.validation_run_successful,
    "validationAllPassed": run.validations_all_passed,
    "servingRunId": run.serving_run_id,
    "servingSuccessful": run.serving_run_successful,
    "asanaTaskId": run.asana_task_gid
  };
}).sort((a, b) => {
  // Sort by dataRefreshDate in descending order (latest first)
  return b.dataRefreshDate.localeCompare(a.dataRefreshDate);
});

return extracted_info