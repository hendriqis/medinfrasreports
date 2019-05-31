<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Default.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanResep.PenjualanObatRI.NotaResep" %>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../../../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Penjualan Resep Rawat Inap</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta http-equiv="refresh" content="600">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
		<script language=javascript src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>
		<script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>
		<!--
	<div id=loadingmsg style="position:absolute; z-index:3; left:240; top:200; width:200; height:60; 
			  border-width:1; border-style:ridge; background-color:#eeeeee">
			<center>
				<br /><br /><img src="/qislib/images/cursor_hourglas.gif"><font face='Verdana' Size=1><b>Loading, Please wait ...</b></font><br /><br />
			</center>
	</div>
	-->
	</HEAD>
	<body onload="ffocus()">
		<form id="frmResepRiSelReg" runat="server">
			<!-- BEGIN PAGE HEADER --><MODULE:HEADER id="BannerModule" runat="server"></MODULE:HEADER>
			<!-- END PAGE HEADER -->
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<TBODY>
					<tr>
						<td vAlign="top" width="100%">
							<table cellSpacing="10" cellPadding="0" width="100%" border="0">
								<tr>
									<td style="PADDING-TOP: 5px" align="left">
										<!-- Panel 2 --><asp:panel id="pnl_2" runat="server">
											<TABLE cellSpacing="0" cellPadding="5" width="100%">
												<TR class="rheader">
													<TD class="rheadercol" align="left" height="25">PENJUALAN OBAT RAWAT INAP
													</TD>
												</TR>
												<TR class="rbody">
													<TD class="rbodycol" align="left" height="25">
														<P>Halaman ini untuk memilih Nomor Bukti Pasien Rawat Inap.<br />
														</P>
													</TD>
												</TR>
												<TR class="rheader">
													<TD class="rheadercol" align="left" height="2"></TD>
												</TR>
												<TR class="rbody">
													<TD class="rbodycol" align="center" height="25">
														<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0"> <!-- PAGE CONTENT BEGIN HERE -->
															<TR>
																<TD width="100%">
																	<TABLE width="100%">
																		<TR>
																			<TD align="left" width="20%">Tanggal
																			</TD>
																			<TD>
																				<MODULE:webcal id="calTanggal" runat="server"></MODULE:webcal>
																				<asp:LinkButton id="lbtnRefresh2" runat="server" CausesValidation="False" text="Refresh ..." witdh="20%"></asp:LinkButton></TD>
																		</TR>
																		<TR>
																			<TD width="20%">Jenis Kunjungan
																			</TD>
																			<TD>
																				<asp:RadioButton id="rbRI" runat="server" ToolTip="Jenis Kunjungan Rawat Inap" GroupName="JenisKunjungan"
																					Text="Rawat Inap" AutoPostBack="True" Checked="True"></asp:RadioButton>&nbsp;
																				<asp:RadioButton id="rbRJ" runat="server" ToolTip="Jenis Kunjungan Rawat Jalan" GroupName="JenisKunjungan"
																					Text="Rawat Jalan" AutoPostBack="True"></asp:RadioButton>&nbsp;
																				<asp:RadioButton id="rbRD" runat="server" ToolTip="Jenis Kunjungan Rawat Darurat" GroupName="JenisKunjungan"
																					Text="Rawat Darurat" AutoPostBack="True"></asp:RadioButton>&nbsp;
																				<asp:RadioButton id="rbRB" runat="server" ToolTip="Resep Bebas" GroupName="JenisKunjungan" Text="Resep Bebas"
																					AutoPostBack="True"></asp:RadioButton></TD>
																		</TR>
																		<TR style="display:none">
																			<TD width="20%">No. Bukti
																			</TD>
																			<TD>
																				<asp:TextBox id="txtNoBukti" Runat="server" MaxLength="15" width="22%"></asp:TextBox>
																				<asp:Button class="sbttn" id="btnNoBukti" text="Go..." Runat="server"></asp:Button></TD>
																		</TR>
																	</TABLE>
																</TD>
															</TR>
															<TR>
																<TD width="100%">
																	<TABLE width="100%">
																		<TR>
																			<TD align="right" width="100%">
																				<asp:Label id="lblTotalNoBukti" runat="server"></asp:Label>
																				<asp:TextBox id="txtTotalNoBukti" runat="server" width="5%" BackColor="WhiteSmoke" readonly="true"></asp:TextBox></TD>
																		</TR>
																	</TABLE>
																</TD>
															</TR>
															<TR>
																<asp:Panel id="pnlPasienRI2" runat="server">
																	<TD width="100%">
																		<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 450px">
																			<TABLE width="100%">
																				<TR>
																					<TD>
																						<asp:DataGrid id="gridPasienRI3" runat="server" Width="100%" Height="100%" CellPadding="0" ShowFooter="False"
																							DataKeyField="" PageSize="20" AllowPaging="False" GridLines="none" BorderWidth="1" BorderColor="Gainsboro"
																							CellSpacing="0" AutoGenerateColumns="False" AllowSorting="True">
																							<HeaderStyle Font-Bold="True" BackColor="#DEE3E7" Height="20" />
																							<ItemStyle Font-Size="8pt" />
																							<EditItemStyle Font-Bold="true" />
																							<Columns>																																																
																								<asp:TemplateColumn SortExpression="NoResep" runat="server" HeaderText="No. Resep" HeaderStyle-HorizontalAlign="Left"
																									ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "NoResep") %>' ID="_lblNoResep"/>
																									</itemtemplate>
																								</asp:TemplateColumn>
																								<asp:TemplateColumn SortExpression="nmpasien" runat="server" HeaderText="Nama Pasien" HeaderStyle-HorizontalAlign="Left"
																									ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "nmpasien") %>' ID="_lblNama"/>
																									</itemtemplate>
																								</asp:TemplateColumn>
																								<asp:TemplateColumn SortExpression="noreg" runat="server" HeaderText="No. Registrasi" HeaderStyle-HorizontalAlign="Left"
																									ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "noreg") %>' ID="_lblNomorRegister"/>
																									</itemtemplate>
																								</asp:TemplateColumn>
																								<asp:TemplateColumn SortExpression="norm" runat="server" HeaderText="No. RM" HeaderStyle-HorizontalAlign="Left"
																									ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "norm") %>' ID="_lblNomorRawatMedis"/>
																									</itemtemplate>
																								</asp:TemplateColumn>
																								<asp:TemplateColumn SortExpression="nmunit" runat="server" HeaderText="Unit" HeaderStyle-HorizontalAlign="Left"
																									ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "nmunit") %>' ID="_lblRuang"/>
																									</itemtemplate>
																								</asp:TemplateColumn>
																								<asp:TemplateColumn SortExpression="nott" runat="server" HeaderText="Nomor Tempat Tidur" HeaderStyle-HorizontalAlign="Left"
																									ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "nott") %>' ID="_lblNomorTempatTidur"/>
																									</itemtemplate>
																								</asp:TemplateColumn>
																								<asp:TemplateColumn SortExpression="TipeJenisResep" runat="server" HeaderText="Tipe Resep" HeaderStyle-HorizontalAlign="Left"
																									ItemStyle-HorizontalAlign="Left">
																									<itemtemplate>
																										<asp:label runat="server" style="margin-left:0;margin-right:5" Text='<%# DataBinder.Eval(Container.DataItem, "TipeJenisResep") %>' ID="_lblTipeJenisResep"/>
																									</itemtemplate>
																								</asp:TemplateColumn>
																								<asp:TemplateColumn>
																									<ItemTemplate>
																										<asp:ImageButton Runat="server" ID="__ibtnPrint" CausesValidation="False" ImageUrl="/qislib/images/common/print_Ind.gif"
																											alt="Cetak Nota Resep" ItemStyle-HorizontalAlign="Right" CommandName="__print" />
																									</ItemTemplate>
																								</asp:TemplateColumn>
																							</Columns>
																						</asp:DataGrid></TD>
																				</TR>
																			</TABLE>
																		</DIV>
																	</TD>
																</asp:Panel></TR> <!-- PAGE CONTENT END HERE --></TABLE>
													</TD>
												</TR>
											</TABLE>
										</asp:panel></td>
								</tr>
							</table>
		</form>
		<script language="javascript" src="/qislib/scripts/common/util.js"></script>
		<script language="javascript">
function ffocus()
	{
	try
		{
		document.getElementById('txtNoReg').focus()
		}
	catch(e)
		{
		}
	}
		</script>
		</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></FORM>
	</body>
</HTML>
