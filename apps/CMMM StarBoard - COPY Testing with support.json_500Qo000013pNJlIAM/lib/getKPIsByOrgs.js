const orgToKpiMap = {{ getOrgKpiMap.value }};
const selectedOrgs = {{ includeOrgsList.selectedItems }};

const result = selectedOrgs.flatMap(selectedItem => {
  const kpis = orgToKpiMap[selectedItem];
  
  if (!kpis || kpis.length === 0) {
    console.log(`Skipping ${selectedItem} - no KPIs found`);
    return [];
  }
  
  return kpis.map(kpi => selectedItem + "|" + kpi);
});

return result;