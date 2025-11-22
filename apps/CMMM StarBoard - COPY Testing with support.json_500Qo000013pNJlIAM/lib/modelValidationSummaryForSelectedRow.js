const selectedRow = {{ selectedPromotionRow.value }};

const validationSummary = selectedRow.validation_summary || {};

const summaryTable = Object.entries(validationSummary)
  .sort(([a], [b]) => a.localeCompare(b))  // sort alphabetically by check name
  .map(([check, result]) => ({
    "check name": check,
    "result": result
  }));

return summaryTable;
