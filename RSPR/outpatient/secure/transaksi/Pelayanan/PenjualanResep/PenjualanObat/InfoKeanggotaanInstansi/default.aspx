<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="default.aspx.vb" Inherits="QIS.Web.secure.master.AnggotaInstansi" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Anggota Instansi</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
		<script language="javascript" src="/qislib/scripts/RS_/rs___Dlg_rs-v2.js"></script>
		<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
		<script language=javascript src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>
	</HEAD>
	<body>
		<form id="frmAnggotaInstansi" runat="server">

			<table cellSpacing="10" cellPadding="0" width="100%" border="0">
				<tr>
					<td align="left">
						<TABLE cellSpacing="0" cellPadding="5" width="100%">
							<TBODY>
								<TR class="rheader">
									<TD class="rheadercol" align="left" height="25">ANGGOTA INSTANSI
									</TD>
								</TR>
								<TR class="rbody">
									<TD class="rbodycol" align="left" height="25">
										<P>Halaman ini untuk melihat data anggota instansi.<br />
										</P>
									</TD>
								</TR>
								<TR class="rheader">
									<TD class="rheadercol" align="left" height="2"></TD>
								</TR>
								<TR class="rbody">
									<TD class="rbodycol" align="left" width="100%">
										<table width="100%">
											<tr>
												<td width="12%"><asp:linkbutton id="lbtnkdinstansi" runat="server">Kode Instansi</asp:linkbutton></td>
												<TD width="11%"><ew:maskedtextbox id="txtkdinstansi" runat="server" autopostback="true"></ew:maskedtextbox></TD>
												<td align="left"><asp:label id="lblnminstansi" Runat="server"></asp:label></td>
											</tr>
										</table>
										<table style="WIDTH: 100%" border="1">
											<TR class="rbody">
												<TD class="rbodycol" align="left" width="50%">
													<table width="100%">
														<TR>
															<TD width="20%"><asp:linkbutton id="lbtnNoAnggotaInstansi" runat="server">No. Anggota Instansi</asp:linkbutton></TD>
															<TD width="22%"><ew:maskedtextbox id="txtNoAnggotaInstansi" runat="server" autopostback="true"></ew:maskedtextbox></TD>
															<td>&nbsp;</td>
														</TR>
														<TR>
															<TD width="20%">No. Membership</TD>
															<TD width="22%"><asp:textbox id="txtNoMembership" runat="server"></asp:textbox></TD>
															<td>&nbsp;<asp:CheckBox	id="chkAktif" 
																					Runat="server" 
																					Text="Aktif"></asp:CheckBox></td>
														</TR>
														<TR>
															<TD width="20%">Nama Anggota</TD>
															<TD width="22%"><asp:textbox id="txtNamaAnggota" runat="server"></asp:textbox></TD>
															<td>&nbsp;</td>
														</TR>
														<tr style="display:'none'">
															<td width="20%"><asp:linkbutton id="lbtnnorm" runat="server">Nomor Rekam Medis</asp:linkbutton></td>
															<TD width="22%"><ew:maskedtextbox id="txtnorm" runat="server" autopostback="true"></ew:maskedtextbox></TD>
															<td align="left"><asp:Label ID="lblnmpasien" Runat="server" />
															</td>
														</tr>
														<TR>
															<TD width="20%">Berlaku Sampai</TD>
															<TD width="22%"><asp:textbox id="txtTglBerlaku" runat="server" /></asp:textbox></TD>
															<td>&nbsp;</td>
														</TR>
														<TR>
															<TD width="20%"><asp:linkbutton id="lbtnNoAnggotaParent" runat="server"  enabled="false">No. Anggota Parent</asp:linkbutton></TD>
															<TD width="22%"><ew:maskedtextbox id="txtNoAnggotaParent" runat="server" AutoPostBack="True"></ew:maskedtextbox></TD>
															<td align="left"><asp:Label ID="lblnmAnggotaparent" Runat="server" /></td>
														</TR>
														<TR>
															<TD width="20%">Status Hubungan</TD>
															<TD colspan="2"><asp:dropdownlist id="ddlStatusHubungan" Runat="server" Width="300"></asp:dropdownlist></TD>
														</TR>
														<TR>
															<TD valign="top" width="30%">Keterangan</TD>
															<TD colspan="2"><asp:textbox id="txtKeterangan" runat="server" Width="300" Height="100" TextMode="MultiLine"></asp:textbox></TD>
														</TR>
													</table>
												</TD>
												<TD class="rbodycol" vAlign="top" align="left">
													<table width="100%">
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="2"></TD>
														</TR>
														<TR class="rheader">
															<TD class="rheadercol" align="center">List Anggota Terkait</TD>
														</TR>
														<TR class="rheader">
															<TD class="rheadercol" align="left" height="2"></TD>
														</TR>
														<tr>
															<td>
																<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 100%"><asp:datagrid id="grdAnggotaInstansiTerkait" runat="server" Width="100%" Height="100%" CellPadding="0"
																		ShowFooter="True" AllowPaging="false" GridLines="none" BorderWidth="1" BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False">
																		<HeaderStyle Font-Bold="True" CssClass="rheadercol" BackColor="#DEE3E7" Height="20" />
																		<ItemStyle Font-Size="8pt" />
																		<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																		<EditItemStyle Font-Bold="true" />
																		<Columns>
																			<asp:TemplateColumn runat="server" HeaderText="No. Ang Inst" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
																				<ItemTemplate>
																					<%# DataBinder.Eval(Container.DataItem, "NoAnggotaInst")  %>
																				</ItemTemplate>
																			</asp:TemplateColumn>
																			<asp:TemplateColumn runat="server" HeaderText="No. Membership" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
																				<ItemTemplate>
																					<%# DataBinder.Eval(Container.DataItem, "NoMembership")  %>
																				</ItemTemplate>
																			</asp:TemplateColumn>
																			<asp:TemplateColumn runat="server" HeaderText="Nama" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px">
																				<ItemTemplate>
																					<%# DataBinder.Eval(Container.DataItem, "Nama") %>
																				</ItemTemplate>
																			</asp:TemplateColumn>
																			<asp:TemplateColumn runat="server" HeaderText="Status Hub." HeaderStyle-HorizontalAlign="Center">
																				<ItemTemplate>
																					<%# DataBinder.Eval(Container.DataItem, "StatusHubungan") %>
																				</ItemTemplate>
																			</asp:TemplateColumn>
																			<asp:TemplateColumn runat="server" HeaderText="Keterangan" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
																				<ItemTemplate>
																					<%# DataBinder.Eval(Container.DataItem, "Keterangan") %>
																				</ItemTemplate>
																			</asp:TemplateColumn>
																		</Columns>
																	</asp:datagrid></DIV>
															</td>
														</tr>
													</table>
												</TD>
											</TR>
										</table>
										<table width="100%">
											<tr>
												<td>
													<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 100%"><asp:datagrid id="grdAnggotaInstansi" runat="server" Width="100%" Height="100%" CellPadding="0"
															ShowFooter="True" AllowPaging="false" GridLines="none" BorderWidth="1" BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False">
															<HeaderStyle Font-Bold="True" CssClass="rheadercol" BackColor="#DEE3E7" Height="20" />
															<ItemStyle Font-Size="8pt" />
															<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
															<EditItemStyle Font-Bold="true" />
															<Columns>
																<asp:TemplateColumn 
																						runat="server" 
																						HeaderText="No. Anggota" 
																						ItemStyle-HorizontalAlign="Center"
																						HeaderStyle-HorizontalAlign="Center"
																						HeaderStyle-Width="10%">
																<ItemTemplate>
																	<asp:linkbutton 
																	id="lbtnNoAnggotaInstansi" 
																	runat="server"
																	alt="Select this item" 
																	CommandName="__select" text='<%# DataBinder.Eval(Container.DataItem, "NoAnggotaInst") %>'>
																	</asp:linkbutton>
																					
																</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn 
																							runat="server" 
																							HeaderText="No. Membership" 
																							ItemStyle-HorizontalAlign="Center"
																							HeaderStyle-HorizontalAlign="Center"
																							HeaderStyle-Width="20%">
																	<ItemTemplate>
																		<%# DataBinder.Eval(Container.DataItem, "NoMembership")  %>
																	</ItemTemplate>
																</asp:TemplateColumn>

																<asp:TemplateColumn 
																							runat="server" 
																							HeaderText="Nama" 
																							HeaderStyle-HorizontalAlign="Center" 
																							HeaderStyle-Width="20%">
																	<ItemTemplate>
																		<%# DataBinder.Eval(Container.DataItem, "Nama") %>
																	</ItemTemplate>
																</asp:TemplateColumn>
																
																<asp:TemplateColumn 
																										runat="server" 
																										HeaderText="Tgl Expired" 
																										HeaderStyle-HorizontalAlign="Center" 
																										ItemStyle-HorizontalAlign="Center"
																										HeaderStyle-Width="10%">
																	<ItemTemplate>
																		<%# DataBinder.Eval(Container.DataItem, "tglExpired") %>
																	</ItemTemplate>
																</asp:TemplateColumn>
																<asp:TemplateColumn 
																									runat="server" 
																									HeaderText="Aktif" 
																									HeaderStyle-HorizontalAlign="Center" 
																									ItemStyle-HorizontalAlign="Center"
																									HeaderStyle-Width="5%">
																<ItemTemplate>
																	<%# iif(cbool(DataBinder.Eval(Container.DataItem, "aktif")),"Ya","Tidak") %>
																</ItemTemplate>
															</asp:TemplateColumn>
															<asp:TemplateColumn 
																						runat="server" 
																						HeaderText="Keterangan" 
																						ItemStyle-HorizontalAlign="Center" 
																						HeaderStyle-HorizontalAlign="Center"
																						HeaderStyle-Width="40%">
																<ItemTemplate>
																	<%# DataBinder.Eval(Container.DataItem, "Keterangan") %>
																</ItemTemplate>
															</asp:TemplateColumn>
															</Columns>
														</asp:datagrid></DIV>
												</td>
											</tr>
										</table>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</td>
				</tr>
			</table>
			<script language="javascript" src="/qislib/scripts/common/common.js"></script>
			<script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>
		</form>
	</body>
</HTML>
