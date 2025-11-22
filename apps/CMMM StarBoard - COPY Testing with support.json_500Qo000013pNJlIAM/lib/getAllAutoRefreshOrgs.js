function getUniqueOrgNames() {
  const orgNames = {{ getAutoRefreshTable.value }}.map(item => item.orgNameAsKey);
  return [...new Set(orgNames)];
}

return getUniqueOrgNames();

