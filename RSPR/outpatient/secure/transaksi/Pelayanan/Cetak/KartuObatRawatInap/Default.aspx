<%@ Register TagPrefix="Module" TagName="Header" Src="../../../../../incl/bannerModule.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Default.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.Cetak.KartuObatRawatInap"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
	<head>
		<title>QIS .Net Hospital Information System - Cetak Kartu Obat Rawat Inap</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
		<LINK href="/qislib/calendar/calWebStyles_V40.css" rel=stylesheet>
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
		<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
		<script language=javascript>
		<!--
		
			var oPopup = window.createPopup();
			
			function richDialog()
			{
				var lefter = event.offsetY+0;
				var topper = event.offsetX+15;
				oPopup.document.createStyleSheet('/qislib/css/styles.css')
				oPopup.document.body.innerHTML = oDialog.innerHTML; 
				// x,y,w,h
				oPopup.show(topper, lefter+20, 550, 300, ttip);
			}
		
		//-->
		</script>
	</head>
	
	<body>
		<form id="frmCetakKartuRI" runat="server">
			
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
															<TD class="rheadercol" align="left" height="25">KARTU OBAT RAWAT INAP
															</TD>
														</TR>
														
														<TR class="rbody">
															<TD class="rbodycol" align="left" height="25">
																<P>Halaman ini untuk mencetak Kartu Obat Rawat Inap.<br />
																</P>
															</TD>
														</TR>
														
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="2">
															</TD> <!-- SPACER ROW -->
														</tr>
														
														<TR>
															<TD width="100%">
																<TABLE width="100%" cellSpacing="0" cellPadding="0" >
																	<TR>
																		<TD width="20%">
																			<asp:LinkButton	id="lbtnNoRegistrasi"
																							runat="Server"
																							Text="No.Registrasi"
																							causesValidation="False" />
																		</TD>
																		<TD width="40%">
																			<asp:TextBox	id="txtNoRegistrasi"
																							runat="Server"
																							AutoPostBack="True" />
																			&nbsp;
																			
																			
																		</TD>
																		<TD>
																			&nbsp;
																		</TD>
																	</TR>
																	<TR>
																		<TD width="20%">
																			<asp:LinkButton	id="lbtnNoResep"
																							runat="Server"
																							Text="No.Resep"
																							causesValidation="False" />
																		</TD>
																		<TD width="40%">
																			<asp:TextBox	id="txtNoResep"
																							runat="Server"
																							AutoPostBack="True" />
																						
																		</TD>
																		<TD>
																			&nbsp;
																		</TD>
																	</TR>
																	<TR>
																		<TD width="20%">
																			&nbsp;
																		</TD>
																		<TD width="40%">
																			<span id="ttip" style="color:green; cursor:hand; font-weight:bold" onclick="richDialog()">
																				Informasi Pasien :<br />
																				<asp:Label ID="lbtnNamaPasienInfo" Runat="server" text="AnthonieCh" /> 
																			</span> 
																			<!--#Include File="InformasiPasienRI.incl.aspx"-->	
																		</TD>
																		<TD>	
																			&nbsp;
																		</TD>
																	</TR>
																	<TR>
																		<TD width="20%">
																			<asp:Button	id="btnCetak"
																						runat="server" 
																						cssclass="sbttn"
																						text="Print..." />
																		</TD>
																		<TD width="40%">
																			&nbsp;	
																		</TD>
																		<TD>	
																			&nbsp;
																		</TD>
																	</TR>
																</TABLE>
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
		<script language="javascript" src="/qislib/scripts/common/common.js"></script> 
		<script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>
		
	</body>
	
</html>





