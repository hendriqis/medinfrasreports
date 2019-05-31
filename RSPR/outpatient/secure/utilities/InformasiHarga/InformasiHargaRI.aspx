
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../incl/Toolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../incl/bannerModule.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="InformasiHargaRI.aspx.vb" Inherits="QIS.Web.InformasiHargaRI" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Informasi Harga Rawat Inap</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/fm_/fm___000001.css' type="text/css" rel="Stylesheet">
		<script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
		<script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
	</HEAD>
	<body>
		<form id="frmInformasiHarga" runat="server">
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
											<TD class="rheadercol" align="left" height="25">INFORMASI HARGA RAWAT INAP
											</TD>
										</TR>
										<TR class="rbody">
											<TD class="rbodycol" align="left" height="25">
												<P>Halaman ini untuk melihat Informasi Harga Rawat Inap.<br />
												</P>
											</TD>
										</TR>
										<TR class="rheader">
											<TD class="rheadercol" align="left" height="2">
											</TD> <!-- SPACER ROW -->
										</TR>
									</TABLE>
									<TABLE width="100%">
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
										<TR style="display:none">
											<TD align="right">
												<asp:Button		id="btnCountHpr"
																runat="server"
																Text="CountHpr" />
											</TD>
										</TR>				
										<TR>
											<TD width="100%" height="100%">
												
												<DIV style="OVERFLOW: auto; WIDTH: 100%">
													
													<TABLE width="100%" bordercolor="Gainsboro" bgcolor="#DEE3E7" >
														<TR>
															<TD Width="5%"><B>Kode</B>
															</TD>
															<TD Width="10%"><B>Nama</B>
															</TD>
															<TD Width="9%"><B>Satuan</B>
															</TD>
															<TD Width="7%" align="right"><B>HNA + PPn</B>
															</TD>
															<TD Width="8%" align="right"><B>SUPER VIP</B>
															</TD>
															<TD Width="9%" align="center"><B>VIP</B>
															</TD>
															<TD Width="8%" align="right"><B>VIP-STD</B>
															</TD>
															<TD Width="8%" align="right"><B>I</B>
															</TD>
															<TD Width="8%" align="right"><B>II</B>
															</TD>
															<TD Width="10%" align="right"><B>II NON AC</B>
															</TD>
															<TD Width="7%" align="right"><B>III</B>
															</TD>
															<TD Width="9%" align="right"><B>NON KELAS</B>
															</TD>
															<TD Width="2%">&nbsp; 
															</TD>
														</TR>
													</TABLE>
													
													
												</DIV>
												
												<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400px">
													<asp:DataGrid	id="gridInformasiHarga" 
																	runat="server" 
																	Width="100%" 
																	BorderWidth="1px" 
																	GridLines="None" 
																	PageSize="20" 
																	ShowFooter="True" 
																	ShowHeader="False" 
																	CellPadding="2" 
																	BorderColor="Gainsboro" 
																	AutoGenerateColumns="False">
														<SelectedItemStyle ForeColor="GhostWhite" BackColor="CornflowerBlue"></SelectedItemStyle>
														<EditItemStyle Font-Bold="True"></EditItemStyle>
														<AlternatingItemStyle BackColor="WhiteSmoke"></AlternatingItemStyle>
														<ItemStyle Font-Size="8pt"></ItemStyle>
														<HeaderStyle Font-Bold="True" Height="20px" BackColor="#DEE3E7"></HeaderStyle>
														<FooterStyle BackColor="#DEE3E7"></FooterStyle>
														<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="#ffd27a"></PagerStyle>
													
															<Columns>
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="Kode" 
																				ItemStyle-HorizontalAlign="Left" 
																				HeaderStyle-HorizontalAlign="Left" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:0;margin-right:5" 
																				Text='<%# DataBinder.Eval(Container.DataItem, "Kode") %>' 
																				ID="_lblKdBarang"/>
																
																</itemtemplate>
															</asp:TemplateColumn>
																																				
															<asp:TemplateColumn runat="server" 
																				HeaderText="Nama" 
																				ItemStyle-HorizontalAlign="Left" 
																				HeaderStyle-HorizontalAlign="Left" 
																				HeaderStyle-Width="21%" 
																				ItemStyle-Width="21%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:0;margin-right:2" 
																				Text='<%# DataBinder.Eval(Container.DataItem, "Nama") %>' 
																				ID="_lblNamaBarang"/>
																
																</itemtemplate>
															</asp:TemplateColumn>					
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="Satuan" 
																				ItemStyle-HorizontalAlign="Left" 
																				HeaderStyle-HorizontalAlign="Left" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:0;margin-right:5" 
																				Text='<%# DataBinder.Eval(Container.DataItem, "Satuan") %>' 
																				ID="_lblSatuan"/>
																
																</itemtemplate>
															</asp:TemplateColumn>	
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="HNA + PPn" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "HNA+PPN"),"#,##0.00") %>' 
																				ID="_lblHnaPpn"/>
																
																</itemtemplate>
															</asp:TemplateColumn>	
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="SUPER VIP" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "SUPER VIP"),"#,##0.00") %>' 
																				ID="_lblSuperVIP"/>
																
																</itemtemplate>
															</asp:TemplateColumn>			
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="VIP" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "VIP"),"#,##0.00") %>' 
																				ID="_lblVIP"/>
																
																</itemtemplate>
															</asp:TemplateColumn>	
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="VIP-STD" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "VIP-STD"),"#,##0.00") %>' 
																				ID="_lblVIPSTD"/>
																
																</itemtemplate>
															</asp:TemplateColumn>		
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="I" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "I"),"#,##0.00") %>' 
																				ID="_lblI"/>
																
																</itemtemplate>
															</asp:TemplateColumn>	
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="II" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "II"),"#,##0.00") %>' 
																				ID="_lblII"/>
																
																</itemtemplate>
															</asp:TemplateColumn>	
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="II NON AC" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "II  NON AC"),"#,##0.00") %>' 
																				ID="_lblIINonAC"/>
																
																</itemtemplate>
															</asp:TemplateColumn>	
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="III" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "III"),"#,##0.00") %>' 
																				ID="_lblIII"/>
																
																</itemtemplate>
															</asp:TemplateColumn>		
															
															<asp:TemplateColumn runat="server" 
																				HeaderText="NON KELAS" 
																				ItemStyle-HorizontalAlign="Right" 
																				HeaderStyle-HorizontalAlign="Right" 
																				HeaderStyle-Width="7%" 
																				ItemStyle-Width="7%" 
																				Visible="True">
																<itemtemplate>
																
																	<asp:label	runat="server"	
																				style="margin-left:5;margin-right:5" 
																				Text='<%# Format(DataBinder.Eval(Container.DataItem, "NON KELAS"),"#,##0.00") %>' 
																				ID="_lblNonKelas"/>
																
																</itemtemplate>
															</asp:TemplateColumn>																																							
														</Columns>
													</asp:DataGrid>
												</DIV>
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
		<script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>
	</body>
</HTML>


