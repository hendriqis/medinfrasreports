<%@ Register TagPrefix="Module" TagName="Header" Src="../../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../../incl/Toolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Default.aspx.vb" Inherits="QIS.Web.secure.utilities.CloseTransaksi"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">

<HTML>
	<HEAD>
		<TITLE>QIS .Net Hospital Information System - Proses Close Transaksi</TITLE>
		<META NAME="GENERATOR" CONTENT="Microsoft Visual Studio.NET 7.0">
		<META NAME="CODE_LANGUAGE" CONTENT="Visual Basic 7.0">
		<META NAME="vs_defaultClientScript" CONTENT="JavaScript">
		<META NAME="vs_targetSchema" CONTENT="http://schemas.microsoft.com/intellisense/ie5">
		<LINK HREF='/qislib/css/styles.css' TYPE="text/css" REL="Stylesheet">
		<SCRIPT SRC='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' LANGUAGE="javascript"></SCRIPT> 
		<SCRIPT SRC='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' LANGUAGE="javascript"></SCRIPT>
	</HEAD>
		
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
															<TD CLASS="rheadercol" ALIGN="left" HEIGHT="25">Proses Close Transaksi
															</TD>
														</TR>
														
														<TR CLASS="rbody">
															<TD CLASS="rbodycol" ALIGN="left" HEIGHT="25">
																<P>Halaman ini untuk memproses Close Transaksi.<br />
																</P>
															</TD>
														</TR>
														
														<TR CLASS="rheader">
															<TD CLASS="rheadercol" ALIGN="left" HEIGHT="2">
															</TD> <!-- SPACER ROW -->
														</tr>
														
														<ASP:PANEL ID="pnlGrid" RUNAT="server" >
														
															<TR CLASS="smalltext">
																<TD ALIGN="left" HEIGHT="25">
																	<TABLE WIDTH="100%">
																		<TR>
																			<TD WIDTH="20%">
																				<B>Tanggal</B>
																			</TD>		
																			<TD WIDTH="40%">
																				<MODULE:WebCal id="calProses" runat="server" />
																				&nbsp;
																				<ASP:Label ID="lblMessage"
																							RUNAT="server"></ASP:Label>
																			</TD>
																			<TD WIDTH="20%">
																				&nbsp;
																			</TD>
																		</TR>
																		<TR>
																			<TD WIDTH="20%">
																				<Asp:LinkButton id="lbtnTransaksi" 
																								runat="server" 
																								text="Kode Transaksi"
																								causesValidation="False" />																			
																			</TD>		
																			<TD WIDTH="40%">
																				<ASP:TextBox	ID="txtTransaksi"
																								RUNAT="server"
																								Width="23%"
																								AutoPostBack="True"></ASP:TextBox>
																				<ASP:Label		ID="lblNmTransaksi"
																								style="color:green;font-weight:bold"
																								RUNAT="server"></ASP:Label>
																			</TD>
																		</TR>
																		<TR>
																			<TD WIDTH="20%" ALIGN=left>
																				<br />
																				<ASP:BUTTON ID="btnProses" 
																							RUNAT="server" 
																							Width="100"
																							TEXT="Close Transaksi" 
																							CSSCLASS="sbttn"></ASP:BUTTON>
																				&nbsp;
																				<ASP:BUTTON ID="btnUnProses" 
																							RUNAT="server" 
																							Width="100"
																							TEXT="Open Transaksi" 
																							CSSCLASS="sbttn"></ASP:BUTTON>			
																			</TD>
																		</TR>
																	</TABLE>
																	
																</TD>
															</TR>
															
															
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



