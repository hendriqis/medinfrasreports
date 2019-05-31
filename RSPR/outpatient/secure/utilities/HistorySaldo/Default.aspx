<%@ Register TagPrefix="Module" TagName="Header" Src="../../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../../incl/Toolbar.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Default.aspx.vb" Inherits="QIS.Web.secure.utilities.HistorySaldo"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">

<HTML>
	<HEAD>
		<TITLE>QIS .Net Hospital Information System - Proses History Saldo</TITLE>
		<META NAME="GENERATOR" CONTENT="Microsoft Visual Studio.NET 7.0">
		<META NAME="CODE_LANGUAGE" CONTENT="Visual Basic 7.0">
		<META NAME="vs_defaultClientScript" CONTENT="JavaScript">
		<META NAME="vs_targetSchema" CONTENT="http://schemas.microsoft.com/intellisense/ie5">
		<LINK HREF='/qislib/css/styles.css' TYPE="text/css" REL="Stylesheet">
		<SCRIPT SRC='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' LANGUAGE="javascript"></SCRIPT> 
		<SCRIPT SRC='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' LANGUAGE="javascript"></SCRIPT>
	</HEAD>
		
	<DIV ID=loadingmsg STYLE="position:absolute; z-index:3; left:240; top:200; width:200; height:60; 
			  border-width:1; border-style:ridge; background-color:#eeeeee">
			<CENTER>
				<br /><br /><IMG SRC="/qislib/images/cursor_hourglas.gif"><FONT FACE='Verdana' SIZE=1><B>Loading, Please wait ...</B></FONT><br /><br />
			</CENTER>
	</DIV>
	
	<BODY>
		<FORM ID="frmHistoryBulanan" RUNAT="server">
			
			<!-- BEGIN PAGE HEADER -->
			<MODULE:HEADER ID="BannerModule" RUNAT="server" />
			<!-- END PAGE HEADER -->
			
			<TABLE BORDER="0" WIDTH="100%" CELLSPACING="0" CELLPADDING="0">
					
					<TR>
						<TD WIDTH="100%" VALIGN="top">
							
							<TABLE CELLSPACING="10" CELLPADDING="0" WIDTH="100%" BORDER="0">
									
									<TR>
										<TD STYLE="PADDING-TOP: 5px" ALIGN="left">
												
												<TABLE CELLSPACING="0" CELLPADDING="5" WIDTH="100%">
													
														<TR CLASS="rheader">
															<TD CLASS="rheadercol" ALIGN="left" HEIGHT="25">Proses History Saldo
															</TD>
														</TR>
														
														<TR CLASS="rbody">
															<TD CLASS="rbodycol" ALIGN="left" HEIGHT="25">
																<P>Halaman ini untuk memproses data History Saldo.<br />
																</P>
															</TD>
														</TR>
														
														<ASP:PANEL ID="pnlGrid" RUNAT="server" >
														
															<TR CLASS="smalltext">
																<TD ALIGN="left" HEIGHT="25">
																	<TABLE WIDTH="100%">
																		<TR>
																			<TD WIDTH="20%">
																				<B>Periode : </B><ASP:DROPDOWNLIST ID="ddlBulan" RUNAT="server" WIDTH="40%" AutoPostBack="False"/>&nbsp;<ASP:LABEL ID="lblInfo" RUNAT="server" />																				
																			</TD>		
																		</tr>
																		<TR>
																			<TD WIDTH="20%" ALIGN=left>
																				<br />
																				<ASP:BUTTON ID="btnProses" 
																							RUNAT="server" 
																							TEXT="Proses History Saldo" 
																							CSSCLASS="bttntext"></ASP:BUTTON>
																			</TD>
																		</TR>
																	</TABLE>
																	
																</TD>
															</TR>
															
															<TR CLASS="rheader">
																<TD CLASS="rheadercol" ALIGN="left" HEIGHT="2">
																</TD> <!-- SPACER ROW -->
															</tr>
														</ASP:PANEL>
														
														<ASP:PANEL ID="pnlMessage" RUNAT="server" >
														
															<TR CLASS="rbody">
																<TD CLASS="rbodycol" ALIGN="left" HEIGHT="25">
																	<ASP:LABEL ID="lblMessage" RUNAT="server" />
																	<br />
																	<br />
																	<ASP:BUTTON ID="btnDone" 
																				RUNAT="server" 
																				TEXT="Done" CSSCLASS=sbttn CAUSESVALIDATION="False"></ASP:BUTTON>
																</td>
															</tr>
														</ASP:PANEL>
														
														
												</TABLE>
												
												<TABLE CELLSPACING="0" CELLPADDING="5" WIDTH="100%">
													<TR>
														<TD ALIGN="left">
															<P>
																<ASP:VALIDATIONSUMMARY	ID="ValidationSummary" 
																						RUNAT="server" 
																						HEADERTEXT="Field(s) berikut harus diisi atau perlu diperbaiki."></ASP:VALIDATIONSUMMARY>
															</P>
														</TD>
													</TR>
												</TABLE>
												
												
												
										</TD>
									</TR>
							
							</TABLE>
						
						</TD>							
						
					</TR>
			
			</TABLE>
			
		</FORM>
		
		<SCRIPT SRC='/qislib/scripts/common/util.js' LANGUAGE="javascript"></SCRIPT> 
		
	</BODY>
	
</HTML>

<SCRIPT>
	if (document.all) document.all.loadingmsg.style.visibility='hidden';
</SCRIPT>
<SCRIPT>
	if (document.layers) document.loadingmsg.visibility='hidden'
</SCRIPT>
<SCRIPT>
	if (document.getElementById) document.getElementById('loadingmsg').style.visibility='hidden'
</SCRIPT>



