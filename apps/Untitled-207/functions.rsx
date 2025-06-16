<GlobalFunctions>
  <SqlQueryUnified
    id="getRows"
    query={include("./lib/getRows.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="retool_db"
    resourceName="0fa6c25c-b8c1-4095-92f2-c7d2fd2d94ff"
  />
  <State id="selectedItem" />
</GlobalFunctions>
