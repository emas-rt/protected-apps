<Screen
  id="PromotionPipeline"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={1}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="50b544b8-2ae7-4083-b2bd-fd46a34ff251"
>
  <Function
    id="getRunsWithValidationSummary"
    funcBody={include("../lib/getRunsWithValidationSummary.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="sortedPromotionPipelineRun"
    funcBody={include("../lib/sortedPromotionPipelineRun.js", "string")}
    runBehavior="debounced"
  />
  <State id="selectedPromotionRow" />
  <Function
    id="modelValidationSummaryForSelectedRow"
    funcBody={include(
      "../lib/modelValidationSummaryForSelectedRow.js",
      "string"
    )}
    runBehavior="debounced"
  />
  <Function
    id="pipelineDetailsForSelectedRow"
    funcBody={include("../lib/pipelineDetailsForSelectedRow.js", "string")}
    runBehavior="debounced"
  />
  <Include src="./pipelineDetailsFrame.rsx" />
</Screen>
