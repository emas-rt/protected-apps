return {
  "Training Run ID": {{ promotionPipelineRunsTable.selectedRow.training_run_id }},
  "Training Start At (Local Time)": moment.utc({{ promotionPipelineRunsTable.selectedRow.training_start_at }}).local().format("YYYY-MM-DD HH:mm:ss z"),
  
  "Validation Run ID": {{ promotionPipelineRunsTable.selectedRow.validation_run_id }},
  "Validation Start At (Local Time)": moment.utc({{ promotionPipelineRunsTable.selectedRow.validation_start_at }}).local().format("YYYY-MM-DD HH:mm:ss z"),
  
  "Serving Run ID": {{ promotionPipelineRunsTable.selectedRow.serving_run_id }},
  "Serving Start At (Local Time)": moment.utc({{ promotionPipelineRunsTable.selectedRow.serving_start_at }}).local().format("YYYY-MM-DD HH:mm:ss z"),
}
