<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="4a0227a8-efc5-4e5c-99c6-d99c4a3e0cab"
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text id="text2" value="erin" verticalAlign="center" />
    <Text
      id="text3"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Text
      id="text5"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <Text id="text1" value="hello again, friend" verticalAlign="center" />
    <Button id="button6" text="Button" />
    <Button id="button10" text="Button" />
    <Button id="button4" text="Button" />
    <Button id="button1" text="Testing, testing, is this thing on?">
      <Event
        id="78bc0a09"
        event="click"
        method="confetti"
        params={{}}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="button8" text="Button" />
    <Button id="button2" text="Button" />
    <Button id="button9" text="Button" />
    <Button id="button7" text="Button" />
    <Button id="button5" text="Button" />
    <Text
      id="text4"
      value="{{ current_user.firstName }} was here"
      verticalAlign="center"
    />
    <Button id="button3" text="Button" />
  </Frame>
</Screen>
