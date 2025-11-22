function sortPromotionPipelineRun() {
  const data = {{ getAllPromotionPipelineRun.data }} || [];

  // Step 1: group by org+kpi and find current prod IDs
  const groups = {};
  for (const r of data) {
    const key = `${r.org_name_as_key}||${r.kpi_name_as_key}`;
    (groups[key] ??= []).push(r);
  }

  const currentProdIds = new Set();
  for (const [key, rows] of Object.entries(groups)) {
    const deployed = rows
      .filter(r => r.deployed_to_prod === true && r.deployed_to_prod_at)
      .sort((a, b) => new Date(b.deployed_to_prod_at) - new Date(a.deployed_to_prod_at));

    if (deployed.length > 0 && deployed[0]._key.name) {
      currentProdIds.add(deployed[0]._key.name);
    }
  }

  // Step 2: keep your original sorting
  const sorted = [...data].sort(
    (a, b) =>
      (Date.parse(b?.training_start_at || '') || -Infinity) -
      (Date.parse(a?.training_start_at || '') || -Infinity)
  );

  // Step 3: weekend check + validation_summary flattening
  const isWeekendInPT = (isoUtc) => {
    if (!isoUtc) return null;
    const d = new Date(isoUtc);
    if (Number.isNaN(d.getTime())) return null;
    const wd = new Intl.DateTimeFormat('en-US', {
      weekday: 'short',
      timeZone: 'America/Los_Angeles'
    }).format(d);
    return wd === 'Sat' || wd === 'Sun';
  };

  let result = sorted.map(row => {
    const weekend = isWeekendInPT(row?.training_start_at);

    let vs = {};
    if (row && row.validation_summary && typeof row.validation_summary === 'object') {
      vs = Object.fromEntries(
        Object.entries(row.validation_summary).sort(([k1], [k2]) =>
          k1.localeCompare(k2)
        )
      );
    }

    return {
      ...row,
      ...vs,
      training_start_is_weekend_pt: weekend,
      is_currently_in_prod: currentProdIds.has(row?._key.name)
    };
  });

  // Step 4: apply filter if displayCurrentlyInProdModel is true
  if ({{ displayCurrentlyInProdModel.value }}) {
    result = result.filter(r => r.is_currently_in_prod);
  }

  return result;
}

return sortPromotionPipelineRun();
