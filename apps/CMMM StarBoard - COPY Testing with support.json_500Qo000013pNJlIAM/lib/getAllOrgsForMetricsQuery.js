function getUniqueOrgNames() {
  const orgNames = (getAllDataPrepPipelineRun.data).filter(run => run.run_successful === true)
.map(item => item.org_name_as_key);
  return [...new Set(orgNames)];
}

return getUniqueOrgNames();
