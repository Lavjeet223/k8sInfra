output "db_connection_strings" {
  value = { for k, v in transpose({ for key, value in var.servers_dbs : key => value.dbs }) : k => "Driver={ODBC Driver 17 for SQL Server};Server=tcp:${v[0]}.database.windows.net,1433;Database=${k};Uid=${var.servers_dbs[v[0]].administrator_login};Pwd=${var.servers_dbs[v[0]].administrator_login_password};Encrypt=yes;TrustServerCertificate=no;Connection Timeout=30;" }
}
