<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CoverageObat.aspx.vb" Inherits="QIS.Web.secure.master.CoverageObat.CoverageObat" %>
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../../incl/Toolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../../incl/bannerModule.ascx" %>
<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Master Coverage Obat</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script> 
		<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
	</HEAD>
	
	<div id=loadingmsg style="position:absolute; z-index:3; left:240; top:200; width:200; height:60; 
			border-width:1; border-style:ridge; background-color:#eeeeee">
		<center>
			<br /><br /><font face='Verdana' Size=1><b>Loading, Please wait ...</b></font><br /><br />
		</center>
	</div>
	
	<body>
		<form id="frmCoverageObat" runat="server">
			<!-- BEGIN PAGE HEADER --><MODULE:HEADER id="BannerModule" runat="server"></MODULE:HEADER>
			<!-- END PAGE HEADER -->
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top" width="100%">
						<table cellSpacing="10" cellPadding="0" width="100%" border="0">
							<tr>
								<td style="PADDING-TOP: 5px" align="left"><asp:panel id="panelHeader" runat="server">
										<TABLE cellSpacing="0" cellPadding="5" width="100%">
											<TR class="rheader">
												<TD class="rheadercol" align="left" height="25">MASTER COVERAGE OBAT
												</TD>
											</TR>
											<TR class="rbody">
												<TD class="rbodycol" align="left" height="25">
													<P>Halaman ini untuk mengubah, menambah, atau menghapus data Master Coverage Obat.<br />
													</P>
												</TD>
											</TR>
											
											<asp:Panel id="pnlHeader" runat="server">
											
											<TR class="smalltext">
												<TD class="smalltext" align="left" height="25">
													<Module:Toolbar  id="mdlToolbar" runat="server" />
												</TD>
											</TR> 
											
											<!-- SPACER ROW -->
											<TR class="rheader">
												<TD class="rheadercol" align="left" height="2"></TD>
											<TR class="rbody">
												<TD class="rbodycol">
													<TABLE width="100%">
														<TR>
															<TD vAlign="top" width="50%">
															
																<!--BEGIN PERUSAHAAN PANEL-->
																<asp:panel id="panelPerusahaan" runat="server">
																	<TABLE width="100%">
																		<TR class="rbody">
																			<TD width="20%">
																				<asp:linkbutton id="LbtnPerusahaan" 
																								Runat="server" 
																								CausesValidation="False" 
																								text="Perusahaan"/>
																			</TD>
																			<TD colspan="2">
																				<asp:textbox	id="txtPerusahaan" 
																								runat="server" 
																								AutoPostBack="True"/>
																				&nbsp;																			
																				<asp:label	id="Desc_txtPerusahaan" 
																							Runat="server" 
																							Font-Bold="True"/>
																				<asp:RequiredFieldValidator id="rfvPerusahaan"
																											Runat="server"
																											ControlToValidate="txtPerusahaan"
																											ErrorMessage="Kode Perusahaan"
																											Display="Dynamic">
																					**
																				</asp:RequiredFieldValidator>																											
																			</TD>																								
																		</TR>
																		
																		<TR>
																			<TD width="20%">Jenis Instansi
																			</TD>
																			<TD width="40%">
																				<asp:TextBox	id="txtJenisInstansi" 
																								runat="server" 
																								Width="100%" 
																								ReadOnly="True"/>
																			</TD>
																			<TD>&nbsp;
																			</TD>
																		</TR>
																		
																		<TR>
																			<TD width="20%">Alamat
																			</TD>
																			<TD width="40%">
																				<asp:textbox	id="txtAlamat" 
																								runat="server" 
																								Width="100%" 
																								ReadOnly="True"/>
																			</TD>
																			<TD>&nbsp;
																			</TD>
																		</TR>
																		
																		<TR>									
																			<TD width="20%">Telepon
																			</TD>
																			<TD width="40%">
																				<asp:textbox	id="txtTelepon" 
																								runat="server" 
																								ReadOnly="True"/>
																			</TD>
																			<TD>&nbsp;
																			</TD>
																		</TR>
																	</TABLE>
																	
																	<TABLE width="100%">
																		<TR>
																			<TD width="20%">
																				<asp:Button id="btnAddAll" 
																							runat="server" 
																							text="Reset" 
																							width="100" 
																							Visible="False"/>
																			</TD>
																			<td width="20%">
																				<asp:Button id="btnInsert" 
																							runat="server" 
																							text="Update" 
																							width="100" 
																							Visible="False"/>
																			</td>
																			<td>
																				<asp:Button id="btnRemove" 
																							runat="server" 
																							text="Remove" 
																							width="100" 
																							Visible="False"/>
																			</td>
																		</TR>
																	</TABLE>
																</asp:panel>
																<!--END PERUSAHAAN PANEL-->
									
															</TD>
														</TR>
													</TABLE> 
													
													<!-- BEGIN ADDNEW OBAT -->
													
													<asp:Panel id="panelCoverageAddNewRow" Runat="server">
														<TABLE class="rBodyAddNew" cellSpacing="0" borderColorDark="#98aab1" cellPadding="5" width="100%">
															<TR class="rheader">
																<TD class="rheadercol" align="left" height="25">Edit/Tambah Data Coverage Obat</TD>
															</TR>
															<TR>
																<TD>
																	<TABLE cellSpacing="1" cellPadding="1" width="100%" bgColor="#98aab1" border="1">
																		<TR>
																			<TD class="rBodyAddNewFld" width="20%">
																				<asp:LinkButton id="lbtnKodeBarang" 
																								Runat="server" 
																								text="Kode Item" 
																								CausesValidation="False"/>
																			</TD>
																			<TD class="rBodyAddNewFld" width="40%">
																				<asp:TextBox	id="txtKdBarang" 
																								Runat="server" 
																								autopostback="true" 
																								Width="100%" 
																								MaxLength="10"/>
																			</TD>
																			<TD class="rBodyAddNewFld">
																				<asp:RequiredFieldValidator id="rfvKdBarang" 
																											runat="server" 
																											controlToValidate="txtKdBarang" 
																											errormessage="Kode Item" 
																											display="dynamic">
																					**
																				</asp:RequiredFieldValidator>
																			</TD>
																		</TR>
																		
																		<TR>
																			<TD class="rBodyAddNewFld" width="20%">Nama Item
																			</TD>
																			<TD class="rBodyAddNewFld" width="40%">
																				<asp:Label	id="lblNmItem" 
																							Runat="server" 
																							Width="100%"/>
																			</TD>
																			<TD>
																		</TR>
																		
																		<TR>
																			<TD class="rBodyAddNewFld" width="20%">
																				Diskon(%)
																			</TD>
																			<TD class="rBodyAddNewFld" width="40%">
																				<asp:TextBox	id="txtDiskonPersen" 
																								visible="true"
																								runat="server" 
																								MaxLength="10" 
																								width="100%"/>
																			</TD>
																			<TD class="rBodyAddNewFld">
																				<asp:RequiredFieldValidator id="rfvDiskonPersen" 
																											runat="server" 
																											controlToValidate="txtDiskonPersen" 
																											errormessage="Diskon persen" 
																											display="dynamic">
																					** 
																				</asp:RequiredFieldValidator>
																			</TD>
																			<TD class="rBodyAddNewFld">
																				<asp:RangeValidator id="rvDiskonPersen" 
																									runat="server" 
																									ControlToValidate="txtDiskonPersen" 
																									MaximumValue="100.00" 
																									MinimumValue="0.00" 
																									Type="Double" 
																									ErrorMessage="Diskon Persen" 
																									Display="Dynamic">** Angka melewati batas **
																				</asp:RangeValidator>
																				<asp:CompareValidator	id="cvDiskonPersen" 
																										runat="server" 
																										ControlToValidate="txtDiskonPersen" 
																										Operator="DataTypeCheck" 
																										Type="Double" 
																										ErrorMessage="Diskon Persen" 
																										Display="Dynamic">
																					** Harus diisi dengan angka **
																				</asp:CompareValidator>
																			</td>
																		</TR>
																		
																		<TR>
																			<TD class="rBodyAddNewFld" width="20%">
																				Diskon(Rp)
																			</TD>
																			<TD class="rBodyAddNewFld" width="40%">
																				<asp:TextBox	id="txtDiskonAmount" 
																								visible="true"
																								runat="server" 
																								MaxLength="10" 
																								width="100%"/>
																			</TD>
																			<TD class="rBodyAddNewFld">
																				<asp:RequiredFieldValidator id="rfvDiskonAmount" 
																											runat="server" 
																											controlToValidate="txtDiskonAmount" 
																											errormessage="Diskon Amount" 
																											display="dynamic">
																					** 
																				</asp:RequiredFieldValidator>
																			</TD>
																		</TR>
																		<TR>
																			<TD class="rBodyAddNewFld" width="20%">&nbsp;
																			</TD>
																			<TD class="rBodyAddNewFld" width="40%">
																				<asp:RadioButton	Runat="server" 
																									ID="rbtnDiscPersenAddNewRow" 
																									AutoPostBack="True"
																									Text="Diskon(%)"
																									GroupName="__DiscountAddNewRow" />
																				
																				<asp:RadioButton	Runat="server" 
																									ID="rbtnDiscAmountAddNewRow" 
																									AutoPostBack="True"
																									Text="Diskon(Rp)"
																									GroupName="__DiscountAddNewRow" />
																			</TD>
																		</TR>
																	</TABLE>
																	
																	<TABLE width="100%">
																		<TR>
																			<TD width="5%">
																				<asp:Button id="btnAddNewRow" 
																							runat="server" 
																							text="Save" 
																							CssClass="sbttn"/>
																			</TD>
																			<TD>
																				<asp:Button id="btnDone"    
																							runat="server" 
																							text="Done" 
																							CausesValidation="False" 
																							CssClass="sbttn"/>
																			</TD>
																		</TR>
																	</TABLE>
																</TD>
															</TR>
															
															<TR vAlign="bottom" bgColor="white">
																<TD align="left" height="25">
																	<P align="right"><STRONG>Data yang sudah ada...</STRONG></P>
																</TD>
															</TR>
														</TABLE>
													</asp:Panel>
													
													<!-- END ADDNEW OBAT --> 
													
													<!-- START DATAGRID OBAT -->
													<TABLE width="100%">
														<TR>
															<TD width="100%" height="100%">
																<asp:DataGrid	id="gridCoverageObat" 
																				runat="server" 
																				Width="100%" 
																				CellPadding="0" 
																				ShowFooter="True" 
																				DataKeyField="kdbarang" 
																				Height="100%" 
																				GridLines="none" 
																				BorderWidth="1" 
																				BorderColor="Gainsboro" 
																				CellSpacing="0" 
																				AutoGenerateColumns="False">
																				
																	<HeaderStyle	Font-Bold="True" 
																					BackColor="#DEE3E7" 
																					Height="20" />
																	<ItemStyle Font-Size="8pt" />
																	<SelectedItemStyle BackColor=CornflowerBlue />
																	<AlternatingItemStyle BackColor="WhiteSmoke" />
																	<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																	<EditItemStyle Font-Bold="true" />
																	
																	<Columns>
																	
																		<asp:BoundColumn	DataField="kdbarang" 
																							visible="False" />
																		<asp:TemplateColumn runat="server" 
																							HeaderText="Kode Item">
																			<itemtemplate>
																				<asp:label	runat="server" 
																							style="margin-left:5;margin-right:5" 
																							Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
																							ID="_lblKodeBarang"/>
																			</itemtemplate>
																		</asp:TemplateColumn>
																		
																		<asp:TemplateColumn runat="server" HeaderText="Nama Item">
																			<itemtemplate>
																				<asp:label	runat="server" 
																							style="margin-left:5;margin-right:5" 
																							Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																							ID="_lblNmItem"/>
																			</itemtemplate>
																		</asp:TemplateColumn>
																		
																		<asp:TemplateColumn runat="server" HeaderText="Diskon(%)">
																			<ItemTemplate>
																				<asp:label  runat="server" 
																							style="margin-left:5;margin-right:5" 
																							Text='<%# DataBinder.Eval(Container.DataItem, "diskonpersen") %>' 
																							ID="_lblDiskonPersen"/>
																			</ItemTemplate>
																		</asp:TemplateColumn>
																		
																		<asp:TemplateColumn runat="server" HeaderText="Diskon(Rp)">
																			<ItemTemplate>
																				<asp:label  runat="server" 
																							style="margin-left:5;margin-right:5" 
																							Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonamount"),"##,###0.00") %>' 
																							ID="_lblDiskonAmount"/>
																			</ItemTemplate>
																		</asp:TemplateColumn>
																		
																		<asp:EditCommandColumn	runat="server" 
																								EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>" 
																								UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>" 
																								CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
																			<itemstyle HorizontalAlign="center" />
																		</asp:EditCommandColumn>
																		
																		<asp:TemplateColumn>
																			<ItemTemplate>
																				<asp:ImageButton	Runat="server" 
																									ID="__ibtnDelete" 
																									CausesValidation="False" 
																									ImageUrl="/qislib/images/delete.png" 
																									AlternateText="Delete this item" 
																									CommandName="__delete" />
																			</ItemTemplate>
																		</asp:TemplateColumn>
																	</Columns>
																	
																</asp:DataGrid></TD>
														</TR>
													</TABLE> 
													
													<!-- END DATAGRID BAHAN BAKU -->
													
												</TD>
											</TR>
											
											<script language="javascript" src="/qislib/scripts/common/common.js"></script>
											<script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>
											
											</asp:Panel>
											
											<TR>
												<TD>
												
													<TABLE width="100%">
															<TR>
																<TD align="right">
																	<asp:DataList		id="listSearch" 
																						runat="server" 
																						RepeatDirection="Horizontal" 
																						OnItemCommand="HandleItemSearchCommand">
																		
																		<ItemTemplate>
																			<asp:LinkButton ID="linkSearch" 
																							CausesValidation="True"
																							Runat=server 
																							CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
																							text='<%# DataBinder.Eval(Container.DataItem, "list") %>'/>&nbsp;&nbsp;&nbsp;
																			</asp:LinkButton>
																		</ItemTemplate>
																	</asp:DataList>
																</TD>
															</TR>
														</TABLE>
													
													<asp:Panel id="pnlCheckList" runat="server">									
													
														<TABLE width="100%">															
															<TR>
																<TD width="10%" align=right>																			
																	<asp:Button id="btnSave" 
																				runat="server" 
																				text="Save" 
																				CssClass="bttntext"/>
																	<asp:Button id="btnCancel" 
																				runat="server" 
																				text="Batal" 
																				causesValidation="False"
																				CssClass="bttntext"/>
																</TD>
															</TR>
														</TABLE>						

															<!-- START DATAGRID CHECKLIST ROP -->
																																		
														<TABLE width="100%">

															<TR>
																<TD width="100%" height="100%">
																
																	<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400">

																	<asp:DataGrid	id="gridCheckList" 
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
																					DataKeyField="kdbarang" 
																					ShowFooter="True" 
																					CellPadding="0">
																					
																		<HeaderStyle Font-Bold="True" BackColor="#DEE3E7" Height="20" />
																		<ItemStyle Font-Size="8pt" />
																		<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																		<EditItemStyle Font-Bold="true" />
																		
																		<Columns>
																			
																			<asp:TemplateColumn runat="server"
																								ItemStyle-HorizontalAlign="Center" 
																								HeaderStyle-HorizontalAlign="Center">
																				<ItemTemplate>																						
																					<asp:checkbox	runat=server 
																									enabled=True
																									checked=false
																									ID="_chkPesan" />																						
																				</ItemTemplate>																						
																				<HeaderTemplate>																							
																					<input	name="cbxSelectAll" 
																							type="checkbox" 
																							onclick="javascript:checkAll(this.form,'_chkPesan');">
																				</HeaderTemplate>																						
																			</asp:TemplateColumn>
																																								
																			<asp:TemplateColumn		runat="server" 
																									HeaderText="Kode Item">																								
																				<itemtemplate>																						
																					<asp:label		runat="server" 
																									style="margin-left:5;margin-right:5"
																									Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>' 
																									ID="_lblKodeBarang"/>																							
																				</itemtemplate>																						
																			</asp:TemplateColumn >
																			
																			<asp:TemplateColumn		runat="server" 
																									HeaderText="Nama Item">																						
																				<itemtemplate>																						
																					<asp:label		runat="server" 
																									style="margin-left:5;margin-right:5"
																									Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																									ID="_lblNamaBarang"/>																							
																				</itemtemplate>													
																			</asp:TemplateColumn >
																			
																			<asp:TemplateColumn		runat="server"
																									ItemStyle-HorizontalAlign="Center" 
																									HeaderStyle-HorizontalAlign="Center"
																									HeaderText="Diskon(%)">																								
																				<itemtemplate>																						
																					
																					<asp:RadioButton	Runat="server" 
																										ID="rbtnDiscPersen" 
																										CommandName="_clkrbtnDiscPersen"
																										GroupName="__Discount" />																						
																				</itemtemplate>																						
																			</asp:TemplateColumn >
																			
																			<asp:TemplateColumn		runat="server" 
																									ItemStyle-HorizontalAlign="Center" 
																									HeaderStyle-HorizontalAlign="Center"
																									HeaderText="Diskon(Rp)">																								
																				<itemtemplate>																						
																					<asp:RadioButton	Runat="server" 
																										ID="rbtnDiscAmount" 
																										CommandName="_clkrbtnDiscAmount"
																										GroupName="__Discount" />																											
																				</itemtemplate>																						
																			</asp:TemplateColumn >
																			
																			<asp:TemplateColumn		runat="server" 
																									HeaderText="Diskon(%)" 
																									HeaderStyle-HorizontalAlign="Center" 
																									ItemStyle-HorizontalAlign="Right" >																						
																				<ItemTemplate>																							
																					<asp:TextBox	runat="server" 
																									style="margin-left:5;margin-right:5"
																									autopostback="true"
																									BackColor="Transparent"																												
																									Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpersen"),"##0.00") %>' 
																									ID="_txtDiskonPersen"/>																						
																				</ItemTemplate>																						
																			</asp:TemplateColumn >
																			
																			<asp:TemplateColumn		runat="server" 
																									HeaderText="Diskon(Rp)" 
																									HeaderStyle-HorizontalAlign="Center" 
																									ItemStyle-HorizontalAlign="Right" >																						
																				<ItemTemplate>																							
																					<asp:TextBox	runat="server"
																									style="margin-left:5;margin-right:5"
																									BackColor="Transparent"																												
																									autopostback="true"
																									Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonamount"), "#0.00") %>' 
																									ID="_txtDiskonAmount"/>																						
																				</ItemTemplate>																						
																			</asp:TemplateColumn >
																																						
																			<asp:TemplateColumn runat="server" 
																								HeaderText="" 
																								ItemStyle-HorizontalAlign="Right" 
																								HeaderStyle-HorizontalAlign="Center" 
																								Visible="True">
																				<itemtemplate>																				
																					<asp:RangeValidator	id="rvDiskonList" 
																										runat="server" 
																										ControlToValidate="_txtDiskonPersen" 
																										MaximumValue="100.00" 
																										MinimumValue="0.00" 
																										Type="Double" 
																										ErrorMessage='<%# "Diskon melebihi batas - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																										Display="Dynamic">** 
																					</asp:RangeValidator>
																					<asp:CompareValidator	id="cvDiskonList" 
																											runat="server" 
																											ControlToValidate="_txtDiskonPersen" 
																											Operator="DataTypeCheck" 
																											Type="Double" 
																											ErrorMessage='<%# "Diskon harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																											Display="Dynamic">** 
																					</asp:CompareValidator>
																					<asp:CompareValidator	id="cvDiskonList2" 
																											runat="server" 
																											ControlToValidate="_txtDiskonAmount" 
																											Operator="DataTypeCheck" 
																											Type="Double" 
																											ErrorMessage='<%# "Diskon harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																											Display="Dynamic">** 
																					</asp:CompareValidator>
																				</itemtemplate>
																			</asp:TemplateColumn>
																																																					
																		</Columns>

																	</asp:DataGrid>																										
																	
																	<script src='/qislib/scripts/common/util.js' language="javascript"></script>
																	
																	</DIV>

																</TD>
															</TR>

														</TABLE>				
														
													</asp:Panel>	
													
												</TD>
											</TR>
											
										</TABLE>
										<TABLE cellSpacing="0" cellPadding="5" width="100%">
											<TR>
												<TD align="left">
													<P>
														<asp:ValidationSummary id="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki."/>
													</P>
												</TD>
											</TR>
										</TABLE>
									</asp:panel></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
		
		<script language="javascript" src="/qislib/scripts/common/common.js"></script>
	</body>
</HTML>

<script>
	if (document.all) document.all.loadingmsg.style.visibility='hidden';
</script>
<script>
	if (document.layers) document.loadingmsg.visibility='hidden'
</script>
<script>
	if (document.getElementById) document.getElementById('loadingmsg').style.visibility='hidden'
</script>
