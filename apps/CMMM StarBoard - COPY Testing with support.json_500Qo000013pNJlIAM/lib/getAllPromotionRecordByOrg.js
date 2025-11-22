function getPromotionPipeline() {
  const orgName = {{ orgNameSelect.value }};
  if (!orgName) return [];

  const records = {{ getAllPromotionPipelineRun.data }};

  // Filter by org_name_as_key and sort by updated_at descending
  return records
    .filter(record => record.org_name_as_key === orgName)
    .filter(record => record.kpi_name_as_key !== "" && record.kpi_name_as_key !== null)
    .sort((a, b) => new Date(b.updated_at) - new Date(a.updated_at));
}

return getPromotionPipeline();
