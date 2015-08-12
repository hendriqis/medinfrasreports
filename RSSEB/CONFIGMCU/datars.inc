<%

Set Session("oRsCompany") = Server.CreateObject("ADODB.Recordset")
Session("oRsCompany").ActiveConnection = oConn
Session("oRsCompany").CursorLocation = 3

Session("oRsCompany").Open "sprs_datars_selectone"
Set Session("oRsCompany").ActiveConnection = Nothing


%>	