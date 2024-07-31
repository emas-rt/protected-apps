<App>
  <Include src="./functions.rsx" />
  <Text
    id="text1"
    value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
    verticalAlign="center"
  />
</App>
