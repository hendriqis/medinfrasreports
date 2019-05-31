<%@ Page Language="vb" AutoEventWireup="false" Codebehind="pengirimanBarang_SelNo.aspx.vb" Inherits="QIS.Web.pengirimanBarang_SelNo" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../incl/calendarModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../incl/bannerModule.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
	<head>
		<title>QIS .Net Hospital Information System - Pengiriman Barang (Pilih No. Permintaan)</title>
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

		<form id="frmPengirimanSelNo" runat="server">
				
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
															<TD class="rheadercol" align="left" height="25">PENGIRIMAN BARANG
															</TD>
														</TR>
														
														<TR class="rbody">
															<TD class="rbodycol" align="left" height="25">
																<P>Halaman ini untuk memilih nomor permintaan barang.<br />
																</P>
															</TD>
														</TR>
														
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="2">
															</TD>
														</TR> <!-- SPACER ROW -->
																																									
														<TR>
															<TD width="100%" height="100%">
																<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 450px">
																<asp:DataGrid	id="grdDistHeader" 
																				CellSpacing="0" 
																				CellPadding="0" 
																				Runat="server" 
																				Width="100%" 
																				ShowFooter="True" 
																				DataKeyField="nodistribusi" 
																				PageSize="20" 
																				AllowPaging="false" 
																				GridLines="none" 
																				BorderWidth="1" 
																				BorderColor="Gainsboro"
																				AutoGenerateColumns="False">
																	<HeaderStyle Font-Bold="True" CssClass="rheadercol" BackColor="#DEE3E7" Height=20 />
																	<ItemStyle Font-Size="8pt" />
																	<AlternatingItemStyle BackColor="WhiteSmoke" />
																	<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																	<EditItemStyle Font-Bold="true" />
																	<Columns>
																	
																		<asp:BoundColumn DataField="nodistribusi" visible="False" />
																	
																		<asp:TemplateColumn runat="server" HeaderText="No. Permintaan">
																			<itemtemplate>
																				<asp:Label			runat="server" 
																									cssclass="likelink"
																									Text='<%# DataBinder.Eval(Container.DataItem, "nodistribusi") %>' 
																									ID="grdDistHeader_NoDistribusi" />
																			</itemtemplate>
																		</asp:TemplateColumn >
																							
																		<asp:TemplateColumn runat="server" HeaderText="Tanggal">
																			<itemtemplate>
																				<asp:label		runat="server" 
																								style="margin-left:5;margin-right:5"
																								Text='<%# DataBinder.Eval(Container.DataItem, "tgltrans") %>' 
																								ID="grdDistHeader_Tanggal"	/>
																			</itemtemplate>
																		</asp:TemplateColumn >
																		
																		<asp:TemplateColumn runat="server" HeaderText="Gudang Asal" Visible="False">
																			<itemtemplate>
																				<asp:label		runat="server" 
																								style="margin-left:5;margin-right:5"
																								Text='<%# DataBinder.Eval(Container.DataItem, "gdasal") %>' 
																								ID="grdDistHeader_GdAsal"/>
																			</itemtemplate>
																		</asp:TemplateColumn >
																		
																		<asp:TemplateColumn runat="server" HeaderText="Lokasi Asal" Visible="False">
																			<itemtemplate>
																				<asp:label		runat="server" 
																								style="margin-left:5;margin-right:5"
																								Text='<%# DataBinder.Eval(Container.DataItem, "lksasal") %>' 
																								ID="grdDistHeader_LksAsal"/>
																			</itemtemplate>
																		</asp:TemplateColumn >
																		
																		<asp:TemplateColumn runat="server" HeaderText="Gudang Peminta"  >
																			<itemtemplate>
																				<asp:label		runat="server" 
																								style="margin-left:5;margin-right:5"
																								Text='<%# DataBinder.Eval(Container.DataItem, "gdtujuan") %>' 
																								ID="grdDistHeader_GdTujuan"/>
																			</itemtemplate>
																		</asp:TemplateColumn >
																		
																		<asp:TemplateColumn runat="server" HeaderText="Lokasi Peminta" >
																			<itemtemplate>
																				<asp:label		runat="server" 
																								style="margin-left:5;margin-right:5"
																								Text='<%# DataBinder.Eval(Container.DataItem, "lkstujuan") %>' 
																								ID="grdDistHeader_LksTujuan"/>
																			</itemtemplate>
																		</asp:TemplateColumn >
																		
																	</Columns>
																</asp:DataGrid>
																</div>
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

