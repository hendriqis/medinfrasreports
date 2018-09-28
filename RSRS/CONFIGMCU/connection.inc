<%

	Set oConn = Server.CreateObject("ADODB.Connection")

	cst = "Provider=SQLOLEDB;Server=192.168.90.4;User ID=sa;" & _
          		";Password=p455w0rd.;Initial Catalog=MS_RSRS;"

	oConn.Mode = adModeRead
	oConn.Open cst
	oConn.CommandTimeout = 300


%>