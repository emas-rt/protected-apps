function getOrgToUniqueKpis() {
  const records = {{ getDataPrepPipelineRun.data }} || [];

  return _.chain(records)
    .groupBy('org_name_as_key')
    .mapValues(group => {
      const kpis = group
        .map(r => r.kpi_name_as_key)
        .filter(k => k != null && k !== '');
      const unique = _.uniq(kpis);
      unique.sort(); // optional: alphabetical
      return unique;
    })
    .value();
}

return getOrgToUniqueKpis();
