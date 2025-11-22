<Screen
  id="DataPrepPipeline"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={3}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="f512f25b-f5ed-4caa-ba3e-717341bfb410"
>
  <DatastoreQuery
    id="getDataPrepPipelineRun"
    actionType="queryDatastore"
    datastoreWhere={
      '[{"key":"created_at","value":"{{  new Date()}}","operation":"<="}]'
    }
    isMultiplayerEdited={false}
    kind="DataPrepPipelineRun"
    notificationDuration={4.5}
    queryRefreshTime="60000"
    resourceName="3f7e6d03-e248-483e-b56b-259e5f3ee376"
    runWhenModelUpdates={true}
    showSuccessToaster={false}
  />
  <Function
    id="getAllDataPrepOrg"
    funcBody={include("../lib/getAllDataPrepOrg.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="getKPIByOrgDataPrep"
    funcBody={include("../lib/getKPIByOrgDataPrep.js", "string")}
    runBehavior="debounced"
  />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="NavigationStack6"
      _direction="vertical"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "primary" } }}
    >
      <View id="00030" viewKey="View 1">
        <Container
          id="stack6"
          _align="center"
          _flexWrap={true}
          _gap="0px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
          style={{ map: { background: "primary" } }}
        >
          <View id="00030" viewKey="View 1">
            <Image
              id="circularImage6"
              aspectRatio={1}
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolStorageFileId="27bcc774-14f8-4cf1-80f1-449f11af748e"
              src="https://picsum.photos/id/1062/800/800"
              srcType="retoolStorageFileId"
              style={{ map: { borderRadius: "50%" } }}
            />
            <Text
              id="text24"
              style={{
                fontSize: "h1Font",
                fontWeight: "h1Font",
                fontFamily: "h1Font",
              }}
              value="CMMM StarBoard"
              verticalAlign="center"
            />
          </View>
        </Container>
        <Navigation
          id="navigation13"
          appTargetByIndex=""
          captionByIndex=""
          data=""
          disabledByIndex=""
          hiddenByIndex=""
          highlightByIndex=""
          iconByIndex=""
          iconPositionByIndex=""
          itemMode="static"
          itemTypeByIndex=""
          keyByIndex=""
          labels=""
          parentKeyByIndex=""
          persistUrlParamsByIndex=""
          screenTargetByIndex=""
          screenTargetIdByIndex=""
          src="data:image/svg+xml,%3csvg%20width='70'%20height='24'%20fill='none'%20xmlns='http://www.w3.org/2000/svg'%3e%3ccircle%20cx='10'%20cy='12'%20r='10'%20fill='%23B3B3B3'/%3e%3cpath%20d='M9.283%207.069c.218-.705%201.216-.705%201.434%200l.713%202.309a.75.75%200%200%200%20.717.528h2.386c.717%200%201.025.91.455%201.346l-1.994%201.524a.75.75%200%200%200-.261.817l.746%202.415c.215.698-.592%201.26-1.172.817l-1.852-1.414a.75.75%200%200%200-.91%200l-1.852%201.414c-.58.444-1.388-.12-1.172-.817l.746-2.415a.75.75%200%200%200-.261-.817l-1.994-1.524c-.57-.435-.262-1.346.455-1.346h2.386a.75.75%200%200%200%20.717-.528l.713-2.31Z'%20fill='%23fff'%20stroke='%23fff'%20stroke-width='.375'/%3e%3cpath%20d='M27.138%2018V4.91h2.767v10.808h5.613V18h-8.38Zm14.598.192c-.993%200-1.852-.211-2.576-.633a4.33%204.33%200%200%201-1.669-1.777c-.392-.763-.588-1.647-.588-2.653%200-1.014.196-1.9.588-2.659a4.28%204.28%200%200%201%201.669-1.777c.724-.426%201.583-.639%202.576-.639.992%200%201.849.213%202.57.64a4.266%204.266%200%200%201%201.674%201.776c.392.759.588%201.645.588%202.66%200%201.005-.196%201.89-.588%202.652a4.317%204.317%200%200%201-1.675%201.777c-.72.422-1.577.633-2.57.633Zm.012-2.11c.452%200%20.83-.128%201.132-.383.302-.26.53-.614.684-1.061.157-.448.236-.957.236-1.528%200-.57-.079-1.08-.236-1.528-.154-.447-.382-.8-.684-1.06-.303-.26-.68-.39-1.132-.39-.456%200-.84.13-1.15.39-.307.26-.54.613-.697%201.06-.153.448-.23.957-.23%201.528%200%20.571.077%201.08.23%201.528.158.447.39.8.697%201.06.31.256.694.384%201.15.384Zm11.014%205.804c-.882%200-1.639-.121-2.27-.364-.626-.239-1.124-.565-1.495-.978a3.006%203.006%200%200%201-.722-1.393l2.518-.34c.077.197.198.38.364.55.167.171.386.307.659.41.277.106.613.16%201.01.16.592%200%201.08-.146%201.464-.435.387-.286.581-.765.581-1.438V16.26h-.115c-.12.273-.298.53-.537.774a2.707%202.707%200%200%201-.92.594c-.375.154-.823.23-1.343.23a4.03%204.03%200%200%201-2.013-.511c-.6-.345-1.08-.871-1.438-1.579-.354-.712-.53-1.61-.53-2.697%200-1.112.18-2.041.543-2.787.362-.746.843-1.304%201.444-1.675a3.733%203.733%200%200%201%201.988-.556c.55%200%201.01.094%201.38.281.372.183.67.414.896.69.23.273.407.542.53.806h.102V8.18h2.704v9.915c0%20.835-.204%201.534-.613%202.096-.41.563-.976.985-1.7%201.266-.72.286-1.55.428-2.487.428Zm.057-6.072c.44%200%20.81-.109%201.113-.326.306-.222.54-.537.703-.946.166-.413.25-.908.25-1.483%200-.575-.082-1.074-.244-1.496-.162-.426-.396-.756-.703-.99-.307-.235-.68-.352-1.119-.352-.447%200-.824.121-1.131.364-.307.239-.539.571-.697.997-.157.426-.236.919-.236%201.477%200%20.567.079%201.057.236%201.47.162.41.395.727.697.953.307.221.684.332%201.131.332Zm11.346%202.378c-.993%200-1.851-.211-2.576-.633a4.33%204.33%200%200%201-1.668-1.777c-.392-.763-.588-1.647-.588-2.653%200-1.014.196-1.9.588-2.659a4.278%204.278%200%200%201%201.668-1.777c.725-.426%201.583-.639%202.576-.639.993%200%201.85.213%202.57.64a4.267%204.267%200%200%201%201.675%201.776c.392.759.588%201.645.588%202.66%200%201.005-.196%201.89-.588%202.652a4.317%204.317%200%200%201-1.675%201.777c-.72.422-1.577.633-2.57.633Zm.013-2.11c.452%200%20.829-.128%201.132-.383.302-.26.53-.614.683-1.061.158-.448.237-.957.237-1.528%200-.57-.079-1.08-.237-1.528-.153-.447-.381-.8-.683-1.06-.303-.26-.68-.39-1.132-.39-.456%200-.84.13-1.15.39-.307.26-.54.613-.697%201.06-.154.448-.23.957-.23%201.528%200%20.571.076%201.08.23%201.528.157.447.39.8.697%201.06.31.256.694.384%201.15.384Z'%20fill='%23555'/%3e%3c/svg%3e"
          srcType="retoolStorageFileId"
          style={{
            fontSize: "h4Font",
            fontWeight: "h4Font",
            fontFamily: "h4Font",
          }}
          tooltipByIndex=""
        >
          <Option
            id="00030"
            icon="bold/interface-home-3"
            iconPosition="left"
            itemType="page"
            label="Home"
            screenTargetId="Home"
          />
          <Option
            id="63218"
            disabled={false}
            hidden={false}
            highlight={false}
            icon="bold/interface-alert-information-circle-alternate"
            iconPosition="left"
            itemType="page"
            label="Org Details"
            persistUrlParams={false}
            screenTargetId="TabbedOrgPage"
          />
          <Option
            id="c11b7"
            disabled={false}
            hidden={false}
            icon="bold/shopping-business-progress-bar-2"
            iconPosition="left"
            itemType="page"
            label="Promotion Pipeline"
            screenTargetId="PromotionPipeline"
          />
          <Option
            id="6b101"
            disabled={false}
            hidden={false}
            highlight={false}
            icon="bold/computer-database-server-1"
            iconPosition="left"
            itemType="page"
            label="Data Prep"
            screenTargetId="DataPrepPipeline"
          />
          <Option
            id="48f6f"
            disabled={false}
            hidden={false}
            highlight={false}
            icon="bold/money-graph-arrow-increase"
            iconPosition="left"
            itemType="page"
            label="Pipeline Metrics"
            screenTargetId="PipelineMetrics"
          />
          <Option
            id="4feff"
            disabled={false}
            hidden={false}
            highlight={false}
            icon="bold/interface-arrows-synchronize"
            iconPosition="left"
            itemType="page"
            label="Refresh Status"
            screenTargetId="AutoRefreshStatus"
          />
          <Event
            event="click"
            method="openPage"
            params={{ map: { pageName: "{{ item.id }}" } }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Navigation>
      </View>
    </Container>
    <Select
      id="dataPrepOrgSelect"
      captionByIndex=""
      colorByIndex=""
      data="{{ getAllDataPrepOrg.value }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="org_name_as_key"
      labelPosition="top"
      labels="{{ item }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item }}"
    />
    <Select
      id="DataPrepKPISelect"
      data="{{ getKPIByOrgDataPrep.value }}"
      emptyMessage="No options"
      label="kpi_name_as_key"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item[dataPrepOrgSelect.selectedItem] }}"
    />
    <Table
      id="DataPrepPipelineRun"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getDataPrepPipelineRun.data }}"
      defaultFilters={{
        0: {
          id: "76851",
          columnId: "bd58e",
          operator: "is",
          value: "{{ dataPrepOrgSelect.selectedItem }}",
          disabled: false,
        },
        1: {
          id: "e27bd",
          columnId: "6fb0e",
          operator: "is",
          value: "{{ data }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="0118b"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ accent: "tertiary" }}
      toolbarPosition="bottom"
    >
      <Column
        id="bd58e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="org_name_as_key"
        label="Org name as key"
        placeholder="Select option"
        position="center"
        size={137}
        summaryAggregationMode="none"
      />
      <Column
        id="6fb0e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kpi_name_as_key"
        label="Kpi name as key"
        placeholder="Select option"
        position="center"
        size={211}
        summaryAggregationMode="none"
      />
      <Column
        id="44412"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="0118b"
        alignment="left"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="data_refresh_timestamp"
        label="Data refresh timestamp"
        placeholder="Enter value"
        position="center"
        size={176}
        summaryAggregationMode="none"
      />
      <Column
        id="a3b86"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="run_id"
        label="Data Prep Run ID"
        placeholder="Enter value"
        position="center"
        size={232}
        summaryAggregationMode="none"
      />
      <Column
        id="bd321"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="run_successful"
        label="Data prep successful"
        placeholder="Enter value"
        position="center"
        size={145}
        summaryAggregationMode="none"
      />
      <Column
        id="8fc01"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="started_at"
        label="Started at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="73cfb"
        alignment="left"
        format="html"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="validation_run_id"
        label="Validation run ID (Internal DQR link)"
        placeholder="Enter value"
        position="center"
        size={285}
        summaryAggregationMode="none"
        valueOverride={
          '<a href={{"https://app.hex.tech/8d61826e-cd17-4346-8cec-4367afa32961/app/cMMM-Data-Quality-Report-030texEDLBhji37sYvtDmO/latest?_gcp_project_id=%22haus-prod%22&_run_id_input=%22" + item + "%22"}} target="_blank">{{item}}</a> '
        }
      />
      <Column
        id="d4e3b"
        alignment="left"
        format="html"
        groupAggregationMode="none"
        key="validation_run_id"
        label="External DQR Link"
        placeholder="Enter value"
        position="center"
        referenceId="validationRun"
        size={140}
        summaryAggregationMode="none"
        valueOverride={
          '<a href={{"https://app.hex.tech/8d61826e-cd17-4346-8cec-4367afa32961/app/External-cMMM-Data-Quality-Report-03191OMpz4KFUL14rrVS8V/latest?_gcp_project_id=%22haus-prod%22&_run_id_input=%22" + item + "%22"}} target="_blank">link</a>'
        }
      />
      <Column
        id="dfd2f"
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
      <Column
        id="68a93"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="output_folder"
        label="Output folder"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="abfa4"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="validation_started_at"
        label="Validation started at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="88530"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="org_id"
        label="Org ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a9c80"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="kpi_id"
        label="Kpi ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a1b3c"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="validation_run_successful"
        label="Validation run successful"
        placeholder="Enter value"
        position="center"
        size={162}
        summaryAggregationMode="none"
      />
      <Column
        id="112ed"
        alignment="left"
        editable="false"
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "00:00",
          displayTimeZone: "00:00",
        }}
        groupAggregationMode="none"
        key="updated_at"
        label="Updated at (UTC)"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c968d"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="_key"
        label="Key"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6432c"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="validation_run_id"
        label="Validation repot link"
        placeholder="Enter value"
        position="center"
        referenceId="validation_report_link"
        size={100}
        summaryAggregationMode="none"
        valueOverride={
          '{{"https://app.hex.tech/8d61826e-cd17-4346-8cec-4367afa32961/app/cMMM-Data-Quality-Report-030texEDLBhji37sYvtDmO/latest?_gcp_project_id=%22haus-prod%22&_run_id_input=%22" + item + "%22"}}'
        }
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
          pluginId="DataPrepPipelineRun"
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
          pluginId="DataPrepPipelineRun"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
