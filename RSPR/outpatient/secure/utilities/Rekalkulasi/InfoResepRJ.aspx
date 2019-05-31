<%@ Page Language="vb" AutoEventWireup="false" Codebehind="InfoResepRJ.aspx.vb" Inherits="QIS.Web.utilities.Rekalkulasi.InfoResepRJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Informasi Resep Rawat Jalan</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/RI_/RI___000001.css' type="text/css" rel="Stylesheet">
		<script language="javascript" src="/qislib/scripts/RI_/RI___Dlg_RSSM.js"></script>
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script> 
	</HEAD>
	
	<body onload="center();">
		
		<form id="frmkunjPoli" runat="server">
			
			<table border="0" width="100%" cellspacing="5" cellpadding="0">
				
				
					<tr>
						<td style="PADDING-TOP: 5px" align="left">
															
								<TABLE cellSpacing="0" cellPadding="5" width="100%">
								
									<TR class="rheader">
										<TD class="rheadercol" align="left" height="25">INFORMASI RESEP RAWAT JALAN (<asp:label	id="lblNama" runat="server" />)
										</TD>
									</TR>
									
									<TR class="rbody">
										<TD class="rbodycol" align="left" height="25">
											<P>Halaman ini untuk melihat Resep Pasien.<br />
											</P>
										</TD>
									</TR>
									
									<TR class="rheader">
										<TD class="rheadercol" align="left" height="2">
									</TD>
									
									<TR class="rbody">
										<TD class="rbodycol" align="middle" height="25">
											<TABLE width="100%">
												<TR>	 
													<TD width="20%">            
														No. Resep
													</TD>
													<TD width="50%">
														<asp:TextBox	id="txtNoResep" 
																		Runat="server" 
																		ReadOnly="true"
																		Width="45%" />
													<TD>&nbsp;
													</TD>
												</TR>
												
											</TABLE>
											<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400">
												<table cellSpacing="0" cellPadding="0" width="100%">
													<TR class="rbody">
														<TD class="rbodycol" align="middle" height="25">
															<TABLE width="100%">
																<TR>
																	<TD width="100%" height="100%">
																		
																		<asp:DataGrid	id="gridResep" 
																						runat="server" 
																						Width="100%" 
																						AutoGenerateColumns="False" 
																						CellSpacing="0" 
																						BorderColor="Gainsboro" 
																						BorderWidth="1" 
																						GridLines="none" 
																						Height="100%" 
																						DataKeyField="counter" 
																						ShowFooter="True" 
																						CellPadding="0"
																						AllowSorting="True">
																			<HeaderStyle Font-Bold="True" BackColor="#DEE3E7" Height="20" />
																			<ItemStyle Font-Size="8pt" />
																			<SelectedItemStyle BackColor=CornflowerBlue />
																			<AlternatingItemStyle BackColor="WhiteSmoke" />
																			<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																			<EditItemStyle Font-Bold="true" />
																			<Columns>
																				
																				<asp:BoundColumn DataField="noresep" Visible="False" />
																				<asp:BoundColumn DataField="kdbarang" visible="False" />																																																																																					
																				
																				<asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
																									ID="_lblCounter"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>
																																									
																				<asp:TemplateColumn runat="server" HeaderText="Lokasi" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>' 
																									ID="_lblLokasi"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>																																								
																																				
																				<asp:TemplateColumn SortExpression="Jenis" runat="server" HeaderText="R/" HeaderStyle-HorizontalAlign="Center">
																					<ItemTemplate>
																					
																						<asp:checkbox	runat=server 
																										enabled=false 
																										checked='<%# DataBinder.Eval(Container.DataItem, "Jenis") %>' 
																										ID="_chkResep" />
																					
																					</ItemTemplate>
																					<itemstyle HorizontalAlign="Center" Width="50px" />
																				</asp:TemplateColumn>
																																				
																				<asp:TemplateColumn runat="server" HeaderText="Resep" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='' 
																									ID="_lblResep"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>
																																																							
																				<asp:TemplateColumn runat="server" HeaderText="Tipe" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "tipe") %>' 
																									ID="_lblTipe"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>
																																									
																				<asp:TemplateColumn runat="server" HeaderText="Kode Item" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
																									ID="_lblKodeItem"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>	
																				
																				<asp:TemplateColumn runat="server" HeaderText="Expired" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "expired"), "dd-MM-yyyy") %>' 
																									ID="_lblExpired"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama Item" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																									ID="_lblNamaItem"/>
																					
																					</itemtemplate>
																				
																				</asp:TemplateColumn>
																																														
																				<asp:TemplateColumn SortExpression="qtysatuan" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "qtysatuan") %>' 
																									ID="_lblQtySatuan"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn SortExpression="satobat" runat="server" 
																									HeaderText="Satuan" ItemStyle-HorizontalAlign="Center" 
																									HeaderStyle-HorizontalAlign="Center"
																									visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "satobat") %>' 
																									ID="_lblSatuanObat"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				<asp:TemplateColumn SortExpression="nmsatobat" runat="server" 
																									HeaderText="Satuan" ItemStyle-HorizontalAlign="Center" 
																									HeaderStyle-HorizontalAlign="Center"
																									visible="true">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "nmsatobat") %>' 
																									ID="_lblnmSatuanObat"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																																									
																				<asp:TemplateColumn SortExpression="qtyresep" runat="server" HeaderText="Qty Resep" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyresep"),"#,##0.00") %>' 
																									ID="_lblQtyResep"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																																									
																				<asp:TemplateColumn SortExpression="hasil" runat="server" HeaderText="Hasil" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "hasil"),"#,##0.00") %>' 
																									ID="_lblHasil"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																																									
																				<asp:TemplateColumn runat="server" HeaderText="Qty Diminta" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="false">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyditagih"),"#,##0.00") %>' 
																									ID="_lblQtyDitagih"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Tarif" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargajual"),"#,##0.00") %>' 
																									ID="_lblHarga"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Selisih" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "selisih"),"#,##0.00") %>' 
																									ID="_lblSelisih"/>
																					
																					</ItemTemplate>
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "Diskonpc"),"#,##0.00") %>' 
																									ID="_lblDiskon"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Em. Racikan" ItemStyle-HorizontalAlign="right" HeaderStyle-HorizontalAlign="Center" Visible="false">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "embalace"),"#,##0.00") %>' 
																									ID="_lblEmbalaceR"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Qty Em. Obat" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtykemasO"),"#,##0.00") %>' 
																									ID="_lblQtyKemasO"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Em. Obat" ItemStyle-HorizontalAlign="right" HeaderStyle-HorizontalAlign="Center" Visible="false">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "embalaceO"),"#,##0.00") %>' 
																									ID="_lblEmbalaceO"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="UangR" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="false">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "uangr"),"#,##0.00") %>' 
																									ID="_lblUangR"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>
																																		
																				<asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:10;margin-right:10" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "subtotal"),"#,##0.00") %>' 
																									ID="_lblSubTotal"/>
																					
																					</ItemTemplate>																																									
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Kemas Racikan" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "kemas") %>' 
																									ID="_lblKodeKemasanR"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Kemas Obat" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "kemasO") %>' 
																									ID="_lblKodeKemasanO"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Aturan Pakai" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "aturan") %>' 
																									ID="_lblAturan"/>
																					
																					</ItemTemplate>																						
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="IkutObat" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "ikutobat") %>' 
																									ID="_lblIkutObat"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn SortExpression="jamin" runat="server" HeaderText="Dijamin" HeaderStyle-HorizontalAlign="Center" Visible="True">
																					<ItemTemplate>
																					
																						<asp:checkbox	runat=server 
																										enabled=false 
																										checked='<%# DataBinder.Eval(Container.DataItem, "jamin") %>' 
																										ID="_chkJamin" />
																					
																					</ItemTemplate>
																					<itemstyle HorizontalAlign="Center" Width="50px" />
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Kode UangR" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<itemtemplate>
																					
																						<asp:label	runat="server"	
																									style="margin-left:5;margin-right:5" 
																									Text='<%# DataBinder.Eval(Container.DataItem, "kduangr") %>' 
																									ID="_lblKdUangR"/>
																					
																					</itemtemplate>
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Hpr" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:10;margin-right:10" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "hpr"),"#,##0.00") %>' 
																									ID="_lblHpr"/>
																					
																					</ItemTemplate>																																									
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="HargaDsr" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:10;margin-right:10" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargadsr"),"#,##0.00") %>' 
																									ID="_lblHargaDsr"/>
																					
																					</ItemTemplate>																																									
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="MarkUp" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:10;margin-right:10" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "markup"),"#,##0.00") %>' 
																									ID="_lblMarkUp"/>
																					
																					</ItemTemplate>																																									
																				</asp:TemplateColumn>
																				
																				<asp:TemplateColumn runat="server" HeaderText="Coverage" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" Visible="False">
																					<ItemTemplate>
																					
																						<asp:label	runat="server" 
																									style="margin-left:10;margin-right:10" 
																									Text='<%# Format(DataBinder.Eval(Container.DataItem, "coverage"),"#,##0.00") %>' 
																									ID="_lblCoverage"/>
																					
																					</ItemTemplate>																																									
																				</asp:TemplateColumn>
																				
																			</Columns>

																		</asp:DataGrid>

																
																	</TD>
																</TR>
															</TABLE>
														</TD>
													</TR>
													<tr>
														<td  align="right">
															<table>
																<tr class="rbody">
																	<td align="right">
																		<b>	
																			Total Nilai Resep 																																																											
																		</b>
																	</TD>																		
																	<td align="right">
																		<b>
																			&nbsp;Rp.&nbsp;
																		</b>
																	</td>
																	<td align="right">
																		<b>
																			<asp:TextBox id="lblTotal" Runat="server" ReadOnly="True" class="right">
																			</asp:TextBox>
																		</b>
																	</td>
																</tr>
																
															</table>
														<td>
													</TR>
												</TABLE>	
											</DIV>
										</TD>
									</TR>
									<TR class="rheader">
										<TD class="rheadercol" align="left" height="2" />
									</TR> 
									
									<tr>
										<td align="right">	
											<table>
												<tr>
													<td align=right>
														<input type="button" value=" Close " onClick="window.close();" class="sbttn">
													</td>
												</tr>
											</table>
										</td>
									</tr>
									
								</TABLE>
								
						</td>
					</tr>
						
			</table>
		</form>
		
		<script src='/qislib/scripts/common/common.js' language="javascript"></script> 
					
		</form>
		
	</body>
	
</HTML>

