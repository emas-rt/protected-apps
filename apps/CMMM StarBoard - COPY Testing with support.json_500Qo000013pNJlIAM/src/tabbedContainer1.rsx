<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  style={{ map: { background: "surfacePrimary" } }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{
        fontSize: "h6Font",
        fontWeight: "h6Font",
        fontFamily: "h6Font",
        selectedBackground: "tertiary",
      }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Tab 1" />
      <Option id="00031" value="Tab 2" />
      <Option id="00032" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="00031" viewKey="Promotion Pipeline">
    <Text
      id="text13"
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="Promotion Pipeline Runs"
      verticalAlign="center"
    />
    <Table
      id="promotionPipelineRunsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAllPromotionRecordByOrg.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="9e20a"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ accent: "tertiary" }}
      toolbarPosition="bottom"
    >
      <Column
        id="3e7fa"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="org_name_as_key"
        label="Org name as key"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f0446"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kpi_name_as_key"
        label="KPI"
        placeholder="Select option"
        position="center"
        size={177}
        summaryAggregationMode="none"
        valueOverride="{{ item }}"
      />
      <Column
        id="0c8e4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="training_run_id"
        label="Training run ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b50fd"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="training_start_at"
        label="Training start at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cde62"
        alignment="center"
        format="boolean"
        groupAggregationMode="none"
        key="training_run_successful"
        label="Training successful"
        placeholder="Enter value"
        position="center"
        size={134}
        summaryAggregationMode="none"
      />
      <Column
        id="c4294"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="validation_run_id"
        label="Validation run ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7b0fe"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="validation_start_at"
        label="Validation start at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="25066"
        alignment="center"
        format="boolean"
        groupAggregationMode="none"
        key="validation_run_successful"
        label="Validation successful"
        placeholder="Enter value"
        position="center"
        size={154}
        summaryAggregationMode="none"
      />
      <Column
        id="943b3"
        alignment="center"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color: "{{ ValidationPassedColors.value[item] }}",
          icon: "",
        }}
        groupAggregationMode="none"
        key="validations_all_passed"
        label="All validations passed"
        placeholder="Select option"
        position="center"
        size={147}
        summaryAggregationMode="none"
      />
      <Column
        id="11866"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="serving_run_id"
        label="Serving run ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bc196"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="serving_start_at"
        label="Serving start at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c097c"
        alignment="center"
        format="boolean"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="serving_run_successful"
        label="Serving successful"
        placeholder="Enter value"
        position="center"
        size={152}
        summaryAggregationMode="none"
      />
      <Column
        id="a8017"
        alignment="center"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="asana_task_gid"
        label="Asana ticket"
        placeholder="Enter value"
        position="center"
        size={186}
        summaryAggregationMode="none"
      />
      <Column
        id="12236"
        alignment="center"
        format="boolean"
        groupAggregationMode="none"
        key="promotion_pr_opened"
        label="PR opened"
        placeholder="Enter value"
        position="center"
        size={127}
        summaryAggregationMode="none"
      />
      <Column
        id="d3ad1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="promotion_pr_link"
        label="Promotion pr link"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="909eb"
        alignment="center"
        format="boolean"
        groupAggregationMode="none"
        key="deployed_to_staging"
        label="Staging deployed"
        placeholder="Enter value"
        position="center"
        size={161}
        summaryAggregationMode="none"
      />
      <Column
        id="e6682"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="deployed_to_staging_at"
        label="Deployed to staging at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2df84"
        alignment="center"
        format="boolean"
        groupAggregationMode="none"
        key="deployed_to_prod"
        label="Prod deployed"
        placeholder="Enter value"
        position="center"
        size={179}
        summaryAggregationMode="none"
      />
      <Column
        id="91bb2"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="deployed_to_prod_at"
        label="Deployed to prod at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="62c51"
        alignment="center"
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
      <Column
        id="9e20a"
        alignment="left"
        editable="false"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="_key"
        label="Model ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ item.name }}"
      />
      <Column
        id="7dea2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="training_data_uri"
        label="Training Data URI"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e3a24"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="model_artifact_uri"
        label="Model Artifact URI"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b721f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="cpt_uri"
        label="CPT URI"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="16c0e"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="created_at"
        label="Created at"
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
          pluginId="promotionPipelineRunsTable"
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
          pluginId="promotionPipelineRunsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Text
      id="text12"
      disableMarkdown={true}
      hidden="{{ !promotionPipelineRunsTable.selectedRow }}"
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="Promotion Pipeline Run Details"
      verticalAlign="center"
    />
    <Text
      id="text16"
      hidden="{{ !promotionPipelineRunsTable.selectedRow }}"
      value="#### Model Info"
      verticalAlign="center"
    />
    <Text
      id="text14"
      hidden="{{ !promotionPipelineRunsTable.selectedRow }}"
      value="#### **Metaflow Runs Info**"
      verticalAlign="center"
    />
    <Text
      id="text15"
      hidden="{{ !promotionPipelineRunsTable.selectedRow }}"
      value=" #### Asana Ticket and PR Info"
      verticalAlign="center"
    />
    <KeyValue
      id="promotionPipelineRunModelInfo2"
      data="{{ modelInfoTable.value }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      hidden="{{ !promotionPipelineRunsTable.selectedRow }}"
      itemLabelPosition="top"
      labelWrap={true}
      style={{ label: "#c8d9fa" }}
    >
      <Property
        id="modelId"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Model ID"
      />
      <Property
        id="modelArtifactUri"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Model Artifact URI"
      />
      <Property
        id="trainingDataUri"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Training Data URI"
      />
      <Property
        id="CptUri"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="CPT URI"
      />
    </KeyValue>
    <KeyValue
      id="keyValue3"
      data="{{ metaflowRunsInfo.value }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      hidden="{{ !promotionPipelineRunsTable.selectedRow }}"
      itemLabelPosition="top"
      labelWrap={true}
      style={{ label: "#c8d9fa" }}
    >
      <Property
        id="Training Run ID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Training Run ID"
      />
      <Property
        id="Training Start At (Local Time)"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Training Start At (Local Time)"
      />
      <Property
        id="Validation Run ID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Validation Run ID"
      />
      <Property
        id="Validation Start At (Local Time)"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Validation Start At (Local Time)"
      />
      <Property
        id="Serving Run ID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Serving Run ID"
      />
      <Property
        id="Serving Start At (Local Time)"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Serving Start At (Local Time)"
      />
    </KeyValue>
    <KeyValue
      id="keyValue4"
      data="{{ ticketAndPRInfo.value }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      hidden="{{ !promotionPipelineRunsTable.selectedRow }}"
      itemLabelPosition="top"
      labelWrap={true}
      style={{ accent: "tertiary", label: "#c8d9fa" }}
    >
      <Property
        id="promotionPrLink"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="false"
        label="Promotion PR Link"
      />
      <Property
        id="asanaTicketLink"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="false"
        label="Asana Ticket Link"
      />
    </KeyValue>
  </View>
  <View id="00030" label="Model Registry" viewKey="Model Registry">
    <Text
      id="text19"
      disableMarkdown={true}
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="Prod Model History"
      verticalAlign="center"
    />
    <Table
      id="modelDeployedTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getModelHistory.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="1bd0f"
        alignment="left"
        editable={false}
        format="boolean"
        formatOptions={{
          trueIcon: "bold/interface-validation-check-circle",
          trueColor: "rgba(36, 180, 61, 1)",
        }}
        groupAggregationMode="none"
        key="in_prod"
        label="In prod"
        placeholder="Enter value"
        position="center"
        size={73.75}
        summaryAggregationMode="none"
      />
      <Column
        id="f25e4"
        alignment="left"
        editable="true"
        format="datetime"
        groupAggregationMode="none"
        key="deployed_to_prod_at"
        label="Deployed to Prod"
        placeholder="Enter value"
        position="center"
        size={171.8125}
        summaryAggregationMode="none"
      />
      <Column
        id="01d02"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kpi_name_as_key"
        label="Kpi name as key"
        placeholder="Select option"
        position="center"
        size={164.796875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="07818"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="model_id"
        label="Model ID"
        placeholder="Enter value"
        position="center"
        size={276.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="ce2e3"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        key="model_artifact_uri"
        label="Model URI"
        placeholder="Enter value"
        position="center"
        size={373.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="b09e5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="cpt_uri"
        label="CPT URI"
        placeholder="Enter value"
        position="center"
        referenceId="cpt_uri"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e5903"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="training_data_uri"
        label="Training Data URI"
        placeholder="Enter value"
        position="center"
        referenceId="training_data_uri"
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
          pluginId="modelDeployedTable"
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
          pluginId="modelDeployedTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="selectRow"
        method="setValue"
        params={{
          map: {
            value:
              '{\n  source: "table",\n  value: {{ modelDeployedTable.selectedRow.data }}\n}',
          },
        }}
        pluginId="selectedModelSource"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Text
      id="text20"
      disableMarkdown={true}
      style={{ fontSize: "h3Font", fontWeight: "h3Font", fontFamily: "h3Font" }}
      value="Prod Deploy History"
      verticalAlign="center"
    />
    <Calendar
      id="calendar1"
      allDayByIndex="{{ item.allDay }}"
      colorByIndex="{{ item.color }}"
      data="{{ getModelDeployDates.value }}"
      dayMaxEvents={2}
      displayAllDaySlot={true}
      displayEventTime={true}
      displayTimeZone="local"
      displayWeekends={true}
      endByIndex="{{ item.end }}"
      eventIdByIndex="{{ item.id }}"
      itemMode="dynamic"
      listType="month"
      startByIndex="{{ item.start }}"
      titleByIndex="{{ item.title }}"
    />
    <KeyValue
      id="promotionPipelineRunModelInfo3"
      data="{{ modelDeployedInfo.value }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      hidden="false"
      itemLabelPosition="top"
      labelWrap={true}
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
        label: "#c8d9fa",
      }}
    >
      <Property
        id="Model ID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Model ID"
      />
      <Property
        id="Model Artifact URI"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Model Artifact URI"
      />
      <Property
        id="Training Data URI"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Training Data URI"
      />
      <Property
        id="CPT URI"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="CPT URI"
      />
    </KeyValue>
  </View>
</Container>
