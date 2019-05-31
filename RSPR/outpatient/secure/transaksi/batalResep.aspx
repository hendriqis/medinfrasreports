<%@ Page Language="vb" AutoEventWireup="false" Codebehind="batalResep.aspx.vb" Inherits="batalResep"%>
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../incl/Toolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Laporan" Src="../../incl/laporanModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Master" Src="../../incl/masterModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Transaksi" Src="../../incl/transaksiModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../incl/copyRightModule.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
  <HEAD>
    <title>QIS .Net Hospital Information System - Pembatalan Resep</title>
	<META content="Microsoft Visual Studio.NET 7.0" name=GENERATOR>
	<META content="Visual Basic 7.0" name=CODE_LANGUAGE>
	<META content=JavaScript name=vs_defaultClientScript>
	<META content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema>
	<LINK href="/qislib/css/styles.css" type=text/css rel=Stylesheet>
	<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script> 
	<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
</HEAD>
  
  <body>

  <form id="frmBatalResep" runat="server">


			<!-- BEGIN PAGE HEADER -->
			<Module:Header id="BannerModule" runat="server" />
			<!-- END PAGE HEADER -->
			
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
					
					<tr>
						<td class="navtable" width="1%" valign="top">
							
							<table width="100%" border="0" cellspacing="10" cellpadding="0">
									
									<!-- BEGIN DYNAMIC LEFT MODULE LIST -->
									<tr>
										<td style="PADDING-TOP:5px" align="left">
											<Module:Master id="mdlMaster" runat="server" />
										</td>
									</tr>
									<tr>
										<td style="PADDING-TOP:5px" align="left">
											<Module:Transaksi id="mdlTransaksi" runat="server" />
										</td>
									</tr>
									<tr>
										<td style="PADDING-TOP:5px" align="left">
											<Module:Laporan id="mdlLaporan" runat="server" />
										</td>
									</tr>
									<!-- END DYNAMIC LEFT MODULE LIST -->
									
							</table>
							
						</td>
						<td width="99%" valign="top">
							
							<table cellSpacing="10" cellPadding="0" width="100%" border="0">
									
									<tr>
										<td style="PADDING-TOP: 5px" align="left">
												
												<TABLE cellSpacing="0" cellPadding="5" width="100%">
													
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="25">PEMBATALAN RESEP
															</TD>
														</TR>
														
														<TR class="rbody">
															<TD class="rbodycol" align="left" height="25">
																<P>Halaman ini untuk menambah data Pembatalan Resep.<br />
																</P>
															</TD>
														</TR>
														
														<TR class="smalltext">
															<TD class="smalltext" align="left" height="25">
																<Module:Toolbar id="mdlToolbar" runat="server" />
															</TD>
														</TR>
														
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="2">
															</TD> <!-- SPACER ROW -->
														</TR>
														
														<TR class="rbody">
															<TD class="rbodycol" align="middle" height="25">
																	
																<P>
																<EMBED src=/qislib/images/underc.swf width=400 height=200 type=application/x-shockwave-flash> 
																</P>
																	
															</TD>
															
														</TR>
														
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
    
    <script src='/qislib/scripts/common/common.js' language="javascript"></script> 
	<script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

  </body>
</HTML>
