const autoRefreshedData = {{ getAutoRefreshTable.value }}

const filtered = autoRefreshedData.filter(run => (run.orgNameAsKey == {{  orgNameAsKeySelect.value}} && run.kpiNameAsKey == {{  kpiNameAsKeySelect.value}})).map(run => run.country)

return [... new Set(filtered)]