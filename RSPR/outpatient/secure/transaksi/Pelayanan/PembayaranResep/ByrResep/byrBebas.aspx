<%@ Register TagPrefix="Module" TagName="Header" Src="../../../../../incl/bannerModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Toolbar" Src="../../../../../incl/Toolbar.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="byrBebas.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.PembayaranResep.byrBebas"%>

<html>
	<head>
		<title>QIS .Net Hospital Information System - Pembayaran Pelayanan Obat</title>
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
		
		<SCRIPT LANGUAGE=javascript>
		<!--
		// this function will refresh the opener window.
		function window_onunload() {
			//var theform = window.opener.document.frmResepBebas;
			//theform.__EVENTTARGET.value = 'navigationBar:commandBar';
			//theform.__EVENTARGUMENT.value = '0';
			//theform.submit();
		} 
		-->
		</SCRIPT>
		<SCRIPT LANGUAGE="JavaScript">
			function currencyFormat(fld, milSep, decSep, e) {
			var sep = 0;
			var key = '';
			var i = j = 0;
			var len = len2 = 0;
			var strCheck = '0123456789';
			var aux = aux2 = '';
			var whichCode = (window.Event) ? e.which : e.keyCode;
			if (whichCode == 13) return true;  // Enter
			key = String.fromCharCode(whichCode);  // Get key value from key code
			if (strCheck.indexOf(key) == -1) return false;  // Not a valid key
			len = fld.value.length;
			for(i = 0; i < len; i++)
			if ((fld.value.charAt(i) != '0') && (fld.value.charAt(i) != decSep)) break;
			aux = '';
			
			for(; i < len; i++)
			if (strCheck.indexOf(fld.value.charAt(i))!=-1) aux += fld.value.charAt(i);
			aux += key;
			len = aux.length;
			//if (len == 0) fld.value = '';
			//if (len == 1) fld.value = '0'+ decSep + '0' + aux;
			//if (len == 2) fld.value = '0'+ decSep + aux;
			//if (len > 2) {
			aux2 = '';
			//for (j = 0, i = len - 3; i >= 0; i--) {
			for (j = 0, i = len - 1; i >= 0; i--) {
			if (j == 3) {
			aux2 += milSep;
			j = 0;			
			}
			aux2 += aux.charAt(i);
			j++;			
			}
			fld.value = '';
			len2 = aux2.length;
			for (i = len2 - 1; i >= 0; i--) 
			fld.value += aux2.charAt(i);					
			//fld.value += decSep + aux.substr(len - 2, len);
			//}
			return false;
			}			
		</script>
	</head>
		
	<body onload="center();fokus();" onunload = "return window_onunload()">
		
		<form id="frmKonvSat" runat="server">
			
			<table cellSpacing="5" cellPadding="0" width="100%" border="0">
				
				<tr>
					<td style="PADDING-TOP: 5px" align="left">
					
						<TABLE cellSpacing="0" cellPadding="5" width="100%">
							<TR class="rheader">
								<TD class="rheadercol" align="left" height="25">PEMBAYARAN PELAYANAN OBAT
								</TD>
							</TR>
											
							<TR class="rbody">
								<TD class="rbodycol" align="left" height="25">
									<P>Halaman ini untuk menambah data Pembayaran Transaksi Pelayanan Obat.<br />
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
														<TD width="20%">
															Jenis Pelayanan
														</TD>
														<td width="5%" valign="center">:
														</td>
														<TD width="50%">
															<asp:DropDownList ID="ddlJenisPenjualan" Runat="server" Enabled="False" Width="50%"/>
														</TD>
													</tr>
													
													<tr>
														<td width="20%">
															Gudang
														</td>
														<td width="5%" valign="center">:
														</td>
														<td>
															<B><asp:Label Runat="server" ID="lblKodeGudang" /></B>
															<B><asp:Label Runat="server" ID="lblNamaGudang" /></B>
														</td>
													</tr>
													
													<tr>
														<td width="20%">
															No. Resep
														</td>
														<td width="5%" valign="center">:
														</td>
														<td>
															<B><asp:Label Runat="server" ID="lblNoresep" /></B>
														</td>
													</tr>
													
													<tr>
														<td width="20%">
															Nama
														</td>
														<td width="5%" valign="center">:
														</td>
														<td>
															<B><asp:Label Runat="server" ID="lblNama" /></B>
														</td>
													</tr>
													<tr>
														<td width="20%">
															Tagihan
														</td>
														<td width="5%" valign="center">:
														</td>
														<td>
															<B><asp:Label Runat="server" ID="lblTagihan" /></B>
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
																			<asp:Panel ID="pnlAddNewRow" Runat="server">
																				<TABLE cellSpacing="0" cellPadding="5" width="100%" class=rBodyAddNew bordercolordark=#98AAB1 >
																					<TR class="rheader">
																						<TD class="rheadercol" align="left" height="25">Tambah/Edit/Batal Data Pembayaran Bebas</TD>
																					</TR>
																
																					<tr>
																						<td>
																							<TABLE width="100%" border=0 cellpadding=1 cellspacing=1 bgcolor=#98AAB1 >
																																																													
																								<TR>
																									<TD width="20%" class=rBodyAddNewFld>No. Bayar
																									</TD>
																									<TD width="40%" class=rBodyAddNewFld>
																										<asp:TextBox	id="txtNobayar" 
																														runat="server" 
																														ReadOnly="True"></asp:TextBox>
																									</TD>
																									
																								</TR>
																								
																								<TR>
																									<TD width="20%" class=rBodyAddNewFld>Tanggal
																									</TD>
																									<TD width="40%" class=rBodyAddNewFld>
																										<asp:TextBox	id="txtTanggal" 
																														runat="server"
																														readonly="true"></asp:TextBox>
																									</TD>
																									
																								</TR>
																								
																								<tr>
																									<td width="20%" class=rBodyAddNewFld>
																									</td>
																									<td colspan="2" class=rBodyAddNewFld>
																										<asp:CheckBox ID="chkPiutang"
																													Runat="server" 
																													text="Piutang" 
																													AutoPostBack="True">
																										</asp:CheckBox>
																									</td>
																								</tr>
																								
																																														
																								<asp:panel id="pnlTunai" runat="server">
																								
																								<!--CARA PEMBAYARAN: CASH,CREDIT CARD,DEBIT CARD -->
																								<TR >
																									<TD width="20%" Rowspan=3 valign=top class=rBodyAddNewFld>
																										<B>Cara Bayar</B>
																									</TD>
																									
																									<TD width="40%" colspan=2 class="smalltext" class=rBodyAddNewFld>
																										<strong	style="text-decoration: underline; cursor: hand" 
																												onclick="javascript:if (cashDiv.style.display == '') {cashDiv.style.display = 'none'; } else { cashDiv.style.display = '';}">
																											CASH
																										</strong>
																										
																										<div id="cashDiv" style="display='';">
																											<TABLE width="100%">
																												<TR>
																													<td width="30%" class=rBodyAddNewFld>Uang Diterima [Rp]
																													</td>
																													<td width="70%" class=rBodyAddNewFld>
																														<asp:TextBox ID="txtTotalPembayaranCash" 
																																	Runat=server 
																																	text="0" 
																																	Width="80%" 
																																	onKeyPress="return(currencyFormat(this,',','.',event))" 
																																	onblur="hitungKembalian()" ></asp:TextBox>
																													</td>
																												</TR>
																												<TR>
																													<td width="30%" class=rBodyAddNewFld>Uang Kembalian [Rp]
																													</td>
																													<td width="70%" class=rBodyAddNewFld>
																														<asp:TextBox ID="txtTotalKembalian" Runat=server text="0" Width="80%" onKeyPress="return(currencyFormat(this,',','.',event))" ReadOnly="True"></asp:TextBox>
																													</td>
																												</TR>
																											</table>
																										</div>
																										
																									</TD>
																								</TR>
																																						
																								<TR>
																									<TD width="20%" colspan=2 class="smalltext" class=rBodyAddNewFld>
																										
																										<asp:Panel Runat="server" ID="panelPembayaranKartu">
																										
																											<strong	style="text-decoration: underline; cursor: hand" 
																													onclick="javascript:if (creditCardDiv.style.display == '') {creditCardDiv.style.display = 'none'; } else { creditCardDiv.style.display = '';}">
																												CREDIT CARD
																											</strong>
																											
																											<div id="creditCardDiv" style="display='none';">
																												<!-- KARTU PERTAMA -->
																												<table width="100%">
																													<tr>
																														<td width="30%" class=rBodyAddNewFld><B>Kartu 1</B>
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:DropDownList ID="listJenisKartu1" Runat="server" Width="80%"></asp:DropDownList>
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Mesin EDC
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:DropDownList ID="listBank1" Runat="server" Width="80%"></asp:DropDownList>
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Nomor Kartu
																														</td>
																														<td width="70%">
																															<asp:TextBox	id="txtNomorKartu1" 
																																			runat="server" 
																																			MaxLength="20" width="80%" />
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Tgl. Kartu [dd-MM-yyyy]
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtTglKartu1" 
																																			runat="server" 
																																			MaxLength="10" 
																																			AutoPostBack="false"
																																			width="80%" />
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Pembayaran [Rp]
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtTotalBayarKartu1" 
																																			runat="server" 
																																			MaxLength="20" 
																																			width="80%"
																																			text="0" 
																																			onKeyPress="return(currencyFormat(this,',','.',event))" 
																																			onblur="hitungKembalian()"/>
																																																																						
																														</td>
																													</tr>
																													
																													<TR class="rheader" >
																														<td width="100%"  bgcolor=Gainsboro   align="left" height="2" colspan=2>
																														</td>
																													</tr>

																												</table>
																												
																												<!-- KARTU KEDUA -->
																												<table width="100%">
																													<tr>
																														<td width="30%" class=rBodyAddNewFld><B>Kartu 2</B>
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:DropDownList ID="listJenisKartu2" Runat="server" Width="80%"></asp:DropDownList>
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Mesin EDC
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:DropDownList ID="listBank2" Runat="server" Width="80%"></asp:DropDownList>
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Nomor Kartu
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtNomorKartu2" 
																																			runat="server" 
																																			MaxLength="20" width="80%" />
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Tgl. Kartu [dd-MM-yyyy]
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtTglKartu2" 
																																			runat="server" 
																																			MaxLength="10" 
																																			AutoPostBack="false"
																																			width="80%" />
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Pembayaran [Rp]
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtTotalBayarKartu2" 
																																			runat="server" 
																																			MaxLength="20" 
																																			width="80%" 
																																			text="0" 
																																			onKeyPress="return(currencyFormat(this,',','.',event))" 
																																			onblur="hitungKembalian()"/>
																																			
																																			
																														</td>
																													</tr>
																													
																													<TR >
																														<td width="100%"  bgcolor=Gainsboro   align="left" height="2" colspan=2>
																														</td>
																													</tr>
																												</table>
																												
																												<!-- KARTU KETIGA -->
																												<table width="100%">
																													<tr>
																														<td width="30%" class=rBodyAddNewFld><B>Kartu 3</B>
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:DropDownList ID="listJenisKartu3" Runat="server" Width="80%"></asp:DropDownList>
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Mesin EDC
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:DropDownList ID="listBank3" Runat="server" Width="80%"></asp:DropDownList>
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Nomor Kartu
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtNomorKartu3" 
																																			runat="server" 
																																			MaxLength="20" width="80%"  />
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Tgl. Kartu [dd-MM-yyyy]
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtTglKartu3" 
																																			runat="server" 
																																			MaxLength="10" 
																																			AutoPostBack="false"
																																			width="80%" />
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Pembayaran [Rp]
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtTotalBayarKartu3" 
																																			runat="server" 
																																			MaxLength="20" 
																																			width="80%"
																																			text="0"
																																			onKeyPress="return(currencyFormat(this,',','.',event))" 
																																			onblur="hitungKembalian()" />
																																			
																														</td>
																													</tr>
																													
																												</table>
																											</div>
																											
																										</asp:Panel>
																										
																									</TD>
																								</TR>
																								
																								<TR>
																									<TD width="20%" colspan=2 class="smalltext">
																										
																										<asp:Panel Runat="server" ID="panelPembayaranKartu2">
																										
																											<strong	style="text-decoration: underline; cursor: hand" 
																													onclick="javascript:if (debitCardDiv.style.display == '') {debitCardDiv.style.display = 'none'; } else { debitCardDiv.style.display = '';}">
																												DEBIT CARD
																											</strong>
																											
																											<div id="debitCardDiv" style="display='none';">
																												<table width="100%">
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Bank
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:DropDownList ID="listBank4" Runat="server" Width="80%"></asp:DropDownList>
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Nomor Kartu
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtNomorKartu4" 
																																			runat="server" 
																																			MaxLength="20" width="80%" />
																														</td>
																													</tr>
																													<tr>
																														<td width="30%" class=rBodyAddNewFld>Pembayaran [Rp]
																														</td>
																														<td width="70%" class=rBodyAddNewFld>
																															<asp:TextBox	id="txtTotalBayarKartu4" 
																																			runat="server" 
																																			MaxLength="20" 
																																			width="80%"
																																			text="0"
																																			onKeyPress="return(currencyFormat(this,',','.',event))" 
																																			onblur="hitungKembalian()" />
																																			
																														</td>
																													</tr>
																													<tr>
																														<td width="30%">
																														</td>
																														<td width="70%">
																														</td>
																													</tr>
																												</table>
																											</div>
																											
																										</asp:Panel>
																										
																									</TD>
																								</TR>																																		
																								
																								<TR>
																									<TD width="20%" class=rBodyAddNewFld>Keterangan Diskon
																									</TD>
																									<TD width="40%" class=rBodyAddNewFld>
																										<asp:DropDownList	id="ddlKeterangan" 
																															runat="server" 
																															MaxLength="50" 
																															Width="100%"
																															AutoPostBack="True"></asp:DropDownList>
																									</TD>
																									<TD class=rBodyAddNewFld>&nbsp;
																									</TD>
																								</TR>
																								
																								<asp:Panel id="pnldiskon" runat="server">	
																								
																									<TR>
																										<TD width="20%" class=rBodyAddNewFld>Diskon [%]
																										</TD>
																										<TD width="40%" class=rBodyAddNewFld>
																											<asp:TextBox	id="txtPDiskon" 
																															runat="server" 
																															MaxLength="5"
																															visible="true" 
																															AutoPostBack="True">
																											</asp:TextBox>
																										</TD>
																										<TD class=rBodyAddNewFld>&nbsp;
																										</TD>
																									</TR>				
																									
																									<TR>
																										<TD width="20%" class=rBodyAddNewFld>Diskon Rp.
																										</TD>
																										<TD width="40%" class=rBodyAddNewFld>
																											<asp:TextBox	id="txtDiskon" 
																															runat="server" 
																															MaxLength="15"
																															visible="true"
																															onKeyPress="return(currencyFormat(this,',','.',event))" 
																															onblur="hitungKembalian()" 
																															autopostback="true" > 
																											</asp:TextBox>
																										</TD>
																										<TD class=rBodyAddNewFld>&nbsp;
																										</TD>
																									</TR>
																								
																								</asp:Panel>
																								
																								<TR>
																									<TD width="20%" class=rBodyAddNewFld>Kwitansi Atas Nama
																									</TD>
																									<TD width="40%" class=rBodyAddNewFld>
																										<asp:TextBox	id="txtPembayar" 
																														runat="server" 
																														MaxLength="50" 
																														Width="100%"></asp:TextBox>
																									</TD>
																									<TD class=rBodyAddNewFld>&nbsp;
																									</TD>
																								</TR>
																								
																								</asp:panel>
																								
																								<asp:panel id="pnlPiutang" runat="server">
																								<tr>
																									<td width="20%" class=rBodyAddNewFld>Jumlah
																									</td>
																									<td width="40%" class=rBodyAddNewFld>
																										<asp:TextBox ID="txtJmPiutang"
																													Runat="server"
																													Width="100%"
																													onKeyPress="return(currencyFormat(this,',','.',event))" >
																										</asp:TextBox>
																									</td>
																									<td class=rBodyAddNewFld>&nbsp;
																									</td>
																								</tr>
																																																
																								<tr>
																									<td width="20%" class=rBodyAddNewFld>
																										<asp:LinkButton ID="lbtnKdPerusahaan"
																													Runat="server"
																													text="Perusahaan" 
																													CausesValidation="False" >
																										</asp:LinkButton>
																									</td>
																									<td colspan="2" class=rBodyAddNewFld>
																										<asp:TextBox ID="txtKdPerusahaan"
																													Runat="server" 
																													AutoPostBack="True">
																										</asp:TextBox>
																										<asp:RequiredFieldValidator id="RFVKdPerusahaan" 
																																	runat="server" 
																																	display="dynamic" 
																																	errormessage="Perusahaan" 
																																	controlToValidate="txtKdPerusahaan">**
																										</asp:RequiredFieldValidator>
																										<B><asp:Label ID="lblNmPerusahaan"
																													Runat="server">
																										</asp:Label></B>
																									</td>
																								</tr>
																								
																								
																								</asp:panel>

																								<tr>
																									<td width="20%" class=rBodyAddNewFld>Kasir
																									</td>
																									<td width="40%" class=rBodyAddNewFld>
																										<asp:TextBox ID="lblNamaKasir"
																													Runat="server"
																													Width="100%" Font-Bold="True"
																													readonly="true"></asp:TextBox>
																									</td>
																									<td class=rBodyAddNewFld>&nbsp;
																									</td>
																								</tr>
																								
																								<tr>
																									<td width="20%" class=rBodyAddNewFld>Tgl. Update
																									</td>
																									<td width="40%" class=rBodyAddNewFld>
																										<asp:TextBox	id="lblTglUpdate"
																													Runat="server"
																													Width="100%" Font-Bold="True" 
																													readonly="true"></asp:TextBox>
																									</td>
																									<td class=rBodyAddNewFld>&nbsp;
																									</td>
																								</tr>
																				
																							</TABLE> 
																							<!--END TABLE INPUT DATA-->
																							<TABLE width="100%">
																								<TR>
																									<TD width="5%">
																										<asp:Button id="btnSave" runat="server" text="Bayar" CssClass=sbttn width="100" CausesValidation="False"/>
																									</TD>
																									<TD>
																										<asp:Button id="btnDone" runat="server" text="Done" CausesValidation="False" CssClass=sbttn width="100" /> 
																									</TD>
																								</TR>
																							</TABLE>
																						</td>
																					</tr>
																					
																				</table>
																				<TABLE cellSpacing="0" cellPadding="5" width="100%">
																					<TR>
																						<TD align="left">
																							<P>
																								<asp:ValidationSummary	id="ValidationSummary" 
																														runat="server" 
																														HeaderText="Field(s) berikut harus diisi." />
																							</P>
																						</TD>
																					</TR>
																				</TABLE>
																			</asp:panel>		
																		</td>
																	</tr>
																	
																</table>
																<table width="100%">
																	<TR bgcolor=White valign=bottom>
																		<TD align="left" height="25">
																			<p align=right><strong>Data yang sudah ada...</strong></p> 
																		</TD>
																	</TR> 	
																
																	<tr>
																		<td width="100%">
															
																			<asp:DataGrid	id="grdBayar" 
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
																							DataKeyField="nobayar"
																							ShowFooter=True
																							CellPadding="0">
																									
																						<HeaderStyle Font-Bold="True" BackColor=#DEE3E7  Height=20 />
																						<ItemStyle Font-Size="8pt" />
																						<AlternatingItemStyle BackColor=WhiteSmoke  />
																						<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
																						<EditItemStyle Font-Bold="true" />
																						
																						<Columns>
																																																																			
																							<asp:TemplateColumn runat="server" HeaderText="No. Bayar">
																								
																								<itemtemplate>
																								
																											<asp:label		runat="server" 
																															style="margin-left:5;margin-right:5"
																															Text='<%# DataBinder.Eval(Container.DataItem, "nobayar") %>' 
																															ID="_lblNobayar"/>
																									
																								</itemtemplate>
																								
																							</asp:TemplateColumn >
																							
																							<asp:TemplateColumn  runat="server" HeaderText="Tanggal" >
																								
																								<ItemTemplate>
																									
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# DataBinder.Eval(Container.DataItem, "tglbayar") %>' 
																													ID="_lblTanggal"/>
																								
																								</ItemTemplate>
																								
																								<footertemplate>
																								
																									<asp:linkbutton		runat="server" 
																														id="_btnAddNewRow" 
																														CausesValidation="False" 
																														CommandName="_AddNewRow" 
																														Text="Bayar..." 
																														AccessKey="A" />
																								
																								</footertemplate>
																								
																							</asp:TemplateColumn >
																							
																							<asp:TemplateColumn  runat="server" HeaderText="Jumlah Transaksi" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
																								
																								<ItemTemplate>
																									
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# Format(DataBinder.Eval(Container.DataItem, "bayar1")+DataBinder.Eval(Container.DataItem, "bayar2")+DataBinder.Eval(Container.DataItem, "bayar3")+DataBinder.Eval(Container.DataItem, "bayar4")+DataBinder.Eval(Container.DataItem, "bayar5"), "#,##0.00") %>' 
																													ID="_lblJumlahTrns"/>
																								
																								</ItemTemplate>
																								
																							</asp:TemplateColumn >
																							
																							<asp:TemplateColumn  runat="server" HeaderText="Jumlah Bayar" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
																								
																								<ItemTemplate>
																									
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# Format(DataBinder.Eval(Container.DataItem, "bayar1")+DataBinder.Eval(Container.DataItem, "bayar2")+DataBinder.Eval(Container.DataItem, "bayar3")+DataBinder.Eval(Container.DataItem, "bayar4")+DataBinder.Eval(Container.DataItem, "bayar5")+DataBinder.Eval(Container.DataItem, "selisih"), "#,##0.00") %>' 
																													ID="_lblJumlahByr"/>
																								
																								</ItemTemplate>
																								
																							</asp:TemplateColumn >
																							
																							<asp:TemplateColumn  runat="server" HeaderText="Kembalian" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
																								
																								<ItemTemplate>
																									
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# Format(DataBinder.Eval(Container.DataItem, "selisih"), "#,##0.00") %>' 
																													ID="_lblKembalian"/>
																								
																								</ItemTemplate>
																								
																							</asp:TemplateColumn >
																							
																							<asp:TemplateColumn  runat="server" HeaderText="Batal" HeaderStyle-HorizontalAlign="Center">
																								
																								<ItemTemplate>
																									
																									<asp:checkbox	runat="server" 
																													checked='<%# DataBinder.Eval(Container.DataItem, "batal") %>' 
																													ID="_chkBatal" 
																													Enabled="false"/>
																								
																								</ItemTemplate>
																								<itemstyle HorizontalAlign="Center" Width="50px" />
																								
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
																														ID="__ibtnVoid"
																														CausesValidation=False
																														ImageUrl="/qislib/images/cancel.png"
																														alt="Cancel this item" 
																														CommandName="__void" 
																														Visible='<%# IsAllowCancel() %>' />
																									
																								</ItemTemplate>
																								
																							</asp:TemplateColumn>
																							
																							<asp:TemplateColumn>
																								
																								<ItemTemplate>
																									
																									<asp:ImageButton	Runat="server"
																														ID="__ibtnPrint"
																														CausesValidation=False
																														ImageUrl="/qislib/images/toolbar/PRINT.gif"
																														alt="Print this item" 
																														CommandName="__print" />
																									
																								</ItemTemplate>
																								
																							</asp:TemplateColumn>
																							
																							<asp:TemplateColumn  runat="server" HeaderText="KdTrans" HeaderStyle-HorizontalAlign="Center" visible="false">
																								
																								<ItemTemplate>
																									
																									<asp:label		runat="server" 
																													style="margin-left:5;margin-right:5"
																													Text='<%# DataBinder.Eval(Container.DataItem, "kdtrans") %>' 
																													ID="_lblKdTrans"/>
																								
																								</ItemTemplate>
																																																
																							</asp:TemplateColumn >
																																																																				
																						</Columns>
																								
																			</asp:DataGrid>
																		
																		</td>
																	</tr>
																	
																</table>
																
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
		</form>
		
	</body>
	
