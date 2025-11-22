function getLatestValidationStatuses() {
  const records = {{ getAllPromotionPipelineRun.data }} || [];

  const filtered_records = records.filter(r =>
    r?.kpi_name_as_key !== null &&
    r?.kpi_name_as_key !== undefined &&
    String(r.kpi_name_as_key).trim() !== ""
  );

  return _.chain(filtered_records)
    .groupBy(record => `${record.org_name_as_key}||${record.kpi_name_as_key}`)
    .mapValues(group => {
      const latest = _.maxBy(group, r => new Date(r.created_at));
      return latest?.validations_all_passed ?? null;
    })
    .value();
}

return getLatestValidationStatuses();
