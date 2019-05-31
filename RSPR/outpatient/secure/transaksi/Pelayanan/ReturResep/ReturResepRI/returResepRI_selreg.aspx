<%@ Register TagPrefix="Module" TagName="Header" Src="../../../../../incl/bannerModule.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="returResepri_selreg.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.ReturResep.ReturResepRI.returResepRiSelReg"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
	<head>
		<title>QIS .Net Hospital Information System - Retur Resep Rawat Inap (Pilih Registrasi)</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name=vs_defaultClientScript content="JavaScript">
		<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
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

		<form id="frmResepRiSelReg" runat="server">
				
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
															<TD class="rheadercol" align="left" height="25">RETUR RESEP RAWAT INAP
															</TD>
														</TR>
														
														<TR class="rbody">
															<TD class="rbodycol" align="left" height="25">
																<P>Halaman ini untuk memilih nomor registrasi pelayanan resep rawat inap.<br />
																</P>
															</TD>
														</TR>
														
														<asp:Panel ID="pnlGrid" Runat="server" >
																
																<TR class="smalltext">
																		<TD align="left" height="25">
																			
																			<TABLE width="100%">
																					
																					<TR>
																							
																							<TD width="20%">
																								<asp:CheckBox id="chkSemua" runat="server" AutoPostBack="True" Text="Semua pasien dirawat" />
																							</TD>		
																							
																							<TD width="60%">
																								<B>Ruang Rawat:</B><br />
																								<asp:DropDownList id="ddlRuang" Runat="server" Width="100%" AutoPostBack="True" />
																							</TD>
																							
																					</TR>
																			
																			</table>
																			
																		</td>	
																</tr>
																
																<TR class="rheader">
																	<TD class="rheadercol" align="left" height="2">
																	</TD> <!-- SPACER ROW -->
																</tr>
																
																<TR class="rbody">
																	<TD class="rbodycol" align="middle" height="25">
																		<asp:Panel id="List" runat="server" style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 475px">
																																							
																						<asp:DataGrid	id="gridPasienRI" 
																										runat="server" 
																										Width="100%" 
																										AutoGenerateColumns="False" 
																										CellSpacing="0" 
																										BorderColor="Gainsboro" 
																										Enableviewstate="True"
																										BorderWidth="1" 
																										GridLines="none" 
																										AllowPaging="false" 
																										PageSize="20" 
																										DataKeyField="Noreg" 
																										ShowFooter="True" 
																										CellPadding="0"
																										AllowSorting="True">
																												
																									<HeaderStyle Font-Bold="True" BackColor="#DEE3E7" Height="20" />
																									<ItemStyle Font-Size="8pt" />
																									<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																									<EditItemStyle Font-Bold="true" />
																									
																									<Columns>
																																															
																										<asp:TemplateColumn SortExpression="nmpasien" 
																															runat="server" 
																															HeaderText="NAMA PASIEN" 
																															ItemStyle-HorizontalAlign="Left" 
																															HeaderStyle-HorizontalAlign="Left" 
																															Visible="True">
																											<itemtemplate>
																											
																												<asp:label	runat="server"	
																															style="margin-left:1;margin-right:5" 
																															Text='<%# DataBinder.Eval(Container.DataItem, "nmpasien") %>' 
																															ID="_lblNmPasien"/>
																											
																											</itemtemplate>
																										</asp:TemplateColumn>
																										
																										<asp:TemplateColumn SortExpression="noreg" 
																															runat="server" 
																															HeaderText="No. Register" 
																															ItemStyle-HorizontalAlign="Left" 
																															HeaderStyle-HorizontalAlign="Left" 
																															Visible="True">
																											<itemtemplate>
																											
																												<asp:label	runat="server"	
																															style="margin-left:1;margin-right:5" 
																															Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>' 
																															ID="_lblNoreg"/>
																											
																											</itemtemplate>
																										</asp:TemplateColumn>
																										
																										<asp:TemplateColumn SortExpression="norm" 
																															runat="server" 
																															HeaderText="No. RM" 
																															ItemStyle-HorizontalAlign="Left" 
																															HeaderStyle-HorizontalAlign="Left" 
																															Visible="True">
																											<itemtemplate>
																											
																												<asp:label	runat="server"	
																															style="margin-left:1;margin-right:5" 
																															Text='<%# DataBinder.Eval(Container.DataItem, "norm") %>' 
																															ID="_lblNorm"/>
																											
																											</itemtemplate>
																										</asp:TemplateColumn>
																										
																										<asp:TemplateColumn SortExpression="nmruang" 
																															runat="server" 
																															HeaderText="Ruang Rawat" 
																															ItemStyle-HorizontalAlign="Left" 
																															HeaderStyle-HorizontalAlign="Left" 
																															Visible="True">
																											<itemtemplate>
																											
																												<asp:label	runat="server"	
																															style="margin-left:1;margin-right:5" 
																															Text='<%# DataBinder.Eval(Container.DataItem, "nmruang") %>' 
																															ID="_lblnmruang"/>
																											
																											</itemtemplate>
																										</asp:TemplateColumn>
																										
																										<asp:TemplateColumn SortExpression="nott" 
																															runat="server" 
																															HeaderText="No. TT" 
																															ItemStyle-HorizontalAlign="Left" 
																															HeaderStyle-HorizontalAlign="Left" 
																															Visible="True">
																											<itemtemplate>
																											
																												<asp:label	runat="server"	
																															style="margin-left:1;margin-right:5" 
																															Text='<%# DataBinder.Eval(Container.DataItem, "nott") %>' 
																															ID="_lblNoTT"/>
																											
																											</itemtemplate>
																										</asp:TemplateColumn>
																										
																																																													
																									</Columns>

																						</asp:DataGrid>			
																			
																			
																		</asp:Panel>
																	</td>
																</tr>
														</asp:panel>
													
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