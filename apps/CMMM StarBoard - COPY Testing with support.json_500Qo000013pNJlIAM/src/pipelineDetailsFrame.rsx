<DrawerFrame
  id="pipelineDetailsFrame"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text
      id="drawerTitle1"
      value="### Pipeline Details"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="pipelineDetailsFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text23"
      value="#### Model & Pipeline Information"
      verticalAlign="center"
    />
    <KeyValue
      id="pipelineDetailsKeyValue"
      data="{{ pipelineDetailsForSelectedRow.value }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      heightType="fixed"
      itemLabelPosition="top"
      labelWrap={true}
      style={{ accent: "tertiary", label: "#c8d9fa" }}
    >
      <Property
        id="orgNameAsKey"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Org name as key"
      />
      <Property
        id="kpiNameAsKey"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Kpi name as key"
      />
      <Property
        id="allValidationPassed"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color: "{{ ValidationPassedColors.value[item] }}",
        }}
        hidden="false"
        label="All validation passed"
        valueOverride="{{ item }}"
      />
      <Property
        id="modelValidationReportLink"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        hidden="false"
        label="Model validation report link"
      />
      <Property
        id="asanaTicketLink"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="false"
        label="Asana ticket link"
      />
      <Property
        id="dataRefreshTimestamp"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Data refresh timestamp"
      />
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
        id="modelUri"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Model uri"
      />
    </KeyValue>
    <Text
      id="text22"
      value="#### Model Validation Summary"
      verticalAlign="center"
    />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ modelValidationSummaryForSelectedRow.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="21d96"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="21d96"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="check name"
        label="Check name"
        placeholder="Enter value"
        position="center"
        size={387}
        summaryAggregationMode="none"
        valueOverride="{{ item }}"
      />
      <Column
        id="c4dd4"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color: "{{ ValidationPassedColors.value[item] }}",
        }}
        groupAggregationMode="none"
        key="result"
        label="Result"
        placeholder="Select option"
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
          pluginId="table2"
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
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Body>
  <Event
    event="show"
    method="trigger"
    params={{}}
    pluginId="getAllPromotionPipelineRun"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</DrawerFrame>
