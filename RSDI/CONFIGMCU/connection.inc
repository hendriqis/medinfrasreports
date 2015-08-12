<%

	Set oConn = Server.CreateObject("ADODB.Connection")

	cst = "Provider=SQLOLEDB;Server=192.168.1.2;User ID=sa;" & _
          		";Password=p455w0rd.;Initial Catalog=MS_RSDI;"

	oConn.Mode = adModeRead
	oConn.Open cst
	oConn.CommandTimeout = 300


%>