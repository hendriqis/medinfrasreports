<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../../incl/Toolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../../incl/bannerModule.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Default.aspx.vb" Inherits="QIS.Web.secure.utilities.SettingVariable" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Setting Variabel</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
		<script src='/qislib/scripts/FM_/fm___Dlg_Rs-v2.js' language="javascript"></script>
		<LINK href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
	</HEAD>
	<body>
		<form id="frmBaru" runat="server">
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
											<TD class="rheadercol" align="left" height="25">SETTING VARIABEL
											</TD>
										</TR>
										<TR class="rbody">
											<TD class="rbodycol" align="left" height="25">
												<P>Halaman ini untuk melihat dan mengubah Setting Variabel.<br />
												</P>
											</TD>
										</TR>
										
										<TR class="rheader">
											<TD class="rheadercol" align="left" height="2">
											</TD>
										<TR class="rbody">
											<TD class="rbodycol" align="center" height="25">
												<TABLE width="100%">
													<!-- PAGE CONTENT BEGIN HERE -->
													<TR>
														<TD>
															<TABLE width="100%">
																<tr>
																	<td width="100%" height="100%">
																		
																		<asp:DataGrid	id="gridSetVar" 
																						runat="server" 
																						AutoGenerateColumns="False" 
																						CellSpacing="0" 
																						BorderColor=Gainsboro 
																						BorderWidth="1" 
																						GridLines= "Horizontal" 
																						Height="100%"
																						Width="100%"
																						DataKeyField="kode"
																						ShowFooter=True
																						CellPadding="0" 
																						OnItemDataBound="gridSetVar_OnItemDataBound"
																						OnEditCommand="gridSetVar_OnEditCommand"
																						OnUpdateCommand="gridSetVar_OnUpdateCommand"
																						OnCancelCommand="gridSetVar_OnCancelCommand">
																							
																				<HeaderStyle Font-Bold="True" BackColor=#DEE3E7  Height=20 />
																				<ItemStyle Font-Size="8pt" />
																				<SelectedItemStyle BackColor=CornflowerBlue />																						
																				<AlternatingItemStyle BackColor=WhiteSmoke  />
																				<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																				<EditItemStyle Font-Bold="true" />
																				
																				<Columns>
																					<asp:TemplateColumn runat="server" HeaderText="APP">
																						
																						<itemtemplate>
																						
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# DataBinder.Eval(Container.DataItem, "APP") %>' 
																													ID="_lblApp"/>
																							
																						</itemtemplate>
																						
																					</asp:TemplateColumn >
																					
																					<asp:TemplateColumn runat="server" HeaderText="Kode">
																						
																						<itemtemplate>
																						
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# DataBinder.Eval(Container.DataItem, "kode") %>' 
																													ID="_lblKode"/>
																							
																						</itemtemplate>
																						
																					</asp:TemplateColumn >
																					
																					<asp:TemplateColumn runat="server" HeaderText="Deskripsi">
																						
																						<itemtemplate>
																						
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# DataBinder.Eval(Container.DataItem, "nama") %>' 
																													ID="_lblNama"/>
																							
																						</itemtemplate>
																						
																					</asp:TemplateColumn >
																					
																					<asp:TemplateColumn  runat="server" HeaderText="Value" HeaderStyle-HorizontalAlign=Left>
																						
																						<ItemTemplate>
																							
																							<asp:label		runat="server" 
																											style="margin-left:5;margin-right:5"
																											Text='<%# DataBinder.Eval(Container.DataItem, "nilai") %>' 
																											ID="_lblNilai"/>
																						
																						</ItemTemplate>
																						
																						<EditItemTemplate>
																						
																							<asp:textbox	runat="server" 
																											id="__txtNilai" 
																											tabindex="0"
																											BorderWidth="1"
																											BorderColor=DarkGray
																											Width="100%"
																											Text='<%# DataBinder.Eval(Container.DataItem, "nilai") %>' />
																						
																						</EditItemTemplate>
																						
																					</asp:TemplateColumn >
																					
																					<asp:TemplateColumn runat="server" HeaderText="Keterangan">
																						
																						<itemtemplate>
																						
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# DataBinder.Eval(Container.DataItem, "ket") %>' 
																													ID="_lblKeterangan"/>
																							
																						</itemtemplate>
																						
																					</asp:TemplateColumn >
																					
																					<asp:EditCommandColumn  runat="server" 
																											EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>" 
																											UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
																											CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
																											
																							<itemstyle HorizontalAlign="center" />
																							
																					</asp:EditCommandColumn>
																					
																				</Columns>
																						
																			</asp:DataGrid>
																	
																	</td>
																</tr>
															</TABLE>
															
														</TD>
													</TR>
													<!-- PAGE CONTENT END HERE -->
												</TABLE>
											</TD>
										</TR>
									</TABLE>
									
								</td>
							</tr>
						</table>
						
						<!-- VALIDATION SUMMARY BEGIN HERE -->
						<TABLE cellSpacing="0" cellPadding="5" width="100%">
							<TR>
								<TD align="left">
									<P>
										<asp:ValidationSummary id="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
									</P>
								</TD>
							</TR>
						</TABLE>
						<!-- VALIDATION SUMMARY END HERE -->
					</td>
				</tr>
			</table>
		</form>
		<script src='/qislib/scripts/common/common.js' language="javascript"></script>
		<script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>
	</body>
</HTML>
