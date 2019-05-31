<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../incl/Toolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Header" Src="../../incl/bannerModule.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="InformasiHarga.aspx.vb" Inherits="QIS.Web.InformasiHarga"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>QIS .Net Hospital Information System - Informasi Harga</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
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
											<TD class="rheadercol" align="left" height="25">INFORMASI HARGA
											</TD>
										</TR>
										<TR class="rbody">
											<TD class="rbodycol" align="left" height="25">
												<P>Halaman ini untuk melihat Informasi Harga.<br />
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
												<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT:500px">
													<asp:DataGrid	id="gridInformasiHarga" 
																	runat="server" 
																	Width="100%" 
																	BorderWidth="1px" 
																	GridLines="None" 
																	PageSize="20" 
																	ShowFooter="True" 
																	CellPadding="2" 
																	BorderColor="Gainsboro" 
																	AutoGenerateColumns="True">
														<SelectedItemStyle ForeColor="GhostWhite" BackColor="CornflowerBlue"></SelectedItemStyle>
														<EditItemStyle Font-Bold="True"></EditItemStyle>
														<AlternatingItemStyle BackColor="WhiteSmoke"></AlternatingItemStyle>
														<ItemStyle Font-Size="8pt"></ItemStyle>
														<HeaderStyle Font-Bold="True" Height="20px" BackColor="#DEE3E7"></HeaderStyle>
														<FooterStyle BackColor="#DEE3E7"></FooterStyle>
														<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="#ffd27a"></PagerStyle>
													
														
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
		<SCRIPT LANGUAGE=javascript SRC="/qislib/scripts/common/common.js"></SCRIPT>
	</body>
</HTML>
