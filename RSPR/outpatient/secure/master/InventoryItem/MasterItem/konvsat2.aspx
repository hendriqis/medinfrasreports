<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../incl/copyRightModule.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="konvsat2.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.MasterItem.konvsat2"%>

<html>
	<head>
		<title>Konversi Satuan</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script> 
		<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script> 
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
		
	<body MS_POSITIONING="GridLayout" onload="center()">
		
		<form id="frmKonvSat" runat="server">
			
			<table cellSpacing="2" cellPadding="0" width="100%" border="0">
					<tr>
					<td width="100%" valign="top">
						<!-- BEGIN PAGE HEADER -->
			            <Module:RadMenu id="RadMenu" runat="server"/>
			            <!-- END PAGE HEADER -->
					</td>
				</tr>
				<tr>
				    <td width="100%" valign="top">
				        <MODULE:CSSToolbar id="CSSToolbar" runat="server"></MODULE:CSSToolbar>
				    </td>
				</tr>
				<tr>
					<td style="PADDING-TOP: 5px" align="left">
					<div style="width: 100%; height: 100%; overflow: auto;">
						<TABLE cellSpacing="0" cellPadding="5" width="100%">
							<TR class="rheader">
								<TD class="rheadercol" align="left" height="25">KONVERSI SATUAN
								</TD>
							</TR>
											
							
											
							
									
									<TABLE width="100%">
										<tr>
											
											<td width="50%" valign=top>
												<table width="100%">
													<tr>
														<td width="20%">
															Kode Item:
														</td>
														<td>
															<asp:Label Runat="server" ID="lblKodeBarang" />
														</td>
													</tr>
													<tr>
														<td width="20%">
															Nama Item:
														</td>
														<td>
															<asp:Label Runat="server" ID="lblNamaBarang" />
														</td>
													</tr>
												</table>
													
												
													
												<table width="100%">
																										
													<tr>
														<td width="100%">
														
															<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 365">
																
																<table width="100%">
																	
																	<tr>
																		<td width="100%">
																		
																			<!-- BEGIN ADDNEW ROP -->
																			<asp:Panel ID="panelKonvSatAddNewRow" Runat="server">
																					
																					<TABLE cellSpacing="0" cellPadding="5" width="100%" class=rBodyAddNew bordercolordark=#98AAB1 >
																					
																						<TR class="rheader">
																							<TD class="rheadercol" align="left" height="25">Edit/Tambah Data Satuan Alternatif Per Barang</TD>
																						</TR>
																						
																						<tr>
																							<td>
																								
																								<TABLE width="100%" border=1 cellpadding=1 cellspacing=1 bgcolor=#98AAB1 >
																									
																									<tr>
																										<TD width="20%" class=rBodyAddNewFld>
																											<asp:LinkButton id="lbtnKodeSatuan" CausesValidation="False" text="Satuan Alternatif" Runat="server" />
																										</TD>
																										<TD width="40%" class=rBodyAddNewFld>
																											<asp:TextBox	id="AddNewRow_txtKodeSatuan" 
																															runat="server" 
																															MaxLength="10" 
																															AutoPostBack="True"
																															width="100%" />
																										</TD>
																										<td class=rBodyAddNewFld>
																											<asp:RequiredFieldValidator id="rfv_AddNewRow_txtKodeSatuan" 
																																		runat="server" 
																																		controlToValidate="AddNewRow_txtKodeSatuan" 
																																		errormessage="Kode Satuan" 
																																		display="dynamic" >** </asp:RequiredFieldValidator>
																										</td>
																									</tr>
																									
																									<tr>
																										<TD width="20%" class=rBodyAddNewFld>
																											<b>Nama Satuan</b>
																										</TD>
																										<TD width="40%" class=rBodyAddNewFld>
																											<asp:TextBox	id="AddNewRow_txtNamaSatuan" 
																															runat="server" 
																															ReadOnly="True"
																															BorderStyle="None"
																															BackColor="Transparent"
																															width="100%" />
																										</TD>
																										<td class=rBodyAddNewFld>
																											<asp:RequiredFieldValidator id="rfv_AddNewRow_txtNamaSatuan" 
																																		runat="server" 
																																		controlToValidate="AddNewRow_txtNamaSatuan" 
																																		errormessage="Nama Satuan" 
																																		display="dynamic" >** </asp:RequiredFieldValidator>
																										</td>
																									</tr>
																									
																									<tr>
																										<TD width="20%" class=rBodyAddNewFld>
																											<b>Faktor</b>
																										</TD>
																										<TD width="40%" class=rBodyAddNewFld>
																											<asp:TextBox	id="AddNewRow_txtFaktor" 
																															runat="server" 
																															text="0"
																															width="100%" />
																										</TD>
																										<td class=rBodyAddNewFld>
																											<asp:RequiredFieldValidator id="rfv_AddNewRow_txtFaktor" 
																																		runat="server" 
																																		controlToValidate="AddNewRow_txtFaktor" 
																																		errormessage="Faktor" 
																																		display="dynamic" >** 
																											</asp:RequiredFieldValidator>
																											<asp:CompareValidator	id="cv_AddNewRow_txtFaktor"
																																	runat="server"
																																	controlToValidate="AddNewRow_txtFaktor"
																																	errorMessage="Faktor harus lebih besar dari 0"
																																	display="dynamic"
																																	Operator="GreaterThan" 
																																	Type="Double" 
																																	ValueToCompare="0.00">** 
																											</asp:CompareValidator>																																	
																										</td>
																									</tr>
																									
																								</TABLE>
																								
																								<TABLE width="100%">
																									<TR>
																										<TD width="5%">
																											<asp:Button id="btnAddNewRow" runat="server" text="Save" Style="width:100;" CssClass=sbttn />
																										</TD>
																										<TD>
																											<asp:Button id="btnDone" runat="server" text="Done" Style="width:100;" CausesValidation="False" CssClass=sbttn /> 
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
															
																			<asp:DataGrid	id="gridKonvSat" 
																							runat="server" 
																							AutoGenerateColumns="False" 
																							CellSpacing="0" 
																							BorderColor=Gainsboro 
																							BorderWidth="1" 
																							GridLines= "Horizontal" 
																							Height="100%"
																							Width="100%"
																							AllowPaging="False"
																							PageSize="20"
																							DataKeyField="satuanalt"
																							ShowFooter=True
																							CellPadding="0">
																									
																						<HeaderStyle Font-Bold="True" BackColor=#DEE3E7  Height=20 />
																						<ItemStyle Font-Size="8pt" />
																						<AlternatingItemStyle BackColor=WhiteSmoke  />
																						<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																						<EditItemStyle Font-Bold="true" />
																						
																						<Columns>
																						
																							<asp:BoundColumn DataField="kdbarang" Visible="False" />
																							<asp:BoundColumn DataField="satuanalt" visible="False" />
																							
																							<asp:TemplateColumn runat="server" HeaderText="Satuan Alternatif">
																								
																								<itemtemplate>
																								
																											<asp:label		runat="server" 
																															style="margin-left:5;margin-right:5"
																															Text='<%# DataBinder.Eval(Container.DataItem, "satuanalt") %>' 
																															ID="_lblSatuanAlt"/>
																									
																								</itemtemplate>
																								
																							</asp:TemplateColumn >
																							
																							<asp:TemplateColumn  runat="server" HeaderText="Faktor" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" >
																								
																								<ItemTemplate>
																									
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# DataBinder.Eval(Container.DataItem, "Faktor") %>' 
																													ID="_lblFaktor"/>
																								
																								</ItemTemplate>
																								
																							</asp:TemplateColumn >
																							
																							<asp:ButtonColumn	ItemStyle-HorizontalAlign="Right"
																												CommandName="select" 
																												visible="false" 
																												Text="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>">
																							
																							</asp:ButtonColumn> 
																							
																							<asp:EditCommandColumn  runat="server" 
																													UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
																													CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
																													
																									<itemstyle HorizontalAlign="center" />
																									
																							</asp:EditCommandColumn>
																							
																							<asp:TemplateColumn visible="false" >
																								
																								<ItemTemplate>
																									
																									<asp:ImageButton	Runat="server"
																														ID="__ibtnDelete"
																														CausesValidation=False
																														ImageUrl="/qislib/images/delete.png"
																														alt="Delete this item" 
																														CommandName="__delete" />
																									
																								</ItemTemplate>
																								
																							</asp:TemplateColumn>
																							
																						</Columns>
																								
																			</asp:DataGrid>
																		
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
						</div>
					</td>
				</tr>
				<tr>
				    <td valign="bottom" style="padding-left: 20px">
				        <!-- BEGIN PAGE FOOTER-->
			            <MODULE:COPYRIGHT id="mdlCopyRight" runat="server" PathPrefix=".."></MODULE:COPYRIGHT>
			            <!-- END PAGE FOOTER-->	
				    </td>
				</tr>
			</table>
			
			<script src='/qislib/scripts/common/common.js' language="javascript"></script> 
		</form>
		
	</body>
	
</html>
