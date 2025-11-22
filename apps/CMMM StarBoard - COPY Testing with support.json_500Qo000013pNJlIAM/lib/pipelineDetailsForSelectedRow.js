const selectedRow = {{ selectedPromotionRow.value }}

return {
  "orgNameAsKey": selectedRow.org_name_as_key,
  "kpiNameAsKey": selectedRow.kpi_name_as_key,
  "allValidationPassed": selectedRow.validations_all_passed,
  "modelValidationReportLink": "https://app.hex.tech/8d61826e-cd17-4346-8cec-4367afa32961/app/0195cf5c-3eab-7aa7-9644-92f8c8074bd1/latest?_gcp_project_id=%22haus-prod%22&_run_id_input=%22" + selectedRow.validation_run_id + "%22",
  "modelId": selectedRow._key,
  "modelUri": selectedRow.model_artifact_uri,
  "dataRefreshTimestamp": selectedRow.data_refresh_timestamp,
  "trainingRunId": selectedRow.training_run_id,
  "trainingStartAt": selectedRow.training_start_at,
  "validationRunId": selectedRow.validation_run_id,
  "validationStartAt": selectedRow.validation_start_at,
  "servingRunId": selectedRow.serving_run_id,
  "servingStartAt": selectedRow.serving_start_at,
}