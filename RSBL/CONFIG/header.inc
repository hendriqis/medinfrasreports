<%
	Set oConn = Server.CreateObject("ADODB.Connection")

	cst = "Provider=SQLOLEDB;Server=192.168.90.4;User ID=sa;Password=p455w0rd.;Initial Catalog=MS_RSBL;"

	oConn.Mode = adModeRead
	oConn.Open cst
	oConn.CommandTimeout = 300
%>

<%

Set Session("oRsCompany") = Server.CreateObject("ADODB.Recordset")
Session("oRsCompany").ActiveConnection = oConn
Session("oRsCompany").CursorLocation = 3

Session("oRsCompany").Open "sprs_datars"
Set Session("oRsCompany").ActiveConnection = Nothing


%>	

<%
set Session("oRs") = Server.CreateObject("ADODB.Recordset")
	  Session("oRs").ActiveConnection = oConn
	  session("oRs").CursorLocation = 3
%>	