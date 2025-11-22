<Container
  id="tabbedContainer2"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs2"
      itemMode="static"
      navigateContainer={true}
      style={{
        fontSize: "h5Font",
        fontWeight: "h5Font",
        fontFamily: "h5Font",
        selectedBackground: "tertiary",
      }}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Tab 1" />
      <Option id="00031" value="Tab 2" />
      <Option id="00032" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="00030" viewKey="Promotion Pipeline">
    <Text
      id="text31"
      value="#### Pipeline Stage Completion Time By Run"
      verticalAlign="center"
    />
    <Container
      id="promotionPipelineMetricGroup"
      _direction="vertical"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden=""
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <Table
          id="pipelineStageMetricsTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getCompletionTimeTable.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="82576"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="82576"
            alignment="left"
            backgroundColor="{{ theme.primary }}"
            editable="false"
            format="string"
            groupAggregationMode="none"
            headerBackgroundColor="{{ theme.primary }}"
            key="metric"
            label="Metric"
            placeholder="Enter value"
            position="left"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="93eac"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="training_to_validation"
            label="Training"
            placeholder="Enter value"
            position="center"
            size={130}
            summaryAggregationMode="none"
            tooltip="The start of training to the start of model validation."
          />
          <Column
            id="9bbfc"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="validation_to_serving"
            label="Validation"
            placeholder="Enter value"
            position="center"
            size={116}
            summaryAggregationMode="none"
            tooltip="The start of model validation to the start of model serving. "
          />
          <Column
            id="4f094"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="serving_to_staging"
            label="Serving to staging"
            placeholder="Enter value"
            position="center"
            size={129}
            summaryAggregationMode="none"
            tooltip="The start of model serving to model being deployed to staging. Currently includes time spent on the science review process and the opening of a promotion PR. "
          />
          <Column
            id="57c03"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="staging_to_prod"
            label="Staging to prod"
            placeholder="Enter value"
            position="center"
            size={115}
            summaryAggregationMode="none"
            tooltip="Time taken from the model being deployed in staging to being deployed in prod. Currently include the time spent on braintrust review. "
          />
          <Column
            id="a1c0e"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="total_training_to_prod"
            label="Total time"
            placeholder="Enter value"
            position="center"
            size={132}
            summaryAggregationMode="none"
            tooltip="Total time taken from the start of model training to the model being deployed to prod, including review process. "
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="pipelineStageMetricsTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="pipelineStageMetricsTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
        <Text
          id="text34"
          value="#### Promotion Pipeline Stage Completion Stats"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Table
      id="runInTimeRange"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getPipelineRunCompletionTime.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="610cc"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="610cc"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="66e0d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="org_name_as_key"
        label="Org name as key"
        placeholder="Select option"
        position="left"
        size={172}
        summaryAggregationMode="none"
      />
      <Column
        id="3a556"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kpi_name_as_key"
        label="Kpi name as key"
        placeholder="Select option"
        position="left"
        size={185}
        summaryAggregationMode="none"
      />
      <Column
        id="3f5aa"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="training_to_validation"
        label="Training"
        placeholder="Enter value"
        position="center"
        size={88}
        summaryAggregationMode="none"
        tooltip="The start of training to the start of model validation."
        valueOverride="{{ item[timeUnit.value] }}"
      />
      <Column
        id="b3b6a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="validation_to_serving"
        label="Validation"
        placeholder="Enter value"
        position="center"
        size={80}
        summaryAggregationMode="none"
        tooltip="The start of model validation to the start of model serving. "
        valueOverride="{{ item[timeUnit.value] }}"
      />
      <Column
        id="17aa0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="serving_to_staging"
        label="Serving to staging"
        placeholder="Enter value"
        position="center"
        size={106}
        summaryAggregationMode="none"
        tooltip="The start of model serving to model being deployed to staging. Currently includes time spent on the science review process and the opening of a promotion PR. "
        valueOverride="{{ item[timeUnit.value] }}"
      />
      <Column
        id="caea5"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="staging_to_prod"
        label="Staging to prod"
        placeholder="Enter value"
        position="center"
        size={126}
        summaryAggregationMode="none"
        tooltip="Time taken from the model being deployed in staging to being deployed in prod. Currently include the time spent on braintrust review."
        valueOverride="{{ item[timeUnit.value] }}"
      />
      <Column
        id="a8d0f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="total_training_to_prod"
        label="Total time"
        placeholder="Enter value"
        position="center"
        size={126}
        summaryAggregationMode="none"
        tooltip="Total time taken from the start of model training to the model being deployed to prod, including review process. "
        valueOverride="{{ item[timeUnit.value] }}"
      />
      <Column
        id="c0cba"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e3fc8"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="training_start_at"
        label="Training start at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="68426"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="validation_start_at"
        label="Validation start at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1033a"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="serving_start_at"
        label="Serving start at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0971e"
        alignment="left"
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "00:00",
          displayTimeZone: "00:00",
        }}
        groupAggregationMode="none"
        key="deployed_to_staging_at"
        label="Deployed to staging at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5a772"
        alignment="left"
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "00:00",
          displayTimeZone: "00:00",
        }}
        groupAggregationMode="none"
        key="deployed_to_prod_at"
        label="Deployed to prod at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="runInTimeRange"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="runInTimeRange"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Promotion Pipeline Staging Duration Distribution Plot"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Switch
          id="excludeOutliersPromotion"
          disabled=""
          label="Exclude outliers in plot"
          value="true"
        />
        <Chart
          id="pipelineStageChart"
          chartType="plotlyJson"
          hidden="{{ !getPromotionBoxPlot.value?.data || !getPromotionBoxPlot.value?.layout }}"
          plotlyDataJson="{{ getPromotionBoxPlot.value.data }}"
          plotlyLayoutJson="{{ getPromotionBoxPlot.value.layout }}"
          selectedPoints="[]"
        />
      </View>
    </Container>
  </View>
  <View id="00031" viewKey="Data Prep">
    <Container
      id="dataPrepPipelineStatsGroup"
      _direction="vertical"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden=""
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text33"
          value="#### Data Prep Pipeline Stage Completion Stats"
          verticalAlign="center"
        />
        <Table
          id="dataPrepPipelineCompletionTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getDataPrepTimeTable.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="c5cd7"
            alignment="left"
            backgroundColor="{{ theme.primary }}"
            format="string"
            groupAggregationMode="none"
            headerBackgroundColor="{{ theme.primary }}"
            key="metric"
            label="Metric"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a4b6f"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="data_prep_duration"
            label="Data prep duration"
            placeholder="Enter value"
            position="center"
            size={158}
            summaryAggregationMode="none"
          />
          <Column
            id="e00c9"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="validation_duration"
            label="Validation duration"
            placeholder="Enter value"
            position="center"
            size={148}
            summaryAggregationMode="none"
          />
          <Column
            id="d9bf2"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="total_duration"
            label="Total duration"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="dataPrepPipelineCompletionTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="dataPrepPipelineCompletionTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="dataPrepPipelineCompletionTimeByRun"
      _direction="vertical"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden=""
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <Text
          id="text32"
          value="#### Data Prep Pipeline Completion Time By Run"
          verticalAlign="center"
        />
        <Table
          id="dataPrepPipelineMetricByRun"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getDataPrepPipelineCompletionTime.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="6cdd9"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="d87ee"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="org_name_as_key"
            label="Org name as key"
            placeholder="Select option"
            position="left"
            size={177}
            summaryAggregationMode="none"
            valueOverride="{{ item }}"
          />
          <Column
            id="22bde"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="kpi_name_as_key"
            label="Kpi name as key"
            placeholder="Select option"
            position="left"
            size={180}
            summaryAggregationMode="none"
          />
          <Column
            id="3e178"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="data_prep_duration"
            label="Data prep duration"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ item[timeUnit.value] }}"
          />
          <Column
            id="e6967"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="validation_duration"
            label="Validation duration"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ item[timeUnit.value] }}"
          />
          <Column
            id="d35f2"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="total_duration"
            label="Total duration"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ item[timeUnit.value] }}"
          />
          <Column
            id="08cf2"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="started_at"
            label="Run started at"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="85c44"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="validation_started_at"
            label="Validation started at"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="6cdd9"
            alignment="left"
            format="json"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="cc2aa"
            alignment="left"
            format="datetime"
            formatOptions={{
              manageTimeZone: true,
              valueTimeZone: "00:00",
              displayTimeZone: "00:00",
            }}
            groupAggregationMode="none"
            key="created_at"
            label="Created at"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="05eb8"
            alignment="left"
            format="datetime"
            formatOptions={{
              manageTimeZone: true,
              valueTimeZone: "00:00",
              displayTimeZone: "00:00",
            }}
            groupAggregationMode="none"
            key="updated_at"
            label="Updated at"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="dataPrepPipelineMetricByRun"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="dataPrepPipelineMetricByRun"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Data Prep Pipeline Stage Duration Distribution"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Switch
          id="excludeOutliersToggle"
          label="Exclude Outliers in plot"
          value="true"
        />
        <Chart
          id="dataPrepBoxPlotChart"
          chartType="plotlyJson"
          plotlyDataJson="{{ getDataPrepBoxPlot.value.data }}"
          plotlyLayoutJson="{{ getDataPrepBoxPlot.value.layout }}"
          selectedPoints="[]"
        />
      </View>
    </Container>
  </View>
</Container>
