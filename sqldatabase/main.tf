resource "azurerm_mssql_server" "sqlserver" {
  name                         = "jp-sqlserver"
  resource_group_name          = "r1"
  location                     = "west us"
  version                      = "12.0"
  administrator_login          = "sql-admin"
  administrator_login_password = "Jaiprakash@793"
}

resource "azurerm_mssql_database" "sql" {
  name           = "sql-db"
  server_id      = azurerm_mssql_server.sqlserver.id
}