</html>
<script language="vbscript">
Public Function ditrim(ByVal x)
	ditrim = Trim(x)			
End Function
Public Function rpl(ByVal str)
	rpl = replace(str,",","")
End Function			
Public Function cur(ByVal value)
	cur = replace(FormatCurrency(value),"$","")
End Function
</script>	
<script language="javascript">
function fokus()
    {
    try
        {       
        document.getElementById('txtTotalPembayaranCash').focus();
        document.getElementById('txtTotalPembayaranCash').select();
        }
    catch(e)
        {
        }
    }
    
function hitungKembalian()
	{
	var jmtrans;
	var jmbayar1;
	var jmbayar2;
	var jmbayar3;
	var jmbayar4;
	var jmbayar5;
	var jmdiskon;
	var jmkembali;
	
	jmtrans = parseFloat(rpl(document.getElementById('lblTagihan').innerHTML));	
	jmbayar1 = parseFloat(rpl(document.getElementById('txtTotalPembayaranCash').value));
	jmbayar2 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu1').value));
	jmbayar3 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu2').value));
	jmbayar4 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu3').value));
	jmbayar5 = parseFloat(rpl(document.getElementById('txtTotalBayarKartu4').value));
	
	try
		{
		jmdiskon = parseFloat(rpl(document.getElementById('txtDiskon').value));
		}
	catch(e)
		{
		jmdiskon = 0;
		}
	
	
	jmkembali = jmbayar1 + jmbayar2 + jmbayar3 + jmbayar4 + jmbayar5 + jmdiskon - jmtrans;
	
	document.getElementById('txtTotalKembalian').value = cur(jmkembali);
	}

function ddlKeterangan_Change()
	{
	//var keterangan;
	//keterangan = document.getElementById("ddlKeterangan").value;
	
	//alert(keterangan);
	
	//if (keterangan == 'none')
	//	{
	//	document.getElementById("txtDiskon").value = '0';
	//	document.getElementById("txtPDiskon").value = '0';
	//	document.getElementById("trdiskon").style.display = 'none';
	//	document.getElementById("trdiskonp").style.display = 'none';
	//	}
	//else
	//	{
	//	document.getElementById("txtDiskon").value = '0';
	//	document.getElementById("txtPDiskon").value = '0';
	//	document.getElementById("trdiskon").style.display = '';
	//	document.getElementById("trdiskonp").style.display = '';
	//	}
	}
</script>