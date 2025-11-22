function getUniqueOrgNames() {
  const orgNames = {{ getAllPromotionPipelineRun.data }}.map(item => item.org_name_as_key);
  return [...new Set(orgNames)];
}

return getUniqueOrgNames();

