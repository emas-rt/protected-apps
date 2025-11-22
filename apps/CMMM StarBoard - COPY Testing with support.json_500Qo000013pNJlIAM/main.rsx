<App>
  <Include src="./functions.rsx" />
  <Include src="./src/Home.rsx" />
  <Include src="./src/PromotionPipeline.rsx" />
  <DocumentTitle id="$customDocumentTitle" value="CMMM StarBoard" />
  <Include src="./src/TabbedOrgPage.rsx" />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#2e2e39"
    danger="#dc2626"
    defaultFont={{ size: "12px", fontWeight: "400" }}
    h1Font={{ size: "36px", fontWeight: "700" }}
    h2Font={{ size: "28px", fontWeight: "700" }}
    h3Font={{ size: "24px", fontWeight: "700", fontId: "" }}
    h4Font={{ size: "18px", fontWeight: "700" }}
    h5Font={{ size: "16px", fontWeight: "700" }}
    h6Font={{ size: "14px", fontWeight: "700" }}
    highlight="#fde68a"
    info="#3170f9"
    labelEmphasizedFont={{ size: "12px", fontWeight: "600" }}
    labelFont={{ size: "12px", fontWeight: "500" }}
    primary="#2c62cf"
    secondary="#ffffff"
    success="#059669"
    surfacePrimary="#263b62"
    surfacePrimaryBorder=""
    surfaceSecondary="#e9eaec"
    surfaceSecondaryBorder=""
    tertiary="#3bfac0"
    textDark="#060606"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/DataPrepPipeline.rsx" />
  <Include src="./src/PipelineMetrics.rsx" />
  <Include src="./src/AutoRefreshStatus.rsx" />
  <Container
    id="NavigationStack5"
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
        id="stack5"
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
            id="circularImage5"
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
            id="text21"
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
        id="navigation"
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
    id="promotionPipelineKpiSelect"
    data="{{ getAllKPIByOrg.value[promotionPipelineOrgSelect.selectedItem] }}"
    disabled="{{ !promotionPipelineOrgSelect.selectedItem }}"
    emptyMessage="No options"
    label="kpi_name_as_key"
    labelPosition="top"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showClear={true}
    showSelectionIndicator={true}
    values="{{ item }}"
  />
  <Select
    id="promotionPipelineOrgSelect"
    data="{{ getAllOrg.value }}"
    emptyMessage="No options"
    label="org_name_as_key"
    labelPosition="top"
    labels="{{ item }}"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showClear={true}
    showSelectionIndicator={true}
    values="{{ item }}"
  >
    <Option id="00030" value="Option 1" />
    <Option id="00031" value="Option 2" />
    <Option id="00032" value="Option 3" />
    <Option id="ad371" disabled={false} hidden={false} value="Option 4" />
  </Select>
  <Select
    id="selectedValidationsPassedStatus2"
    emptyMessage="No options"
    itemMode="static"
    label="Latest model validations passed"
    labelPosition="top"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showClear={true}
    showSelectionIndicator={true}
  >
    <Option id="00030" value="true" />
    <Option id="00031" value="false" />
  </Select>
  <Date
    id="deployedOnDate"
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar"
    label="Deployed To Prod On or After"
    labelPosition="top"
    showClear={true}
  />
  <Select
    id="weekendRunsSelect"
    emptyMessage="No options"
    itemMode="static"
    label="Weekend Runs"
    labelPosition="top"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showClear={true}
    showSelectionIndicator={true}
  >
    <Option id="00030" value="true" />
    <Option id="00031" value="false" />
  </Select>
  <Date
    id="trainedOnDate"
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar"
    label="Trained On or After"
    labelPosition="top"
    showClear={true}
  />
  <Text
    id="text6"
    value="## **Promotion Pipeline Runs**"
    verticalAlign="center"
  />
  <Checkbox
    id="displayValidationSummaryCheckbox"
    label="Display validation summary columns"
    labelWidth="100"
  />
  <Checkbox
    id="displayCurrentlyInProdModel"
    label="Display runs with model currently in prod"
    labelWidth="100"
  />
  <Table
    id="promotionPipelineRunTable"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ sortedPromotionPipelineRun.value }}"
    defaultFilters={{
      0: {
        id: "8fe59",
        columnId: "3e7fa",
        operator: "=",
        value: "{{ promotionPipelineOrgSelect.selectedItem }}",
        disabled: false,
      },
      1: {
        id: "2fe1c",
        columnId: "f0446",
        operator: "=",
        value: "{{ promotionPipelineKpiSelect.selectedLabel }}",
        disabled: false,
      },
      2: {
        id: "de0cd",
        columnId: "943b3",
        operator: "=",
        value: '"{{ selectedValidationsPassedStatus2.selectedItem.value }}"',
        disabled: false,
      },
      3: {
        id: "7c742",
        columnId: "9a1bf",
        operator: "=",
        value: "{{ weekendRunsSelect.value }}",
        disabled: false,
      },
      4: {
        id: "319a0",
        columnId: "b50fd",
        operator: "isAfter",
        value: "{{ trainedOnDate.value }}",
        disabled: false,
      },
      5: {
        id: "b2e0e",
        columnId: "91bb2",
        operator: "isAfter",
        value: "{{ deployedOnDate.value }}",
        disabled: false,
      },
    }}
    defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
    defaultSort={[{ object: { columnId: "b50fd", direction: "desc" } }]}
    emptyMessage="No rows found"
    enableSaveActions={true}
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
      hidden="false"
      key="org_name_as_key"
      label="Org"
      placeholder="Select option"
      position="left"
      size={172.28125}
      summaryAggregationMode="none"
      valueOverride="{{ item }}"
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
      position="left"
      size={202.859375}
      summaryAggregationMode="none"
      valueOverride="{{item }}"
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
      size={249.75}
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
      size={148.59375}
      summaryAggregationMode="none"
    />
    <Column
      id="b4bd6"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      hidden="true"
      key="data_refresh_timestamp"
      label="Data refresh timestamp"
      placeholder="Enter value"
      position="center"
      size={157.125}
      summaryAggregationMode="none"
    />
    <Column
      id="6a424"
      alignment="left"
      format="html"
      formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
      groupAggregationMode="none"
      key="data_prep_validation_run_id"
      label="Data prep validation run ID"
      placeholder="Enter value"
      position="center"
      size={279}
      summaryAggregationMode="none"
      valueOverride={
        '<a href={{"https://app.hex.tech/8d61826e-cd17-4346-8cec-4367afa32961/app/cMMM-Data-Quality-Report-030texEDLBhji37sYvtDmO/latest?_gcp_project_id=%22haus-prod%22&_run_id_input=%22" + item + "%22"}} target="_blank">{{item}}</a>'
      }
    />
    <Column
      id="cde62"
      alignment="left"
      format="boolean"
      groupAggregationMode="none"
      key="training_run_successful"
      label="Training successful"
      placeholder="Enter value"
      position="center"
      size={125.015625}
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
      size={261.203125}
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
      size={148.921875}
      summaryAggregationMode="none"
    />
    <Column
      id="25066"
      alignment="left"
      format="boolean"
      groupAggregationMode="none"
      key="validation_run_successful"
      label="Validation successful"
      placeholder="Enter value"
      position="center"
      size={135.28125}
      summaryAggregationMode="none"
    />
    <Column
      id="943b3"
      alignment="left"
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
      size={138.4375}
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
      size={183.59375}
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
      size={149}
      summaryAggregationMode="none"
    />
    <Column
      id="c097c"
      alignment="left"
      format="boolean"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="serving_run_successful"
      label="Serving successful"
      placeholder="Enter value"
      position="center"
      size={122.875}
      summaryAggregationMode="none"
    />
    <Column
      id="a8017"
      alignment="left"
      editableOptions={{ showStepper: true }}
      format="html"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      groupAggregationMode="sum"
      key="asana_task_gid"
      label="Asana ticket"
      placeholder="Enter value"
      position="center"
      size={139.15625}
      summaryAggregationMode="none"
      textColor="{{ item }}"
      valueOverride={
        '<a href={{"https://app.asana.com/1/1200186794197546/project/1210175067727504/task/" + item}} target="_blank">{{item}}</a> '
      }
    />
    <Column
      id="12236"
      alignment="left"
      format="boolean"
      groupAggregationMode="none"
      key="promotion_pr_opened"
      label="PR opened"
      placeholder="Enter value"
      position="center"
      size={76.59375}
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
      size={357.1875}
      summaryAggregationMode="none"
    />
    <Column
      id="909eb"
      alignment="left"
      format="boolean"
      groupAggregationMode="none"
      key="deployed_to_staging"
      label="Staging deployed"
      placeholder="Enter value"
      position="center"
      size={115.0625}
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
      size={148.625}
      summaryAggregationMode="none"
    />
    <Column
      id="2df84"
      alignment="left"
      format="boolean"
      groupAggregationMode="none"
      key="deployed_to_prod"
      label="Prod deployed"
      placeholder="Enter value"
      position="center"
      size={98.265625}
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
      size={147.15625}
      summaryAggregationMode="none"
    />
    <Column
      id="f9af0"
      alignment="left"
      format="boolean"
      formatOptions={{
        trueIcon: "bold/interface-validation-check-circle",
        trueColor: "{{ theme.success }}",
      }}
      groupAggregationMode="none"
      key="is_currently_in_prod"
      label="Is currently in prod"
      placeholder="Enter value"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="62c51"
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
      size={148.984375}
      summaryAggregationMode="none"
    />
    <Column
      id="9e20a"
      alignment="left"
      editable={false}
      format="json"
      groupAggregationMode="none"
      hidden="true"
      key="_key"
      label="Model ID"
      placeholder="Enter value"
      position="center"
      size={275.203125}
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
      size={717.1875}
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
      size={828.1875}
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
      size={835.671875}
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
      size={148.59375}
      summaryAggregationMode="none"
    />
    <Column
      id="c9276"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      hidden="true"
      key="validation_summary"
      label="Validation summary"
      placeholder="Enter value"
      position="center"
      size={950}
      summaryAggregationMode="none"
    />
    <Column
      id="3be29"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="budget_constrained_directionally_consistent"
      label="Budget constrained directionally consistent"
      placeholder="Select option"
      position="center"
      size={109.796875}
      summaryAggregationMode="none"
    />
    <Column
      id="ad9e9"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="budget_efficient_reallocation"
      label="Budget efficient reallocation"
      placeholder="Select option"
      position="center"
      size={117.796875}
      summaryAggregationMode="none"
    />
    <Column
      id="dc067"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="budget_mroas_convergence_across_channels"
      label="Budget mroas convergence across channels"
      placeholder="Select option"
      position="center"
      size={108.78125}
      summaryAggregationMode="none"
    />
    <Column
      id="190fa"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="budget_mroas_direction_check"
      label="Budget mroas direction check"
      placeholder="Select option"
      position="center"
      size={117.5625}
      summaryAggregationMode="none"
    />
    <Column
      id="70070"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="budget_unconstrained_vs_last_month_spend"
      label="Budget unconstrained vs last month spend"
      placeholder="Select option"
      position="center"
      size={117.28125}
      summaryAggregationMode="none"
    />
    <Column
      id="04f71"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="channel_priors_identical_and_within_tolerance"
      label="Channel priors identical and within tolerance"
      placeholder="Select option"
      position="center"
      size={106.234375}
      summaryAggregationMode="none"
    />
    <Column
      id="04602"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="channel_set_compatible_with_app"
      label="Channel set compatible with app"
      placeholder="Select option"
      position="center"
      size={107.046875}
      summaryAggregationMode="none"
    />
    <Column
      id="1b02d"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="constrained_budget_scenarios_close_to_previous_model"
      label="Constrained budget scenarios close to previous model"
      placeholder="Select option"
      position="center"
      size={107.953125}
      summaryAggregationMode="none"
    />
    <Column
      id="1952e"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="experiments_identical_and_within_tolerance"
      label="Experiments identical and within tolerance"
      placeholder="Select option"
      position="center"
      size={105.09375}
      summaryAggregationMode="none"
    />
    <Column
      id="2ac78"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="intercept_contribution_close_to_previous_model"
      label="Intercept contribution close to previous model"
      placeholder="Select option"
      position="center"
      size={97.9375}
      summaryAggregationMode="none"
    />
    <Column
      id="68153"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="peak_count_match"
      label="Peak count match"
      placeholder="Select option"
      position="center"
      size={106.09375}
      summaryAggregationMode="none"
    />
    <Column
      id="ea2d3"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="peak_timing_overlap"
      label="Peak timing overlap"
      placeholder="Select option"
      position="center"
      size={112.15625}
      summaryAggregationMode="none"
    />
    <Column
      id="8d132"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="predictive_performance_not_deteriorated"
      label="Predictive performance not deteriorated"
      placeholder="Select option"
      position="center"
      size={103.109375}
      summaryAggregationMode="none"
    />
    <Column
      id="241cf"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_at_zero_is_zero"
      label="Return at zero is zero"
      placeholder="Select option"
      position="center"
      size={117.609375}
      summaryAggregationMode="none"
    />
    <Column
      id="ad5e4"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_curves_close_to_experiments"
      label="Return curves close to experiments"
      placeholder="Select option"
      position="center"
      size={106.25}
      summaryAggregationMode="none"
    />
    <Column
      id="0a0f2"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_curves_close_to_previous_model_overall"
      label="Return curves close to previous model overall"
      placeholder="Select option"
      position="center"
      size={106.578125}
      summaryAggregationMode="none"
    />
    <Column
      id="ed8d5"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_curves_close_to_priors"
      label="Return curves close to priors"
      placeholder="Select option"
      position="center"
      size={111.90625}
      summaryAggregationMode="none"
    />
    <Column
      id="0b293"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_curves_fit_experiments_similarly_to_app"
      label="Return curves fit experiments similarly to app"
      placeholder="Select option"
      position="center"
      size={93.984375}
      summaryAggregationMode="none"
    />
    <Column
      id="43483"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_curves_fit_priors_similarly_to_app"
      label="Return curves fit priors similarly to app"
      placeholder="Select option"
      position="center"
      size={103.625}
      summaryAggregationMode="none"
    />
    <Column
      id="6506a"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_diminishes_with_spend"
      label="Return diminishes with spend"
      placeholder="Select option"
      position="center"
      size={94.84375}
      summaryAggregationMode="none"
    />
    <Column
      id="0b342"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_is_non_decreasing"
      label="Return is non decreasing"
      placeholder="Select option"
      position="center"
      size={91.484375}
      summaryAggregationMode="none"
    />
    <Column
      id="8ee19"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_is_non_negative"
      label="Return is non negative"
      placeholder="Select option"
      position="center"
      size={108.609375}
      summaryAggregationMode="none"
    />
    <Column
      id="85cad"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_saturation_points_are_close_to_previous_model"
      label="Return saturation points are close to previous model"
      placeholder="Select option"
      position="center"
      size={104.5}
      summaryAggregationMode="none"
    />
    <Column
      id="c59dc"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_spend_at_zero_roi_differ_across_channels"
      label="Return spend at zero roi differ across channels"
      placeholder="Select option"
      position="center"
      size={113.484375}
      summaryAggregationMode="none"
    />
    <Column
      id="f7ebf"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="return_zero_roi_points_are_close_to_previous_model"
      label="Return zero roi points are close to previous model"
      placeholder="Select option"
      position="center"
      size={119.859375}
      summaryAggregationMode="none"
    />
    <Column
      id="557fd"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="returns_last_month_spend_close_to_previous_model"
      label="Returns last month spend close to previous model"
      placeholder="Select option"
      position="center"
      size={110.40625}
      summaryAggregationMode="none"
    />
    <Column
      id="963a8"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="training_period_compatible_with_app"
      label="Training period compatible with app"
      placeholder="Select option"
      position="center"
      size={116.84375}
      summaryAggregationMode="none"
    />
    <Column
      id="4db52"
      alignment="left"
      format="tag"
      formatOptions={{
        automaticColors: false,
        color: "{{ ValidationPassedColors.value[item] }}",
      }}
      groupAggregationMode="none"
      hidden="{{ !displayValidationSummaryCheckbox.value }}"
      key="unconstrained_budget_scenarios_close_to_previous_model"
      label="Unconstrained budget scenarios close to previous model"
      placeholder="Select option"
      position="center"
      size={117.84375}
      summaryAggregationMode="none"
    />
    <Column
      id="9a1bf"
      alignment="left"
      format="boolean"
      groupAggregationMode="none"
      hidden="true"
      key="training_start_is_weekend_pt"
      label="Training start is weekend pt"
      placeholder="Enter value"
      position="center"
      size={0}
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
        pluginId="promotionPipelineRunTable"
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
        pluginId="promotionPipelineRunTable"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToolbarButton>
    <Event
      event="selectRow"
      method="show"
      params={{}}
      pluginId="pipelineDetailsFrame"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="selectRow"
      method="setValue"
      params={{ map: { value: "{{ currentRow }}" } }}
      pluginId="selectedPromotionRow"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </Table>
</App>
