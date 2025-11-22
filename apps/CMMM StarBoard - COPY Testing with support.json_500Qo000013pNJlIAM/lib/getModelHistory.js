function getModelHistory() {
  const orgName = {{ orgNameSelect.value }};
  if (!orgName) return [];

  const records = {{ getAllPromotionPipelineRun.data }};

  // Filter by org_name_as_key and sort by deployed_to_prod_at descending
  const filtered = records
    .filter(record => record.org_name_as_key === orgName)
    .filter(record => record.deployed_to_prod === true)
    .sort((a, b) => new Date(b.deployed_to_prod_at) - new Date(a.deployed_to_prod_at));
  if (filtered.length === 0) return [];

    const mostRecent = new Date(filtered[0].deployed_to_prod_at).getTime();

    return filtered.map(record => ({
      ...record,
      model_id: record._key.name,
      in_prod: new Date(record.deployed_to_prod_at).getTime() === mostRecent
    }));
}

return getModelHistory();
