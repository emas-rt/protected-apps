/**
 * Prepares data for Plotly box plot visualization for data prep pipeline
 * @param {Array} processedRuns - Array of runs from calculateDataPrepDurations()
 * @param {String} timeUnit - Either 'minutes' or 'hours'
 * @param {Boolean} excludeOutliers - Whether to exclude outliers beyond upper fence (Q3 + 1.5*IQR)
 * @returns {Object} Plotly JSON configuration for box plot
 */
function prepareDataPrepBoxPlotData(processedRuns, excludeOutliers = false) {
  // Filter out runs with null or negative values
  const validRuns = processedRuns.filter(run => {
    const durations = [
      run.data_prep_duration,
      run.validation_duration,
      run.total_duration
    ];
    
    return durations.every(duration => 
      duration !== null && 
      duration !== undefined &&
      duration.minutes !== null && 
      duration.minutes !== undefined &&
      duration.minutes >= 0
    );
  });

  console.log(`Filtered ${processedRuns.length - validRuns.length} runs. ${validRuns.length} valid runs for box plot.`);

  // Helper function to calculate Q1, Q3, and IQR
  function calculateQuartiles(values) {
    const sorted = [...values].sort((a, b) => a - b);
    const q1Index = Math.floor(sorted.length * 0.25);
    const q3Index = Math.floor(sorted.length * 0.75);
    const q1 = sorted[q1Index];
    const q3 = sorted[q3Index];
    const iqr = q3 - q1;
    const upperFence = q3 + 1.5 * iqr;
    const lowerFence = q1 - 1.5 * iqr;
    
    return { q1, q3, iqr, upperFence, lowerFence };
  }

  // Helper function to filter outliers for a specific stage
  function filterOutliers(runs, stageKey, timeUnit) {
    const values = runs.map(run => 
      timeUnit === 'hours' ? run[stageKey]?.hours : run[stageKey]?.minutes
    ).filter(v => v !== null && v !== undefined && !isNaN(v));
    
    const { upperFence, lowerFence } = calculateQuartiles(values);
    
    return runs.filter(run => {
      const value = timeUnit === 'hours' ? run[stageKey]?.hours : run[stageKey]?.minutes;
      return value !== null && value !== undefined && !isNaN(value) && 
             value <= upperFence && value >= lowerFence;
    });
  }

  // Apply outlier filtering if requested
  let filteredRuns = validRuns;
  if (excludeOutliers) {
    // Filter outliers for each stage
    const stages = ['data_prep_duration', 'validation_duration', 'total_duration'];
    stages.forEach(stage => {
      filteredRuns = filterOutliers(filteredRuns, stage, {{ timeUnit.value }});
    });
    console.log(`After outlier removal: ${filteredRuns.length} runs remaining (removed ${validRuns.length - filteredRuns.length} outliers)`);
  }

  // Extract durations for each stage
  const stages = [
    {
      name: 'Data Prep',
      key: 'data_prep_duration'
    },
    {
      name: 'Validation',
      key: 'validation_duration'
    },
    {
      name: 'Total',
      key: 'total_duration'
    }
  ];

  // Helper function to assign colors to stages
  function getStageColor(key) {
    const colors = {
      'data_prep_duration': '#3b82f6',      // Blue
      'validation_duration': '#8b5cf6',     // Purple
      'total_duration': '#10b981'           // Green
    };
    return colors[key] || '#6b7280';
  }

  // Create traces for each stage
  const data = stages.map(stage => {
    const values = filteredRuns
      .map(run => {{ timeUnit.value }} === 'hours' ? run[stage.key]?.hours : run[stage.key]?.minutes)
      .filter(v => v !== null && v !== undefined && !isNaN(v));
    
    return {
      type: 'box',
      name: stage.name,
      y: values,
      boxmean: 'sd', // Show mean and standard deviation
      marker: {
        color: getStageColor(stage.key)
      }
    };
  });

  const layout = {
    title: {
      text: `Data Prep Pipeline Stage Duration Distribution`,
      font: {
        color: '#FFFFFF'  // Light text
      }
    },
    yaxis: {
      title: {
        text: `Duration (` + {{ timeUnit.value }} + `)`,
        font: {
          color: '#FFFFFF'
        }
      },
      zeroline: false,
      gridcolor: '#263B62',  // Primary surface for grid lines
      tickfont: {
        color: '#FFFFFF'
      }
    },
    xaxis: {
      title: {
        text: 'Pipeline Stage',
        font: {
          color: '#FFFFFF'
        },
        standoff: 20
      },
      tickfont: {
        color: '#FFFFFF',
        size: 10
      },
      tickangle: 0
    },
    showlegend: true,
    legend: {
      font: {
        color: '#FFFFFF'
      }
    },
    paper_bgcolor: '#2E2E39',  // Canvas background
    plot_bgcolor: '#263B62',   // Primary surface background
    height: 600,
    margin: {
      b: 60,  // Bottom margin to prevent overlap
      l: 60,
      r: 40,
      t: 60
    },
    annotations: [
      {
        text: `Runs: ${filteredRuns.length}${excludeOutliers ? ` (${validRuns.length - filteredRuns.length} outliers removed)` : ''}`,
        xref: 'paper',
        yref: 'paper',
        x: 0.02,
        y: 0.98,
        xanchor: 'left',
        yanchor: 'top',
        showarrow: false,
        font: {
          color: '#FFFFFF',
          size: 11
        },
        bgcolor: 'rgba(38, 59, 98, 0.8)',
        borderpad: 4
      }
    ]
  };

  return {
    data: data,
    layout: layout
  };
}


return prepareDataPrepBoxPlotData({{ getDataPrepPipelineCompletionTime.value }}, {{  excludeOutliersToggle.value}})