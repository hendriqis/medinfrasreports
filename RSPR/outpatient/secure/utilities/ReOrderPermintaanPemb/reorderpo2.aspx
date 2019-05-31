<%@ Register TagPrefix="Module" TagName="Header" Src="../../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../../incl/Toolbar.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="reorderpo2.aspx.vb" Inherits="QIS.Web.secure.utilities.ReOrderPermintaanPemb.reorderPO2"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
	<head>
		<title>QIS .Net Hospital Information System - Reorder Pemesanan</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script> 
		<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
	</head>
		
	<div id=loadingmsg style="position:absolute; z-index:3; left:240; top:200; width:200; height:60; 
			  border-width:1; border-style:ridge; background-color:#eeeeee">
			<center>
				<br /><br /><img src="/qislib/images/cursor_hourglas.gif"><font face='Verdana' Size=1><b>Loading, Please wait ...</b></font><br /><br />
			</center>
	</div>
	
	<body>
		<form id="frmResepRj" runat="server">
			
			<!-- BEGIN PAGE HEADER -->
			<Module:Header id="BannerModule" runat="server" />
			<!-- END PAGE HEADER -->
			
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
					
					<tr>
						<td width="100%" valign="top">
							
							<table cellSpacing="10" cellPadding="0" width="100%" border="0">
									
									<tr>
										<td style="PADDING-TOP: 5px" align="left">
												
												<TABLE cellSpacing="0" cellPadding="5" width="100%">
													
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="25">Reorder Pemesanan
															</TD>
														</TR>
														
														<TR class="rbody">
															<TD class="rbodycol" align="left" height="25">
																<P>Halaman ini untuk membuat data Pemesanan secara otomatis tergantung dari posisi saldo akhir stock.<br />
																</P>
															</TD>
														</TR>
														
														<asp:Panel ID="pnlGrid" Runat="server" >
														
															<TR class="smalltext">
																<TD align="left" height="25">
																	<TABLE width="100%">
																		<TR>
																			<TD width="20%">
																				<B>Tanggal Hari ini:</B><br />
																				<asp:Label ID="lblTgl" Runat="server" />
																			</TD>		
																			<TD width="30%">
																				<B>GUDANG:</B><br />
																				<asp:DropDownList id="ddlGudang" Runat="server" Width="100%" AutoPostBack="True" />
																			</TD>
																			<TD width="10%" align=right>
																				<br />
																				<asp:Button id="btnProsesROP" 
																							runat="server" 
																							text="Proses Hitung Rata - Rata" 
																							CssClass="bttntext"></asp:Button>
																			</TD>
																			<TD width="10%" align=right>
																				<br />
																				<asp:Button id="btnHitungReorder" 
																							runat="server" 
																							text="Reorder" 
																							CssClass="bttntext"></asp:Button>
																			</TD>
																			<TD width="10%" align=right>
																				<br />
																				<asp:Button id="btnGeneratedPO" 
																							runat="server" 
																							text="Gen. PO" 
																							CssClass="bttntext"></asp:Button>
																			</TD>
																		</TR>
																	</TABLE>
																	
																</TD>
															</TR>
															
															<TR class="rheader">
																<TD class="rheadercol" align="left" height="2">
																</TD> <!-- SPACER ROW -->
															</tr>
															
															<TR class="rbody">
																<TD class="rbodycol" align="middle" height="25">
																	<asp:Panel id="List" runat="server">
																	</asp:Panel>
																</td>
															</tr>
														
														</asp:Panel>
														
														<asp:Panel ID="pnlMesage" Runat="server" >
														
															<TR class="rbody">
																<TD class="rbodycol" align="left" height="25">
																	<asp:Label ID="lblMessage" Runat="server" />
																	<br />
																	<br />
																	<asp:Button id="btnDone" 
																				Runat="server" 
																				Text="Done" CssClass=sbttn CausesValidation="False"></asp:Button>
																</td>
															</tr>
														</asp:Panel>
														
														
												</TABLE>
												
												<TABLE cellSpacing="0" cellPadding="5" width="100%">
													<TR>
														<TD align="left">
															<P>
																<asp:ValidationSummary	id="ValidationSummary" 
																						runat="server" 
																						HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki."></asp:ValidationSummary>
															</P>
														</TD>
													</TR>
												</TABLE>
												
												
												
										</td>
									</tr>
							
							</table>
						
						</td>							
						
					</tr>
			
			</table>
			
		</form>
		
		<script src='/qislib/scripts/common/util.js' language="javascript"></script> 
		
	</body>
	
</html>

<script>
	if (document.all) document.all.loadingmsg.style.visibility='hidden';
</script>
<script>
	if (document.layers) document.loadingmsg.visibility='hidden'
</script>
<script>
	if (document.getElementById) document.getElementById('loadingmsg').style.visibility='hidden'
</script>



