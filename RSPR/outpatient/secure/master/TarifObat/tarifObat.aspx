<%@ Page Language="vb" AutoEventWireup="false" Codebehind="tarifObat.aspx.vb" Inherits="QIS.Web.secure.master.TarifObat.tarifObat"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
  <head>
    <title>Master Tarif: Pemakaian Obat</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script> 
	<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script> 
	<script language="javascript">
			function center()
			{
				var x=(screen.availWidth-800)/2;
				var y=(screen.availHeight-600)/2;				
				self.resizeTo(800,600);
				self.moveTo(x,y);    
			}

			if (document.all)
			{           
				document.onkeydown = function ()
				{
					var key_f5 = 116; // 116 = F5          
					if (key_f5==event.keyCode)
					{
						event.keyCode=0;
						return false;
						// alert ("To refresh this page, please click open or save button.");
					}
					else
					{
						return true;
					}
			         
				}
			}

			function dlgDeleteRecordInGrid()
			{
				if (!confirm('Anda yakin hapus data ini ?')) return false;
				return true
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

			<form id="frmTarifObat" runat="server">
					
					<table cellSpacing="5" cellPadding="0" width="100%" border="0">
							
							<tr>
								<td style="PADDING-TOP: 5px" align="left">
								
									<TABLE cellSpacing="0" cellPadding="5" width="100%">
										<TR class="rheader">
											<TD class="rheadercol" align="left" height="25">TARIF:Master Pemakaian Obat
											</TD>
										</TR>
														
										<TR class="rbody">
											<TD class="rbodycol" align="left" height="25">
												<P>Halaman ini untuk mengubah, menambah, atau menghapus data pemakaian obat per-Tarif Pelayanan.<br />
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
																		Kode Layanan:
																	</td>
																	<td>
																		<asp:Label Runat="server" ID="lblKodeLayan" />
																	</td>
																</tr>
																<tr>
																	<td width="20%">
																		Nama Pelayanan:
																	</td>
																	<td>
																		<asp:Label Runat="server" ID="lblNamaPelayanan" />
																	</td>
																</tr>
															</table>				
																
															<table width="100%">
																
																<TR class="rheader">
																	<TD class="rheadercol" align="left" height="25">Edit/Tambah Data Master Pemakaian Obat Per Pelayanan</TD>
																</TR>																																						
																				
																<TR class="rheader">
																	<TD class="rheadercol" align="left" height="2"></TD>
																</TR>	
																
																<TR>
																	<TD align="right">
																		<asp:DataList		id="listSearch" 
																							runat="server" 
																							RepeatDirection="Horizontal" 
																							OnItemCommand="HandleItemSearchCommand">
																			
																			<ItemTemplate>
																				<asp:LinkButton ID="linkSearch" 
																								CausesValidation=False 
																								Runat=server 
																								CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
																								text='<%# DataBinder.Eval(Container.DataItem, "list") %>'/>&nbsp;&nbsp;&nbsp;
																				</asp:LinkButton>
																			</ItemTemplate>
																		</asp:DataList>
																	</TD>
																</TR>																												
											
																<tr>
																	<td width="100%">
																								
																		<asp:Panel id="pnlHeader" runat="server">
																		
																			<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 365">
																			
																			<table width="100%">
																				
																				<tr>
																					<td width="100%">
																																							
																						<!-- BEGIN ADDNEW ROP -->
																						<asp:Panel ID="panelROPAddNewRow" Runat="server">
																								
																								<TABLE cellSpacing="0" cellPadding="5" width="100%" class=rBodyAddNew bordercolordark=#98AAB1 >																																										
																									
																									<tr>
																										<td>
																											
																											<TABLE width="100%" border=1 cellpadding=1 cellspacing=1 bgcolor=#98AAB1 >
																												
																												<tr>
																													<TD width="20%" class=rBodyAddNewFld>
																														<asp:LinkButton visible="false" id="lbtnKodeBarang" CausesValidation="False" text="Kode Item" Runat="server" />
																														<B>Kode Item:</B>
																													</TD>
																													<TD width="40%" class=rBodyAddNewFld>
																														<asp:TextBox	id="ROP_AddNewRow_txtKodeBarang" 
																																		runat="server" 
																																		MaxLength="10" 
																																		AutoPostBack="True"
																																		width="100%" />
																													</TD>
																													<td class=rBodyAddNewFld>
																														<asp:RequiredFieldValidator id="rfvROP_AddNewRow_txtKodeBarang" 
																																					runat="server" 
																																					controlToValidate="ROP_AddNewRow_txtKodeBarang" 
																																					errormessage="Kode Item" 
																																					display="dynamic" >**</asp:RequiredFieldValidator>
																													</td>
																												</tr>
																												
																												<tr>
																													<TD width="20%" class=rBodyAddNewFld>
																														<b>Nama Item</b>
																													</TD>
																													<TD width="40%" class=rBodyAddNewFld>
																														<asp:TextBox	id="ROP_AddNewRow_txtNamaBarang" 
																																		runat="server" 
																																		MaxLength="25" 
																																		ReadOnly="True"
																																		BackColor="Transparent"
																																		BorderStyle="None"
																																		width="100%" />
																													</TD>
																													<td class=rBodyAddNewFld>
																														<asp:RequiredFieldValidator id="rfvLokasi_AddNewRow_txtNamaBarang" 
																																					runat="server" 
																																					controlToValidate="ROP_AddNewRow_txtNamaBarang" 
																																					errormessage="Nama Item" 
																																					display="dynamic" >**</asp:RequiredFieldValidator>
																													</td>
																												</tr>
																												
																												<tr>
																													<TD width="20%" class=rBodyAddNewFld>
																														<b>Qty</b>
																													</TD>
																													<TD width="40%" class=rBodyAddNewFld>
																														<asp:TextBox	id="ROP_AddNewRow_txtQty" 
																																		runat="server" 
																																		text="0.00"
																																		width="100%" />
																													</TD>
																													<td class=rBodyAddNewFld>&nbsp;
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
																														<asp:Button id="ROP_btnAddNewRow" runat="server" text="Save" CssClass=sbttn></asp:Button>
																													</TD>
																													<TD>
																														<asp:Button id="ROP_btnDone" runat="server" text="Done" CausesValidation="False" CssClass=sbttn></asp:Button>
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
																		
																						<asp:DataGrid	id="gridTarifObat" 
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
																										DataKeyField="kdBarang"
																										ShowFooter=True
																										CellPadding="0">
																												
																									<HeaderStyle Font-Bold="True" BackColor=#DEE3E7  Height=20 />
																									<ItemStyle Font-Size="8pt" />
																									<AlternatingItemStyle BackColor=WhiteSmoke  />
																									<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																									<EditItemStyle Font-Bold="true" />
																									
																									<Columns>
																									
																										<asp:TemplateColumn runat="server" HeaderText="Kode Item">
																											
																											<itemtemplate>
																											
																														<asp:label		runat="server" 
																																		style="margin-left:5;margin-right:5"
																																		Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>' 
																																		ID="_lblKodeBarang"/>
																												
																											</itemtemplate>
																											
																										</asp:TemplateColumn >
																										
																										<asp:TemplateColumn runat="server" HeaderText="Nama Item">
																											
																											<itemtemplate>
																											
																														<asp:label		runat="server" 
																																		style="margin-left:5;margin-right:5"
																																		Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																																		ID="_lblNamaBarang"/>
																												
																											</itemtemplate>
																																										
																										
																										</asp:TemplateColumn >
																										
																										<asp:TemplateColumn  runat="server" HeaderText="Qty" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" >
																											
																											<ItemTemplate>
																												
																												<asp:label		runat="server" 
																																style="margin-left:5;margin-right:5"
																																Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' 
																																ID="_lblQty"/>
																											
																											</ItemTemplate>
																											
																										</asp:TemplateColumn >
																										
																										<asp:TemplateColumn  runat="server" HeaderText="Satuan" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" >
																											
																											<ItemTemplate>
																												
																												<asp:label		runat="server" 
																																style="margin-left:5;margin-right:5"
																																Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
																																ID="_lblSatuan"/>
																											
																											</ItemTemplate>
																											
																										</asp:TemplateColumn >
																										
																										
																										<asp:ButtonColumn	ItemStyle-HorizontalAlign="Right"
																															CommandName="select" 
																															Text="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>">
																										
																										</asp:ButtonColumn> 
																										
																										<asp:EditCommandColumn  runat="server" 
																																UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
																																CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
																																
																												<itemstyle HorizontalAlign="center" />
																												
																										</asp:EditCommandColumn>
																										
																										<asp:TemplateColumn>
																											
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
																			
																		</asp:Panel>
																		
																		</DIV>
																		
																	</asp:Panel>
																																																																	
																	<asp:Panel id="pnlCheckList" runat="server">
																		
																			<TABLE width="100%">
																				<TR>
																					<TD width="10%" align=right>																			
																						<asp:Button id="btnSave" 
																									runat="server" 
																									text="Save" 
																									CssClass="bttntext"></asp:Button>						
																						<asp:Button id="btnCancel" 
																									runat="server" 
																									text="Batal" 
																									causesValidation="False"
																									CssClass="bttntext"></asp:Button>
																					</TD>
																				</TR>
																			</TABLE>
																			
																			<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 340">																																

																				<!-- START DATAGRID CHECKLIST ROP -->
																																							
																				<TABLE width="100%">

																					<TR>
																						<TD width="100%" height="100%">

																							<asp:DataGrid	id="gridCheckTarifObat" 
																											runat="server" 
																											Width="100%" 
																											AutoGenerateColumns="False" 
																											CellSpacing="0" 
																											BorderColor="Gainsboro" 
																											Enableviewstate="True"
																											BorderWidth="1" 
																											GridLines="none" 
																											Height="100%" 
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
																															HeaderText="Qty" 
																															HeaderStyle-HorizontalAlign="Left" 
																															ItemStyle-HorizontalAlign="Left" >																						
																										<ItemTemplate>																							
																											<asp:TextBox	runat="server" 
																															style="margin-left:5;margin-right:5"
																															BackColor="Transparent"																												
																															Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' 
																															ID="_txtQty"/>																						
																										</ItemTemplate>																						
																									</asp:TemplateColumn >
																									
																									<asp:TemplateColumn  runat="server" HeaderText="Satuan" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" >
																											
																											<ItemTemplate>
																												
																												<asp:label		runat="server" 
																																style="margin-left:5;margin-right:5"
																																Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>' 
																																ID="_lblSatuan"/>
																											
																											</ItemTemplate>
																											
																									</asp:TemplateColumn >
																									
																									<asp:TemplateColumn runat="server" 
																														HeaderText="" 
																														ItemStyle-HorizontalAlign="Right" 
																														HeaderStyle-HorizontalAlign="Center" 
																														Visible="True">
																										<itemtemplate>
																										
																											<asp:CompareValidator	id="cvStock1" 
																																	runat="server" 
																																	ControlToValidate="_txtQty" 
																																	Operator="DataTypeCheck" 
																																	Type="Double" 
																																	ErrorMessage='<%# "Qty harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																																	Display="Dynamic">** 
																											</asp:CompareValidator>
																											
																											
																										</itemtemplate>
																									</asp:TemplateColumn>
																																																											
																								</Columns>

																							</asp:DataGrid>											
																							
																							<script src='/qislib/scripts/common/util.js' language="javascript"></script>

																						</TD>
																					</TR>

																				</TABLE> 																																																																															
																			
																			</DIV>
																			
																		</asp:Panel>															
																																				
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