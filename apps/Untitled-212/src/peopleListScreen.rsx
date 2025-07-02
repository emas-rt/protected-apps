<Screen
  id="peopleListScreen"
  title="People List"
  uuid="fc525138-1980-464a-a76c-b99dd724d51d"
>
  <CollectionView
    id="collectionView1"
    bodyByIndex="{{item.sales}}"
    data="{{getRows.data}}"
    prefixIconByIndex="bold/interface-user-single"
    prefixIconColorByIndex=""
    prefixImageFitByIndex="cover"
    prefixImageShapeByIndex="square"
    prefixImageSizeByIndex="1 to 1"
    prefixImageSourceByIndex="{{item.image}}"
    prefixTypeByIndex="image"
    showSeparator={true}
    subtitleByIndex="{{item.email}}"
    subtitleLengthByIndex={2}
    suffixIconByIndex="bold/interface-arrows-button-right"
    suffixTextByIndex="text"
    suffixTypeByIndex="none"
    suffixValueByIndex="false"
    titleByIndex="{{item.name}}"
  >
    <Event
      event="press"
      method="navigateTo"
      params={{
        ordered: [
          { screenPluginId: "peopleDetailsScreen" },
          { detailSplitView: "true" },
          { splitViewRatio: 0.5 },
        ],
      }}
      type="navigator"
    />
    <Event
      event="press"
      method="setValue"
      params={{ ordered: [{ value: "{{item}}" }] }}
      pluginId="selectedItem"
      type="state"
    />
  </CollectionView>
  <Text
    id="text2"
    markdown={true}
    size="medium"
    value="👋 Hello {{ current_user.firstName || 'friend' }}!"
    weight="normal"
  />
</Screen>
