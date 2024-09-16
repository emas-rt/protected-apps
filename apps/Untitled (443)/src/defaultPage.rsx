<Screen
  id="defaultPage"
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <SqlQueryUnified
    id="query1"
    allowedGroupIds={[41]}
    allowedGroups={["groupC"]}
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d506dc20-d642-41bf-a365-96669ca28c7b"
    warningCodes={[]}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  />
</Screen>
