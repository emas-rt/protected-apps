function getOrgToUniqueKpis() {
  const records = {{ getAutoRefreshTable.value }} || [];

  return _.chain(records)
    .groupBy('orgNameAsKey')
    .mapValues(group => {
      const kpis = group
        .map(r => r.kpiNameAsKey)
        .filter(k => k != null && k !== '');
      const unique = _.uniq(kpis);
      unique.sort(); // optional: alphabetical
      return unique;
    })
    .value();
}

return getOrgToUniqueKpis();
