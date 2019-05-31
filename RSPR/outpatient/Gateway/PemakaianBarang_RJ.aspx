<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../incl/Toolbar.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PemakaianBarang_RJ.aspx.vb" Inherits="QIS.Web.PemakaianBarang_RJ"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
	<head>
		<title>Pemakaian Barang Rawat Jalan</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name=vs_defaultClientScript content="JavaScript">
		<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script> 
		<script src='/qislib/scripts/fm_/fm___Dlg_RSMM.js' language="javascript"></script> 
		<script language="javascript">
			function center()
				{
					var xcenter=(screen.availWidth-800)/2;
					var ycenter=(screen.availHeight-600)/2;				
					self.resizeTo(800,600);
					self.moveTo(xcenter,ycenter);    
				}
		</script>
	</head>
	<div id=loadingmsg style="position:absolute; z-index:3; left:240; top:200; width:200; height:60; 
			  border-width:1; border-style:ridge; background-color:#eeeeee">
			<center>
				<br /><br /><font face='Verdana' Size=1><b>Loading, Please wait ...</b></font><br /><br />
			</center>
	</div>
	
	<body onload="center()">

			<form id="Form1" method="post" runat="server">
			
					<table cellSpacing="5" cellPadding="0" width="100%" border="0">
						
						<tr>
							<td style="PADDING-TOP: 5px" align="left">
							
								<TABLE cellSpacing="0" cellPadding="5" width="100%">
									<TR class="rheader">
										<TD class="rheadercol" align="left" height="25">Pemakaian Obat Rawat Jalan
										</TD>
									</TR>
													
									<TR class="rbody">
										<TD class="rbodycol" align="left" height="25">
											<P>Halaman ini untuk mengubah, menambah, atau menghapus data Pemakaian obat rawat jalan.<br />
											</P>
										</TD>
									</TR>
													
									<!-- SPACER ROW -->
									<TR class="rheader">
										<TD class="rheadercol" align="left" height="2" />
									</TR> 
									
									<TR class="rbody">
										<TD class="rbodycol">
											
											<TABLE width="100%">
												<tr>
													
													<td width="50%" valign=top>
														<table width="100%">
															<tr>
																<td width="20%">
																	Nomor Registrasi:
																</td>
																<td>
																	<asp:Label Runat="server" ID="lblNomorRegistrasi" />
																</td>
															</tr>
															<tr>
																<td width="20%">
																	Nomor RM:
																</td>
																<td>
																	<asp:Label Runat="server" ID="lblNomorRM" />
																</td>
															</tr>
															<tr>
																<td width="20%">
																	Nama Pasien
																</td>
																<td>
																	<asp:Label Runat="server" ID="lblNamaPasien" />
																</td>
															</tr>
															<tr>
																<td width="20%">
																	Nomor Transaksi:
																</td>
																<td>
																	<asp:Label Runat="server" ID="lblNomorTransaksi" />
																</td>
															</tr>
															<tr>
																<td width="20%">
																	Poli:
																</td>
																<td>
																	<asp:Label Runat="server" ID="lblNamaPoli" />
																</td>
															</tr>
														</table>
															
														<table width="100%">
															<TR class="rheader">
																<TD bgcolor="gray" align="left" height="2" />
															</TR> 	
														</table>
															
														<table width="100%">
																												
															<tr>
																<td width="100%">
																
																	<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 365">
																		
																		<table width="100%">
																			
																			<tr>
																				<td width="100%">
																				
																					<!-- BEGIN ADDNEW ROP -->
																					<asp:Panel ID="panelAddNewRow" Runat="server">
																							
																							<TABLE cellSpacing="0" cellPadding="5" width="100%" class=rBodyAddNew bordercolordark=#98AAB1 >
																							
																								<TR class="rheader">
																									<TD class="rheadercol" align="left" height="25"><asp:Label Runat="server" ID="AddNewRowHeaderCaption" text="Edit/Tambah Data Pemakaian Barang" /></TD>
																								</TR>
																								
																								<tr>
																									<td>
																										
																										<TABLE width="100%" border=1 cellpadding=1 cellspacing=1 bgcolor=#98AAB1 >
																											
																											<tr>
																												<TD width="20%" class=rBodyAddNewFld>
																													<asp:LinkButton id="lbtnKodeBarang" 
																																	CausesValidation="False" 
																																	text="Kode Item" Runat="server" />
																												</TD>
																												<TD width="40%" class=rBodyAddNewFld>
																													<asp:TextBox	id="AddNewRow_txtKodeBarang" 
																																	runat="server" 
																																	MaxLength="10" 
																																	AutoPostBack="True"
																																	width="100%" />
																													
																													<asp:TextBox	id="AddNewRow_txtID" 
																																	runat="server" 
																																	visible="False"
																																	width="100%" />
																												</TD>
																												<td class=rBodyAddNewFld>
																													<asp:RequiredFieldValidator id="rfv_AddNewRow_txtKodeBarang" 
																																				runat="server" 
																																				controlToValidate="AddNewRow_txtKodeBarang" 
																																				errormessage="Kode Item" 
																																				display="dynamic" >** </asp:RequiredFieldValidator>
																												</td>
																											</tr>
																											
																											<tr>
																												<TD width="20%" class=rBodyAddNewFld>
																													<b>Nama Item</b>
																												</TD>
																												<TD width="40%" class=rBodyAddNewFld>
																													<asp:TextBox	id="AddNewRow_txtNamaBarang" 
																																	runat="server" 
																																	ReadOnly="True"
																																	BorderStyle="None"
																																	BackColor="Transparent"
																																	width="100%" />
																												</TD>
																												<td class=rBodyAddNewFld>
																													<asp:RequiredFieldValidator id="rfv_AddNewRow_txtNamaBarang" 
																																				runat="server" 
																																				controlToValidate="AddNewRow_txtNamaBarang" 
																																				errormessage="Nama Item" 
																																				display="dynamic" >** </asp:RequiredFieldValidator>
																												</td>
																											</tr>
																											
																											<tr>
																												<TD width="20%" class=rBodyAddNewFld>
																													<b>Qty</b>
																												</TD>
																												<TD width="40%" class=rBodyAddNewFld>
																													<asp:TextBox	id="AddNewRow_txtQty" 
																																	runat="server" 
																																	text="0"
																																	width="100%" />
																												</TD>
																												<td class=rBodyAddNewFld>
																													<asp:RequiredFieldValidator id="rfv_AddNewRow_txtQty" 
																																				runat="server" 
																																				controlToValidate="AddNewRow_txtQty" 
																																				errormessage="Qty" 
																																				display="dynamic" >** 
																													</asp:RequiredFieldValidator>
																												</td>
																											</tr>
																											
																											<tr>
																												<TD width="20%" class=rBodyAddNewFld>
																													<b>Satuan</b>
																												</TD>
																												<TD width="40%" class=rBodyAddNewFld>
																													<asp:DropDownList	id="AddNewRow_ddlSatuan" 
																																		runat="server" 
																																		width="100%"></asp:DropDownList>
																												</TD>
																												<td class=rBodyAddNewFld>&nbsp;
																												</td>
																											</tr>
																											
																										</TABLE>
																										
																										<TABLE width="100%">
																											<TR>
																												<TD width="5%">
																													<asp:Button id="btnAddNewRow" runat="server" text="Save" CssClass=sbttn />
																												</TD>
																												<TD width="5%">
																													<asp:Button id="btnDone" runat="server" text="Done" CausesValidation="False" CssClass=sbttn /> 
																												</TD>
																												<TD>&nbsp;
																													<!--
																													<asp:Button id="btnDelete" runat="server" text="Delete" CssClass="sbttn" /> 
																													-->
																												</TD>
																											</TR>
																										</TABLE>
																										
																									</td>
																								</tr>
																								
																								<TR bgcolor=White valign=bottom>
																									<TD align="left" height="25">
																										<p align=right><strong>Data yang sudah ada...</strong></p> 
																									</TD>
																								</TR> 
																								
																							</TABLE>
																							
																					</asp:Panel>
																					<!-- END ADDNEW ROP -->
																				</td>
																			</tr>
																			
																			<tr>
																				<td width="100%">
																					
																					
																	
																						<asp:panel id="panelPemakaianBarang" runat="server" enableviewstate="true"></asp:panel>
																					
																					
																				
																				</td>
																			</tr>
																			
																		</table>
																		
																	</DIV>
																	
																	<TABLE cellSpacing="0" cellPadding="5" width="100%">
																		<TR>
																			<TD align="left">
																				<P>
																					<asp:ValidationSummary	id="ValidationSummary" 
																											runat="server" 
																											HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
																				</P>
																			</TD>
																		</TR>
																	</TABLE>
																	
																</td>
															</tr>
															
															<TR class="rheader">
																<TD class="rheadercol" align="left" height="2" />
															</TR> 
															
															<tr>
																<td>
																	<TABLE cellSpacing="0" cellPadding="5" width="100%">
																		<tr>
																			<td align=right>
																				<input type="button" value="Close" onClick="window.close();" class="sbttn">
																			</td>
																		</tr>
																	</TABLE>
																</td>
															</tr>
															
														</table>
														
													</td>
												
												</tr>
											</TABLE>
											
										</TD>
									</TR>
								</TABLE>
								
							</td>
						</tr>
						
					</table>
					
			</form>

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