const records = {{ modelDeployedTable.data }} || [];
const selectedModel = {{ modelDeployedTable.selectedRow?.model_id }};

return records
  .filter(r => r.deployed_to_prod_at)
  .map((r, i) => {
    const d = new Date(r.deployed_to_prod_at);
    if (isNaN(d)) return null;      
const isSelected = selectedModel && r.model_id === selectedModel;
 
return {
      id: i,
      title: "Model Deployed",
      allDay: true,
      start: d,
      end: d,
      color: isSelected ? "blue" : "lightblue",
      model_id: r.model_id,
      model_artifact_uri: r.model_artifact_uri,
      training_data_uri: r.training_data_uri,
      cpt_uri: r.cpt_uri,
      deployed_to_prod_at: r.deployed_to_prod_at
    };
  });