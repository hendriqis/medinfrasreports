<%@ Register TagPrefix="Module" TagName="Header" Src="../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../incl/Toolbar.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="salinpesanan.aspx.vb" Inherits="QIS.Web.salinpesanan"%>


<html>
	<head>
		<title>QIS .Net Hospital Information System - Salin Pesanan</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
		<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
	</head>
	
	<body>

    <form id="frmKonvSat" runat="server">
			
			<table cellSpacing="5" cellPadding="0" width="100%" border="0">
				
				<tr>
					<td style="PADDING-TOP: 5px" align="left">
					
						<TABLE cellSpacing="0" cellPadding="5" width="100%">
							<TR class="rheader">
								<TD class="rheadercol" align="left" height="25">SALIN PESANAN
								</TD>
							</TR>
											
							<TR class="rbody">
								<TD class="rbodycol" align="left" height="25">
									<P>Halaman ini untuk mengambil data pesanan dari Purchase Order.<br />
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
															Kode Supplier:
														</td>
														<td>
															<asp:Label Runat="server" ID="lblKodeSupplier" />
														</td>
													</tr>
													<tr>
														<td width="20%">
															Nama Supplier:
														</td>
														<td>
															<asp:Label Runat="server" ID="lblNamaSupplier" />
														</td>
													</tr>
												</table>
													
												
													
												<table width="100%">
																										
													<tr>
														<td width="100%">
														
															<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400">
																
																
													<!-- MAIN SECTION DATAGRID -->	
													
													<TABLE width="100%">
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="2" />
														</TR><!-- SPACER ROW -->

														<tr>
															<TD width="100%" height="100%">
																<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 360px">
																	<asp:DataGrid	id="gridSalinPesanan" 
																				runat="server" 
																				AutoGenerateColumns="False" 
																				CellSpacing="0" 
																				BorderColor=Gainsboro 
																				BorderWidth="1" 
																				GridLines="none" 
																				Width="100%"
																				AllowPaging="false"
																				DataKeyField="nopesan"
																				PageSize="20"
																				ShowFooter=True
																				CellPadding="0"
																				OnPageIndexChanged="gridSalinPesanan_OnPageIndexChanged"
																				OnEditCommand="gridSalinPesanan_OnEditCommand"
																				OnUpdateCommand="gridSalinPesanan_OnUpdateCommand"
																				OnDeleteCommand="gridSalinPesanan_OnDeleteCommand"
																				OnCancelCommand="gridSalinPesanan_OnCancelCommand">
																				
																				
																				<HeaderStyle Font-Bold="True" CssClass=rheadercol BackColor=AliceBlue Height=20 />
																				<ItemStyle Font-Size="x-small" />
																				<AlternatingItemStyle BackColor=WhiteSmoke  />
																				<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																				<EditItemStyle Font-Bold="true" />
																				

																				<Columns>
																					<asp:BoundColumn DataField="kdsupplier" Visible="False" />
																					<asp:BoundColumn DataField="kdbarangdt" Visible="False" />																																																														
																					
																					<asp:TemplateColumn runat="server" HeaderText="No. Bukti" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" Visible="True">
																						<itemtemplate>
																						
																							<asp:label	runat="server"	
																										style="margin-left:5;margin-right:5" 
																										Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>' 
																										ID="_lblNoBukti"/>
																						
																						</itemtemplate>
																						
																					</asp:TemplateColumn>
																					
																					<asp:TemplateColumn runat="server" HeaderText="Tanggal Pesan" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" Visible="True">
																						<itemtemplate>
																						
																							<asp:label	runat="server"	
																										style="margin-left:5;margin-right:5" 
																										Text='<%# Format(DataBinder.Eval(Container.DataItem, "tglpesan"),"dd-MM-yyyy") %>' 
																										ID="_lblTgPesan"/>
																						
																						</itemtemplate>
																						
																					</asp:TemplateColumn>
																					
																					
																					<asp:TemplateColumn runat="server" HeaderText="Kode Item" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" Visible="False">
																						<itemtemplate>
																						
																							<asp:label	runat="server"	
																										style="margin-left:5;margin-right:5" 
																										Text='<%# DataBinder.Eval(Container.DataItem, "kdbarangdt") %>' 
																										ID="_lblKodeItem"/>
																						
																						</itemtemplate>
																						
																					</asp:TemplateColumn>
																					
																					<asp:TemplateColumn runat="server" HeaderText="Nama Item" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" Visible="True">
																						<itemtemplate>
																						
																							<asp:label	runat="server"	
																										style="margin-left:5;margin-right:5" 
																										Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang") %>' 
																										ID="_lblNamaItem"/>
																						
																						</itemtemplate>
																						
																					</asp:TemplateColumn>																					
																					
																					<asp:TemplateColumn runat="server" HeaderText="Qty Sisa" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
																						
																						<itemtemplate>
																						
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtypesandt"),"#,##0.00") %>' 
																													ID="gridSalinPesanan_lblQty"/>
																							
																						</itemtemplate>
																						
																						<EditItemTemplate>
																						
																									<asp:textbox	runat="server" 
																													id="_txtPaketQty" 
																													tabindex="0"
																													BorderWidth="1"
																													BorderColor=DarkGray
																													Width="100%"
																													Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtypesandt"),"#,##0.00") %>' />
																													
																						</EditItemTemplate>
																						
																					</asp:TemplateColumn >
																		
																					<asp:TemplateColumn runat="server" HeaderText="Satuan" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right" Visible="True">
																						<itemtemplate>
																						
																							<asp:label	runat="server"	
																										style="margin-left:5;margin-right:5" 
																										Text='<%# DataBinder.Eval(Container.DataItem, "satuandt") %>' 
																										ID="_lblSatuan"/>
																						
																						</itemtemplate>
																						
																					</asp:TemplateColumn>
																					
																					<asp:TemplateColumn runat="server" HeaderText="Faktor" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right" Visible="True">
																						<itemtemplate>
																						
																							<asp:label	runat="server"	
																										style="margin-left:5;margin-right:5" 
																										Text='<%# Format(DataBinder.Eval(Container.DataItem, "faktordt"),"#,##0.00") %>' 
																										ID="_lblFaktor"/>
																						
																						</itemtemplate>
																						
																					</asp:TemplateColumn>
																					
																																																	
																					<asp:TemplateColumn   runat="server" HeaderText="Terima" Visible="True" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
																						
																						<ItemTemplate>
																							
																							<asp:checkbox	runat="server"
																											enabled="True"
																											checked="False"
																											ID="gridSalinPesanan_chkTerima"/>
																						
																						</ItemTemplate>
																						
																						<EditItemTemplate>
																						
																							<asp:CheckBox	Runat="server"
																											enabled="True"
																											id="_chkPaketDisc"
																											Checked="False"/>
																						
																						</EditItemTemplate>
																						
																					</asp:TemplateColumn >																																																																															
																				
																					<asp:EditCommandColumn  runat="server"
																											EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>" 
																											UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
																											CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
																							
																							<itemstyle HorizontalAlign="center"  />
																							
																					</asp:EditCommandColumn>
																				
																					<asp:ButtonColumn		runat="server"  
																											Text="<img src=/qislib/images/delete.png border=0 id=KelompokPelayanan_grdPelayanan_btnDelete align=absmiddle alt='Delete this item'>"
																											commandname="delete" />
																																																																											
																				</Columns>
																				
																	</asp:DataGrid>
																	<!-- END SECTION DATAGRID -->
															</DIV>
															
														</td>
													</tr>
													
													<TR class="rheader">
														<TD class="rheadercol" align="left" height="2" />
													</TR> 
													
													<tr>
														<td align=right>
															<input type="button" value="Close" onClick="window.close();" class="sbttn">
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
			
			<script src='/qislib/scripts/common/common.js' language="javascript"></script> 
			<script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>
		</form>
		

  </body>
</html>
