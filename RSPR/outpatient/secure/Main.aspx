<%@ Register TagPrefix="Module" TagName="Copyright" Src="../incl/copyRightModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../incl/RadMenu.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Main.aspx.vb" Inherits="QIS.Web.Main" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Pharmacy Home</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
		<script language="javascript">
	a=0;
	function show(currMenu) 
		{
		thisMenu = eval("document.all."+currMenu+".style")
		thisMenu.display='block';
		/*
		if (a==110) 
			{
			a=0;
			}
		if (document.all) 
			{
			thisMenu = eval("document.all."+currMenu+".style")
			thisMenu.filter='alpha(opacity='+a+')';
			a=a+10;
			if (a!=110) 
				{
				setTimeout('show(\''+currMenu+'\')', 0);
				}
			}
		*/
		}
	function hide(currMenu) 
		{
		thisMenu = eval("document.all."+currMenu+".style")
			thisMenu.display='none';
		/*	
		if (a==110) 
			{
			a=100;
			}
		if (document.all) 
			{
			thisMenu = eval("document.all."+currMenu+".style")
			thisMenu.filter='alpha(opacity='+a+')';
			a=a-10;
			if (a!=-10) 
				{
				setTimeout('hide(\''+currMenu+'\')', 0);
				}
			}
		*/	
		}
		
	</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form runat="server">
			<table width="100%" height="100%" cellpadding="2" cellspacing="0">
				<tr>
					<td width="100%" valign="top">
						<!-- BEGIN PAGE HEADER -->
			            <Module:RadMenu id="RadMenu" runat="server"/>
			            <!-- END PAGE HEADER -->
					</td>
				</tr>
				<tr>
				    <td valign="bottom" style="padding-left: 20px">
				        <!-- BEGIN PAGE FOOTER-->
			            <MODULE:COPYRIGHT id="mdlCopyRight" runat="server" PathPrefix=".."></MODULE:COPYRIGHT>
			            <!-- END PAGE FOOTER-->	
				    </td>
				</tr>
			</table>				
		</form>
		<script src='/qislib/scripts/common/common.vbs' language="vbscript"></script> 
		<script language="javascript" src="/qislib/scripts/common/common.js"></script>
	</body>
	
	
</HTML>
								