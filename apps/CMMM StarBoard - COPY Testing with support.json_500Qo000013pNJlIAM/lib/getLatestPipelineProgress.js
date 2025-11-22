function getLatestCreatedModels() {
  const records = {{ getAllPromotionPipelineRun.data }};

  const filtered_records = records.filter(r =>
    r?.kpi_name_as_key !== null &&
    r?.kpi_name_as_key !== undefined &&
    String(r.kpi_name_as_key).trim() !== ""
  );

  const keyLabels = {
    training_run_id: "Training",
    validation_run_id: "Validation",
    validations_all_passed: "All validations passed",
    serving_run_id: "Serving",
    asana_task_gid: "Asana ticket",
    promotion_pr_opened: "PR Opened",
    deployed_to_staging: "Deployed to Staging",
    deployed_to_prod: "Deployed to Prod"
  };

  const shouldInclude = (key, v) => {
    if (key === "validations_all_passed") {
      // Show whenever it's explicitly set (true or false)
      return v !== null && v !== undefined;
    }
    if (typeof v === "boolean") {
      // For other booleans, include only when true
      return v === true;
    }
    // For strings/ids/etc., exclude null/undefined/empty string
    return v !== null && v !== undefined && v !== "";
  };

  return _.chain(filtered_records)
    .groupBy(record => `${record.org_name_as_key}||${record.kpi_name_as_key}`)
    .mapValues(group => {
      const latest = _.maxBy(group, r => new Date(r.created_at));
      return Object.entries(keyLabels)
        .map(([key, label]) => shouldInclude(key, latest[key]) ? `${label}: ${latest[key]}` : null)
        .filter(Boolean);
    })
    .value();
}

return getLatestCreatedModels();
