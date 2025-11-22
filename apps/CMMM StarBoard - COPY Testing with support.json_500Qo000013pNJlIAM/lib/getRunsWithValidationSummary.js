
function findValidationSummaryRuns() {
  return {{ getAllPromotionPipelineRun.data }}.filter(run => run.validation_summary !== undefined);
}

return findValidationSummaryRuns();

