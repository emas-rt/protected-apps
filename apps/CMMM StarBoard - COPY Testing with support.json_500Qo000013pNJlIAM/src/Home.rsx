<Screen
  id="Home"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="3f9729fc-5c70-4613-b8b4-b371ef1edba7"
>
  <Function
    id="sortedAllOrgRecordsByLatestDeployment"
    funcBody={include(
      "../lib/sortedAllOrgRecordsByLatestDeployment.js",
      "string"
    )}
    runBehavior="debounced"
  />
  <Function
    id="getLatestPipelineProgress"
    funcBody={include("../lib/getLatestPipelineProgress.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="getLatestModelValidationsPassedStatus"
    funcBody={include(
      "../lib/getLatestModelValidationsPassedStatus.js",
      "string"
    )}
    runBehavior="debounced"
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    margin="4px 8px"
    padding="8px 12px"
    sticky={null}
    type="main"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="NavigationStack"
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
          id="stack1"
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
              id="circularImage1"
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
              id="text2"
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
          id="navigation15"
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
      id="selectedOrgNameAsKey"
      data="{{ getAllOrg.value }}"
      emptyMessage="No options"
      label="org_name_as_key"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="kpiNameSelect"
      data="{{ getAllKPIByOrg.value[selectedOrgNameAsKey.selectedItem] }}"
      disabled="{{ !selectedOrgNameAsKey.selectedItem }}"
      emptyMessage="No options"
      label="kpi_name_as_key"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <Select
      id="selectedValidationsPassedStatus"
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
    <Select
      id="selectedDeployedToProd"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Deployed to prod"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      tooltipByIndex=""
      values=""
    >
      <Option id="f05ed" disabled={false} hidden={false} value="true" />
      <Option id="03212" disabled={false} hidden={false} value="false" />
    </Select>
    <ListViewBeta
      id="gridView1"
      _primaryKeys="{{ item._key.name }}"
      data="{{ sortedAllOrgRecordsByLatestDeployment.value }}"
      heightType="auto"
      itemWidth="200px"
      layoutType="grid"
      margin="0"
      numColumns="4"
      padding="0"
    >
      <Container
        id="container1"
        disabled=""
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
        showHeader={true}
        styleContext={{
          primary: "surfaceSecondary",
          surfaceSecondary: "primary",
        }}
      >
        <Header>
          <Text
            id="containerTitle1"
            value="**{{ item.org_name_as_key }} - {{ item.kpi_name_as_key }}**"
            verticalAlign="center"
          />
        </Header>
        <View id="00030" viewKey="View 1">
          <KeyValue
            id="keyValue1"
            data={
              '{"currentModelUriInProd": {{ item.model_artifact_uri ?? "Not generated"}},\n  "currentModelDeployedAt": {{ item.deployed_to_prod_at || "Not deployed"}}\n}'
            }
            editIcon="bold/interface-edit-pencil"
            enableSaveActions={true}
            groupLayout="singleColumn"
            itemLabelPosition="top"
            labelWrap={true}
            style={{
              labelFontSize: "labelEmphasizedFont",
              labelFontWeight: "labelEmphasizedFont",
              labelFontFamily: "labelEmphasizedFont",
              label: "rgba(179, 198, 238, 1)",
            }}
          >
            <Property
              id="currentModelUriInProd"
              editable="false"
              editableOptions={{}}
              format="string"
              formatOptions={{}}
              hidden="false"
              label="Current Model URI in Prod"
            />
            <Property
              id="currentModelDeployedAt"
              editable="false"
              editableOptions={{}}
              format="datetime"
              formatOptions={{
                manageTimeZone: true,
                valueTimeZone: "00:00",
                displayTimeZone: "00:00",
              }}
              hidden="false"
              label="Current Model Deployed At"
              placeholder="Not deployed"
            />
          </KeyValue>
          <Container
            id="group1"
            _direction="vertical"
            _flexWrap={true}
            _gap="0px"
            _type="stack"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            margin="0"
            padding="0"
            showBody={true}
            showBorder={false}
            style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
          >
            <View id="00030" viewKey="View 1">
              <Text
                id="text18"
                style={{ map: { color: "#b3c6ee" } }}
                value="**Latest Pipeline Progress**"
                verticalAlign="center"
              />
              <Timeline
                id="eventList1"
                items={
                  '{{ getLatestPipelineProgress.value[item.org_name_as_key + "||" + item.kpi_name_as_key] }}\n'
                }
                margin="4px 8px"
                timestamps={
                  '["2020-06-29T21:34:00+00:00", "2020-06-29T20:39:00+00:00", "2020-06-28T11:12:00+00:00"]'
                }
              />
            </View>
          </Container>
          <KeyValue
            id="keyValue5"
            data={
              '{"latestModelValidationsPassed": {{ getLatestModelValidationsPassedStatus.value[item.org_name_as_key + "||" + item.kpi_name_as_key] ?? "null"}}\n}'
            }
            editIcon="bold/interface-edit-pencil"
            enableSaveActions={true}
            groupLayout="singleColumn"
            heightType="fixed"
            itemLabelPosition="top"
            labelWrap={true}
            style={{ label: "#b3c6ee" }}
          >
            <Property
              id="latestModelValidationsPassed"
              editable="false"
              editableOptions={{}}
              format="tag"
              formatOptions={{
                automaticColors: false,
                color: "{{ ValidationPassedColors.value[item] }}",
              }}
              hidden="false"
              label="Latest model validations passed"
            />
          </KeyValue>
        </View>
        <Event
          event="click"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [
                { key: "org_name_as_key", value: "{{ item. org_name_as_key}}" },
              ],
              persistUrlParams: true,
            },
            pageName: "TabbedOrgPage",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Container>
    </ListViewBeta>
  </Frame>
</Screen>
