function getLatestDeployedModels() {
  const records = {{ getAllPromotionPipelineRun.data }} || [];

  // Exclude records with missing/blank KPI key
  const filtered = records.filter(r =>
    r?.kpi_name_as_key !== null &&
    r?.kpi_name_as_key !== undefined &&
    String(r.kpi_name_as_key).trim() !== ""
  );

  const ts = (d) => {
    const t = Date.parse(d);
    return Number.isFinite(t) ? t : -Infinity;
  };

  // In-prod check: prefer boolean flag, fallback to timestamp if flag not set
  const hasProd = (r) => {
    if (typeof r?.deployed_to_prod === "boolean") {
      return r.deployed_to_prod;
    }
    return ts(r?.deployed_to_prod_at) !== -Infinity;
  };

  const pickLatest = (group) => {
    const prodModels = group.filter(hasProd);
    return prodModels.length > 0
      ? _.maxBy(prodModels, r => ts(r.deployed_to_prod_at))
      : _.maxBy(group, r => ts(r.updated_at));
  };

  let latestModels = _.chain(filtered)
    .groupBy(r => `${r.org_name_as_key}||${r.kpi_name_as_key}`)
    .map(pickLatest)
    .compact()
    .value();

  // Optional filter: prod-only toggle
  const prodOnly = {{ selectedDeployedToProd.value }}; // true/false/null
  if (prodOnly != null) {
    latestModels = latestModels.filter(m => hasProd(m) === prodOnly);
  }

  // Optional filter: validations status
  const selectedValidationsPassedStatus = {{ selectedValidationsPassedStatus.value }};
  if (selectedValidationsPassedStatus != null) {
    latestModels = latestModels.filter(
      m => m.validations_all_passed === selectedValidationsPassedStatus
    );
  }

  // Optional filter: selected org
  const selected = {{ selectedOrgNameAsKey.selectedItem }};
  if (selected) {
    latestModels = latestModels.filter(m => m.org_name_as_key === selected);
  }

  return latestModels;
}

return getLatestDeployedModels();

