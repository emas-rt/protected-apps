return {
  "promotionPrLink": {{  promotionPipelineRunsTable.selectedRow.promotion_pr_link}},
  "asanaTicketLink": {{promotionPipelineRunsTable.selectedRow.asana_task_gid}} && "https://app.asana.com/1/1200186794197546/project/1210175067727504/task/" + {{  promotionPipelineRunsTable.selectedRow.asana_task_gid}},
"modelValidationReportLink": "https://app.hex.tech/8d61826e-cd17-4346-8cec-4367afa32961/app/0195cf5c-3eab-7aa7-9644-92f8c8074bd1/latest?_gcp_project_id=%22haus-prod%22&_run_id_input=%22" + {{promotionPipelineRunsTable.selectedRow.validation_run_id}} + "%22"
}
