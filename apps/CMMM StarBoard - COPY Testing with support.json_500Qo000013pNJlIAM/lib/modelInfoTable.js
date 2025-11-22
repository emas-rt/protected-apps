return {
  "modelId": {{  promotionPipelineRunsTable.selectedRow._key}},
"modelArtifactUri": {{ promotionPipelineRunsTable.selectedRow.model_artifact_uri }},
"trainingDataUri": {{ promotionPipelineRunsTable.selectedRow.training_data_uri }},
"CptUri": {{ promotionPipelineRunsTable.selectedRow.cpt_uri }}
}