<%

	Set oConn = Server.CreateObject("ADODB.Connection")

	cst = "Provider=SQLOLEDB;Server=200.200.200.2;User ID=sa;" & _
          		";Password=p455w0rd.;Initial Catalog=MEDINFRASv1.1;"

	oConn.Mode = adModeRead
	oConn.Open cst
	oConn.CommandTimeout = 300


%>