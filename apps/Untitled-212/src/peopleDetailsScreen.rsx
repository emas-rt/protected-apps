<Screen
  id="peopleDetailsScreen"
  padding={{
    ordered: [{ top: 0 }, { bottom: 0 }, { left: 12 }, { right: 12 }],
  }}
  title="Details"
  uuid="97ee1f47-1c09-427d-8d30-6c567e667911"
>
  <Image
    id="image1"
    cornerType="square"
    ratio={1}
    src="{{selectedItem.value.image}}"
  />
  <KeyValue
    id="keyValue1"
    _rowKeysFormatted={{ ordered: [{ email: "Email:" }, { sales: "Sales:" }] }}
    allowTextWrapping="true"
    data="{{ selectedItem.value }}"
    header="{{ selectedItem.value.name }}"
    rows={["id", "name", "email", "sales", "image"]}
    rowVisibility={{
      ordered: [
        { id: false },
        { name: false },
        { email: true },
        { sales: true },
        { image: false },
      ],
    }}
    showSeparator="true"
    valueWidth="75%"
  />
</Screen>
