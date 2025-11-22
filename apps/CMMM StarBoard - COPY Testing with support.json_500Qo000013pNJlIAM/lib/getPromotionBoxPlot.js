/**
 * Prepares data for Plotly box plot visualization
 * @param {Array} processedRuns - Array of runs from calculatePipelineDurations()
 * @param {String} timeUnit - Either 'minutes' or 'hours'
 * @param {Boolean} excludeOutliers - Whether to exclude outliers beyond upper fence (Q3 + 1.5*IQR)
 * @returns {Object} Plotly JSON configuration for box plot
 */
function prepareBoxPlotData(processedRuns, excludeOutliers = false) {
  // Filter out runs with null or negative values
  const validRuns = processedRuns.filter(run => {
    const durations = [
      run.training_to_validation,
      run.validation_to_serving,
      run.serving_to_staging,
      run.staging_to_prod,
      run.total_training_to_prod
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
    const stages = [
      'training_to_validation',
      'validation_to_serving',
      'serving_to_staging',
      'staging_to_prod',
      'total_training_to_prod'
    ];
    stages.forEach(stage => {
      filteredRuns = filterOutliers(filteredRuns, stage, {{ timeUnit.value }});
    });
    console.log(`After outlier removal: ${filteredRuns.length} runs remaining (removed ${validRuns.length - filteredRuns.length} outliers)`);
  }

  // Extract durations for each stage (in hours for better readability)
  const stages = [
    {
      name: 'Training',
      key: 'training_to_validation'
    },
    {
      name: 'Validation',
      key: 'validation_to_serving'
    },
    {
      name: 'Serving to Staging',
      key: 'serving_to_staging'
    },
    {
      name: 'Staging to Prod',
      key: 'staging_to_prod'
    },
    {
      name: 'Total',
      key: 'total_training_to_prod'
    }
  ];

  // Helper function to assign colors to stages
  function getStageColor(key) {
    const colors = {
      'training_to_validation': '#3b82f6',
      'validation_to_serving': '#8b5cf6',
      'serving_to_staging': '#ec4899',
      'staging_to_prod': '#f59e0b',
      'total_training_to_prod': '#10b981'
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
      text: `Pipeline Stage Duration Distribution`,
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
        standoff: 30
      },
      tickfont: {
        color: '#FFFFFF',
        size: 10
      },
      tickangle: -30
    },
    showlegend: true,
    legend: {
      font: {
        color: '#FFFFFF'
      }
    },
    paper_bgcolor: '#2E2E39',  // Canvas background
    plot_bgcolor: '#263B62',   // Primary surface background
    height: 500,
    margin: {
      b: 120,  // Bottom margin to prevent overlap
      l: 60,
      r: 40,
      t: 80
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

// For Retool Plotly JSON Chart component:
// Simply pass your processed runs data:
return prepareBoxPlotData(
  {{ getPipelineRunCompletionTime.value }}, 
  {{ excludeOutliersPromotion.value }}
)