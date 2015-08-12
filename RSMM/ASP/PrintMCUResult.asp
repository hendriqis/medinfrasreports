<%@ LANGUAGE="VBSCRIPT" %>

<%
	%>
		<!-- #include file="../CONFIGMCU/connection.inc" -->
	<%

	set session("oRs") = Server.CreateObject("ADODB.Recordset")	' Main Report
	'set session("oRsSubReport1") = Server.CreateObject("ADODB.Recordset") 'Sub Report 1
	set session("oRsSubReport2") = Server.CreateObject("ADODB.Recordset") 'Sub Report 2
	set session("oRsSubReport3") = Server.CreateObject("ADODB.Recordset") 'Sub Report 3
	set session("oRsSubReport4") = Server.CreateObject("ADODB.Recordset") 'Sub Report 4
	set session("oRsSubReport5") = Server.CreateObject("ADODB.Recordset") 'Sub Report 5
	set session("oRsSubReport6") = Server.CreateObject("ADODB.Recordset") 'Sub Report 6
	set session("oRsSubReport10") = Server.CreateObject("ADODB.Recordset") 'Sub Report 10
		
	'
	' process form variable(s) in here...!!
	'
	RptName = Request.QueryString("RptName")
	SP = Request.QueryString("SP")
	parm = Request.QueryString("parm")
	moduleName = Request.QueryString("moduleName")
	
	if parm <> "" then
		parm = Replace(parm, "|", "','")
		' SQL Statement for Main Report ..!!
		'strsql = "spmcuRpt_LaporanHasilMCU_Header  '" & Bahasa &"','" & Noreg & "','" & stf & "'"
		strsql = SP & " '" & parm & "'"
		
		' SQL Statement for Sub Report 2..!!
		strsql2 = "spmcuRpt_TransDiagnosaSummary" & " '" & parm & "'"
			
		' SQL Statement for Sub Report 3..!!
		strsql3 = "spmcuRpt_TransActionStep" & " '" & parm & "'"
		
		' SQL Statement for Sub Report 4..!!
		strsql4 = "spmcuRpt_LaporanHasilMCU_Header" & " '" & parm & "'"
		
		' SQL Statement for Sub Report 5..!!
		strsql5 = "spmcuRpt_TransMedicalHistory" & " '" & parm & "'"
		
		' SQL Statement for Sub Report 6..!!
		strsql6 = "spmcuRpt_TransClinicalExam" & " '" & parm & "'"
		
		' SQL Statement for Sub Report 10..!!
		strsql10 = "spmcuRpt_Certificate" & " '" & parm & "'"
	else
		strsql = SP
	end if

	reportname = "../" + moduleName + "/" + RptName

	'
	' ----------------------------------------------------------------------
	'	Main Report, open recordset and close the connection
	' ----------------------------------------------------------------------
	'

	session("oRs").CursorLocation = 3 'adUseClient
	Session("oRs").Open strSQL, oConn, 3, 4, 1
	set Session("oRs").ActiveConnection = Nothing


	'
	'	recordset untuk parameter yg ditampilin di pageHeader,reportHeader..
	'
	%>
		<!-- #include file="../CONFIGMCU/datars.inc" -->
	<%


	'
	'	crystalreport Object...
	'
	If Not IsObject (session("oApp")) Then
		Set session("oApp") = Server.CreateObject("CrystalRuntime.Application")
	End If

	Path = Request.ServerVariables("PATH_TRANSLATED")
	While (Right(Path, 1) <> "\" And Len(Path) <> 0)
		iLen = Len(Path) - 1
		Path = Left(Path, iLen)
	Wend

	If IsObject(session("oRpt")) then
		Set session("oRpt") = nothing
	End if

	'On error resume next

	Set session("oRpt") = session("oApp").OpenReport(path & reportname, 1)

	If Err.Number <> 0 Then
	  Response.Write "Error Occurred creating Report Object: " & Err.Description
	  Set Session("oRpt") = nothing
	  Set Session("oApp") = nothing
	  Session.Abandon
	  Response.End
	End If

	session("oRpt").MorePrintEngineErrorMessages = False
	session("oRpt").EnableParameterPrompting = False
	session("oRpt").DiscardSavedData

	set Database = session("oRpt").Database
	set Tables = Database.Tables
	set Table1 = Tables.Item(1)
	'set Table2 = Tables.Item(2)

	Table1.SetPrivateData 3, session("oRs")
	'Table2.SetPrivateData 3, session("oRsCompany")


	' // Sub Report 1
	set Tables = nothing
	set Table1 = nothing
	'
	' ----------------------------------------------------------------------
	'	Sub Report 1, open recordset and close the connection
	' ----------------------------------------------------------------------
	'
	'session("oRsSubReport1").CursorLocation = 3 'adUseClient
	'Session("oRsSubReport1").Open strSQL1, oConn, 3, 4, 1
	'set Session("oRsSubReport1").ActiveConnection = Nothing

	'Set CRXSubreport = session("oRpt").OpenSubreport("SubRpt_DiagnosticSummary&Recommendation.rpt")
	'Set TablesSub1 = CRXSubreport.Database.Tables
	'Set Table1Sub1 = TablesSub1.Item(1)
	'Table1Sub1.SetDataSource session("oRsSubReport1")
	
	' // Sub Report 2
	set Tables = nothing
	set Table1 = nothing	
	'
	' ----------------------------------------------------------------------
	'	Sub Report 2, open recordset and close the connection
	' ----------------------------------------------------------------------
	'
	session("oRsSubReport2").CursorLocation = 3 'adUseClient
	Session("oRsSubReport2").Open strSQL2, oConn, 3, 4, 1
	set Session("oRsSubReport2").ActiveConnection = Nothing

	Set CRXSubreport = session("oRpt").OpenSubreport("SubRpt_DiagnosaSummary.rpt")
	Set Tables = CRXSubreport.Database.Tables
	Set Table1 = Tables.Item(1)
	'set Table2 = Tables.Item(2)
	Table1.SetDataSource session("oRsSubReport2")
	'Table2.SetDataSource session("oRsSubReport4")		
	
		
	' // Sub Report 3
	set Tables = nothing
	set Table1 = nothing	
	'
	' ----------------------------------------------------------------------
	'	Sub Report 3, open recordset and close the connection
	' ----------------------------------------------------------------------
	'
	session("oRsSubReport3").CursorLocation = 3 'adUseClient
	Session("oRsSubReport3").Open strSQL3, oConn, 3, 4, 1
	set Session("oRsSubReport3").ActiveConnection = Nothing

	Set CRXSubreport = session("oRpt").OpenSubreport("SubRpt_TransActionStep.rpt")
	Set Tables = CRXSubreport.Database.Tables
	Set Table1 = Tables.Item(1)
	Table1.SetDataSource session("oRsSubReport3")
	
	' // Sub Report 4
	set Tables = nothing
	set Table1 = nothing	
	'
	' ----------------------------------------------------------------------
	'	Sub Report 4, open recordset and close the connection
	' ----------------------------------------------------------------------
	'
	session("oRsSubReport4").CursorLocation = 3 'adUseClient
	Session("oRsSubReport4").Open strSQL4, oConn, 3, 4, 1
	set Session("oRsSubReport4").ActiveConnection = Nothing

	Set CRXSubreport = session("oRpt").OpenSubreport("SubRpt_BiodataPasien.rpt")
	Set Tables = CRXSubreport.Database.Tables
	Set Table1 = Tables.Item(1)
	Table1.SetDataSource session("oRsSubReport4")
	
	' // Sub Report 5
	set Tables = nothing
	set Table1 = nothing	
	'
	' ----------------------------------------------------------------------
	'	Sub Report 5, open recordset and close the connection
	' ----------------------------------------------------------------------
	'
	session("oRsSubReport5").CursorLocation = 3 'adUseClient
	Session("oRsSubReport5").Open strSQL5, oConn, 3, 4, 1
	set Session("oRsSubReport5").ActiveConnection = Nothing

	Set CRXSubreport = session("oRpt").OpenSubreport("SubRpt_MedicalHistory.rpt")
	Set Tables = CRXSubreport.Database.Tables
	Set Table1 = Tables.Item(1)
	Table1.SetDataSource session("oRsSubReport5")
	

	' // Sub Report 6
	set Tables = nothing
	set Table1 = nothing	
	'
	' ----------------------------------------------------------------------
	'	Sub Report 6, open recordset and close the connection
	' ----------------------------------------------------------------------
	'
	session("oRsSubReport6").CursorLocation = 3 'adUseClient
	Session("oRsSubReport6").Open strSQL6, oConn, 3, 4, 1
	set Session("oRsSubReport6").ActiveConnection = Nothing

	Set CRXSubreport = session("oRpt").OpenSubreport("SubRpt_ClinicalExam.rpt")
	Set Tables = CRXSubreport.Database.Tables
	Set Table1 = Tables.Item(1)
	'set Table2 = Tables.Item(2)
	Table1.SetDataSource session("oRsSubReport6")
	
	
	' // Sub Report 10
	set Tables = nothing
	set Table1 = nothing	
	'
	' ----------------------------------------------------------------------
	'	Sub Report 10, open recordset and close the connection
	' ----------------------------------------------------------------------
	'
	session("oRsSubReport10").CursorLocation = 3 'adUseClient
	Session("oRsSubReport10").Open strSQL10, oConn, 3, 4, 1
	set Session("oRsSubReport10").ActiveConnection = Nothing

	Set CRXSubreport = session("oRpt").OpenSubreport("subrpt_Certificate.rpt")
	Set Tables = CRXSubreport.Database.Tables
	Set Table1 = Tables.Item(1)
	Table1.SetDataSource session("oRsSubReport10")	
	
			
	'On Error Resume Next		
	session("oRpt").ReadRecords	
	
	If Err.Number <> 0 Then
	  Response.Write "Error Occurred Reading Records: " & Err.Description
	  Set Session("oRpt") = nothing
	  Set Session("oApp") = nothing
	  Session.Abandon
	  Response.End
	Else
	  If IsObject(session("oPageEngine")) Then
	  	set session("oPageEngine") = nothing
	  End If
	  set session("oPageEngine") = session("oRpt").PageEngine
	End If

	%>
	<!-- #include file="SmartViewerActiveX.asp" -->
	<%

%>