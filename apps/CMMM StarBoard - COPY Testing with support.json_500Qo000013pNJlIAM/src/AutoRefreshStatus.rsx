<Screen
  id="AutoRefreshStatus"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={5}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="65d5baa5-5c28-4874-a49d-6140a632062f"
>
  <Function
    id="getCountryByOrgKPI"
    funcBody={include("../lib/getCountryByOrgKPI.js", "string")}
  />
  <Function
    id="getAutoRefreshTable"
    funcBody={include("../lib/getAutoRefreshTable.js", "string")}
  />
  <Function
    id="getAllAutoRefreshOrgs"
    funcBody={include("../lib/getAllAutoRefreshOrgs.js", "string")}
  />
  <Function
    id="getAutoRefreshKPIByOrg"
    funcBody={include("../lib/getAutoRefreshKPIByOrg.js", "string")}
    runBehavior="debounced"
  />
  <Frame
    id="$main6"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="NavigationStack8"
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
          id="stack8"
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
              id="circularImage8"
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
              id="text36"
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
          id="navigation12"
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
            key="f9d4f"
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
            id="3ecbb"
            disabled={false}
            hidden={false}
            icon="bold/shopping-business-progress-bar-2"
            iconPosition="left"
            itemType="page"
            label="Promotion Pipeline"
            screenTargetId="PromotionPipeline"
          />
          <Option
            id="dc04f"
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
            id="0f47f"
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
            id="736a9"
            disabled={false}
            hidden={false}
            highlight={false}
            icon="bold/interface-arrows-synchronize"
            iconPosition="left"
            itemType="page"
            label="Auto Refresh"
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
      id="orgNameAsKeySelect"
      data="{{ getAllAutoRefreshOrgs.value }}"
      emptyMessage="No options"
      label="org_name_as_key"
      labelPosition="top"
      labels="{{ item }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="kpiNameAsKeySelect"
      data="{{ getAutoRefreshKPIByOrg.value[orgNameAsKeySelect.selectedItem] }}"
      disabled="{{ !orgNameAsKeySelect.selectedItem }}"
      emptyMessage="No options"
      label="kpi_name_as_key"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
    />
    <Select
      id="countrySelect"
      data="{{ getCountryByOrgKPI.value }}"
      disabled="{{ !kpiNameAsKeySelect.selectedItem }}"
      emptyMessage="No options"
      label="country"
      labelPosition="top"
      labels="{{item }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Table
      id="table3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAutoRefreshTable.value }}"
      defaultFilters={{
        0: {
          id: "1e975",
          columnId: "05614",
          operator: "=",
          value: "{{ orgNameAsKeySelect.selectedItem }}",
          disabled: false,
        },
        1: {
          id: "8aec1",
          columnId: "67f12",
          operator: "=",
          value: "{{ kpiNameAsKeySelect.selectedItem }}",
          disabled: false,
        },
        2: {
          id: "8524c",
          columnId: "22d9b",
          operator: "=",
          value: "{{ countrySelect.selectedItem }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="8ec2a"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ accent: "tertiary" }}
      toolbarPosition="bottom"
    >
      <Column
        id="05614"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="orgNameAsKey"
        label="Org name as key"
        placeholder="Select option"
        position="left"
        size={172.28125}
        summaryAggregationMode="none"
        valueOverride="{{ item }}"
      />
      <Column
        id="67f12"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="kpiNameAsKey"
        label="Kpi name as key"
        placeholder="Select option"
        position="left"
        size={215.359375}
        summaryAggregationMode="none"
      />
      <Column
        id="22d9b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={70}
        summaryAggregationMode="none"
        valueOverride="{{ item }}"
      />
      <Column
        id="8ec2a"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="dataRefreshDate"
        label="Data refresh date"
        placeholder="Enter value"
        position="center"
        size={161.28125}
        summaryAggregationMode="none"
      />
      <Column
        id="f0552"
        alignment="left"
        editable="false"
        format="html"
        groupAggregationMode="none"
        key="dataPrepRunId"
        label="Data prep run ID"
        placeholder="Enter value"
        position="center"
        size={130.609375}
        summaryAggregationMode="none"
        valueOverride="<a href={{ prodMetaflowUrlPrefixDataPrep.value + item }} >{{ item }}</a>"
      />
      <Column
        id="56169"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="dataPrepSuccessful"
        label="Data prep successful"
        placeholder="Enter value"
        position="center"
        size={56.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="28561"
        alignment="left"
        format="html"
        groupAggregationMode="none"
        key="dataPrepValidationRunId"
        label="Data prep validation run ID"
        placeholder="Enter value"
        position="center"
        size={127.96875}
        summaryAggregationMode="none"
        valueOverride="<a href={{ prodMetaflowUrlPrefixDataPrepValidation.value + item }} >{{ item }}</a>"
      />
      <Column
        id="8a4c9"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="dataPrepValidationSuccessful"
        label="Data prep validation successful"
        placeholder="Enter value"
        position="center"
        size={47.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="ac487"
        alignment="left"
        format="html"
        groupAggregationMode="none"
        key="trainingRunId"
        label="Training run ID"
        placeholder="Enter value"
        position="center"
        size={136.4375}
        summaryAggregationMode="none"
        valueOverride="<a href={{ prodMetaflowUrlPrefixTraining.value + item }} >{{ item }}</a>"
      />
      <Column
        id="47d49"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="trainingSuccessful"
        label="Training successful"
        placeholder="Enter value"
        position="center"
        size={70.4375}
        summaryAggregationMode="none"
      />
      <Column
        id="e5d57"
        alignment="left"
        format="html"
        groupAggregationMode="none"
        key="validationRunId"
        label="Validation run ID"
        placeholder="Enter value"
        position="center"
        size={108.25}
        summaryAggregationMode="none"
        valueOverride="<a href={{ prodMetaflowUrlPrefixModelValidation.value + item }} >{{ item }}</a>"
      />
      <Column
        id="d5eb8"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="validationSuccessful"
        label="Validation successful"
        placeholder="Enter value"
        position="center"
        size={65.28125}
        summaryAggregationMode="none"
      />
      <Column
        id="23c55"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color: "{{ ValidationPassedColors.value[item] }}",
        }}
        groupAggregationMode="none"
        key="validationAllPassed"
        label="Validation all passed"
        placeholder="Select option"
        position="center"
        size={90.84375}
        summaryAggregationMode="none"
        valueOverride="{{ String(item) }}"
      />
      <Column
        id="26157"
        alignment="left"
        format="html"
        groupAggregationMode="none"
        key="servingRunId"
        label="Serving run ID"
        placeholder="Enter value"
        position="center"
        size={118.875}
        summaryAggregationMode="none"
        valueOverride="<a href={{ prodMetaflowUrlPrefixServing.value + item }} >{{ item }}</a>"
      />
      <Column
        id="84c30"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="servingSuccessful"
        label="Serving successful"
        placeholder="Enter value"
        position="center"
        size={56.875}
        summaryAggregationMode="none"
      />
      <Column
        id="87fc3"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="html"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="asanaTaskId"
        label="Asana task ID"
        placeholder="Enter value"
        position="center"
        size={143.984375}
        summaryAggregationMode="none"
        valueOverride={
          '<a href={{"https://app.asana.com/1/1200186794197546/project/1210175067727504/task/" + item}} target="_blank">{{item}}</a> '
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
          pluginId="table3"
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
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
