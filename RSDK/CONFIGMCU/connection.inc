<%

	Set oConn = Server.CreateObject("ADODB.Connection")

	cst = "Provider=SQLOLEDB;Server=172.16.1.70;User ID=Medinfras;" & _
          		";Password=p455w0rd.;Initial Catalog=MS_RSDK_workshop;"

	oConn.Mode = adModeRead
	oConn.Open cst
	oConn.CommandTimeout = 300


%>