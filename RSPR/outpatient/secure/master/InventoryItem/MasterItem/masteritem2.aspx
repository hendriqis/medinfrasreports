<%@ Import Namespace="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="TabStrip" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls, Version=1.0.2.226, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="masteritem2.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.MasterItem.masterItem2" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../incl/copyRightModule.ascx" %>
<HTML>
	<HEAD>
		<TITLE>Master Inventory Item</TITLE> 
		<META CONTENT="Microsoft Visual Studio.NET 7.0" NAME="GENERATOR">
		<META CONTENT="Visual Basic 7.0" NAME="CODE_LANGUAGE">
		<META CONTENT="JavaScript" NAME="vs_defaultClientScript">
		<META CONTENT="http://schemas.microsoft.com/intellisense/ie5" NAME="vs_targetSchema">
		<LINK HREF="/qislib/css/styles.css" TYPE="text/css" REL="Stylesheet">
		<script language=javascript src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>
		<SCRIPT LANGUAGE="javascript" SRC="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></SCRIPT>
	</HEAD>
	<BODY MS_POSITIONING="GridLayout">
		<FORM ID="frmMasterItem" RUNAT="server">
			
			<TABLE CELLSPACING="w" CELLPADDING="0" WIDTH="100%" BORDER="0">
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
				<TR>
					<TD VALIGN="top" WIDTH="100%">
						<div style="width: 100%; height: 100%; overflow: auto;">
						<TABLE CELLSPACING="10" CELLPADDING="0" WIDTH="100%" BORDER="0">
							<TR>
								<TD STYLE="PADDING-TOP: 5px" ALIGN="left">
									<TABLE CELLSPACING="0" CELLPADDING="5" WIDTH="100%">
										<TR CLASS="rheader">
											<TD CLASS="rheadercol" ALIGN="left" HEIGHT="25">INVENTORY ITEM
											</TD>
										</TR>
									
										<TR CLASS="rbody">
											<TD CLASS="rbodycol" ALIGN="center" HEIGHT="25">
												<TABLE WIDTH="100%">
													<TR>
														<TD WIDTH="20%">
															<ASP:LINKBUTTON ID="lbtnKodeItem" RUNAT="server" TEXT="Kode Item" CAUSESVALIDATION="False"></ASP:LINKBUTTON>
														</TD>
														<TD WIDTH="40%">
															<ASP:TEXTBOX ID="txtKodeItem" RUNAT="server" WIDTH="100%" MAXLENGTH="10" AUTOPOSTBACK="true"></ASP:TEXTBOX>
														</TD>
													</TR>
													<TR>
														<TD WIDTH="20%"></TD>
														<TD WIDTH="40%">
															<ASP:CHECKBOX ID="chkStatusAktif" RUNAT="server" CHECKED="True" TEXT="Aktif" AUTOPOSTBACK="False"></ASP:CHECKBOX>
														</TD>
														<TD>&nbsp;</TD>
													</TR>
													<TR>
														<TD WIDTH="20%">Nama Item</TD>
														<TD WIDTH="40%">
															<ASP:TEXTBOX ID="txtNamaItem" RUNAT="server" WIDTH="100%" MAXLENGTH="50"></ASP:TEXTBOX>
														</TD>
														<TD>
															<ASP:REQUIREDFIELDVALIDATOR ID="rfldNamaItem" RUNAT="server" DISPLAY="dynamic" ERRORMESSAGE="Nama Item" CONTROLTOVALIDATE="txtNamaItem">** 
															</ASP:REQUIREDFIELDVALIDATOR>
														</TD>
													</TR>
													<TR>
														<TD WIDTH="20%">Catalog No</TD>
														<TD WIDTH="40%">
															<ASP:TEXTBOX ID="txtNamaItem2" RUNAT="server" WIDTH="100%" MAXLENGTH="50"></ASP:TEXTBOX>
														</TD>
														<TD>&nbsp;</TD>
													</TR>
													<TR>
														<TD WIDTH="20%">Satuan Kecil</TD>
														<TD WIDTH="40%">
															<ASP:DROPDOWNLIST ID="ddlSatuanKecil" RUNAT="server" WIDTH="50%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
															<ASP:LABEL ID="lblSatuanKecil" RUNAT="server" TEXT="1.00" WIDTH="48%" VISIBLE="False"></ASP:LABEL>
														</TD>
														<TD>&nbsp;</TD>
													</TR>
													<TR>
														<TD WIDTH="20%">Satuan Besar</TD>
														<TD WIDTH="40%">
															<ASP:DROPDOWNLIST ID="ddlSatuanBesar" RUNAT="server" WIDTH="50%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
															<ASP:LABEL ID="lblSatuanBesar" RUNAT="server" TEXT="1.00" WIDTH="48%" VISIBLE="False"></ASP:LABEL>
														</TD>
														<TD>&nbsp;</TD>
													</TR>
													<TR>
														<TD WIDTH="20%">Kadar</TD>
														<TD WIDTH="40%">
															<ASP:TEXTBOX ID="txtKadar" RUNAT="server" WIDTH="50%"></ASP:TEXTBOX>
															<ASP:DROPDOWNLIST ID="ddlSatuanKadar" RUNAT="server" WIDTH="48%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
														</TD>
														<TD>&nbsp;</TD>
													</TR>
													<TR>
														<TD WIDTH="20%">Potong Stock</TD>
														<TD WIDTH="40%">
															<ASP:RADIOBUTTON ID="rbtnSK" RUNAT="server" TEXT="Dibulatkan satuan kecil" GROUPNAME="__PS"></ASP:RADIOBUTTON>
															<br />
															<ASP:RADIOBUTTON ID="rbtnSP" RUNAT="server" TEXT="Sesuai Pemakaian" GROUPNAME="__PS"></ASP:RADIOBUTTON>
														</TD>
														<TD>&nbsp;</TD>
													</TR>
												</TABLE>
												<TABLE WIDTH="100%">
													<TR>
														<TD WIDTH="100%">
															<TABSTRIP:TABSTRIP ID="tsMasterItem" RUNAT="server" ENABLEVIEWSTATE="False" TABSELECTEDSTYLE="border:#6699CC 1px solid;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;border-bottom:none;background:white;padding-left:6px;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;padding-right:6px;"
																SEPDEFAULTSTYLE="border-bottom:#6699CC 1px solid;" TABHOVERSTYLE="color:Red;background-color:#D6E7EF;"
																TABDEFAULTSTYLE="border:#6699CC 1px solid;padding-left:5px;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;padding-right:5px;background-color:#D6E7EF;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;font-family:verdana;font-weight:bold;font-size:8pt;&#13;&#10;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;&#9;color:#003399;height:17;text-align:center"
																BORDERWIDTH="0px" TARGETID="mpMasterItem">
																<TABSTRIP:TAB TEXT="Data Item"></TABSTRIP:TAB>
																<TABSTRIP:TABSEPARATOR></TABSTRIP:TABSEPARATOR>
																<TABSTRIP:TAB TEXT="Nilai"></TABSTRIP:TAB>
																<TABSTRIP:TABSEPARATOR></TABSTRIP:TABSEPARATOR>
																<TABSTRIP:TAB TEXT="Inventory"></TABSTRIP:TAB>
																<TABSTRIP:TABSEPARATOR></TABSTRIP:TABSEPARATOR>
																<TABSTRIP:TAB TEXT="Perencanaan"></TABSTRIP:TAB>
																<TABSTRIP:TABSEPARATOR></TABSTRIP:TABSEPARATOR>
																<TABSTRIP:TAB TEXT="Labeling"></TABSTRIP:TAB>
																<TABSTRIP:TABSEPARATOR></TABSTRIP:TABSEPARATOR>
																<TABSTRIP:TAB TEXT="Kelompok Therapi"></TABSTRIP:TAB>
																<TABSTRIP:TABSEPARATOR DefaultStyle="width:100%" />
															</TABSTRIP:TABSTRIP>
															<TABSTRIP:MULTIPAGE ID="mpMasterItem" RUNAT="server">
																<TABSTRIP:PAGEVIEW STYLE="border-right: #6699CC 1px solid;
																	border-left: #6699CC 1px solid;
																	border-bottom: #6699CC 1px solid;
																	padding-bottom: 5px; 
																	padding-top: 5px;">
																	<TABLE CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
																		<TR CLASS="rbody">
																			<TD CLASS="rbodycol" ALIGN="middle" HEIGHT="25">
																				<TABLE WIDTH="100%">
																					<TR>
																						<TD WIDTH="20%">Jenis Item</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlJenisItem" RUNAT="server" WIDTH="100%" CSSCLASS="drpdwn">
																								
																							</ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%"></TD>
																						<TD WIDTH="40%">
																							<ASP:CHECKBOX ID="chkFormalium" RUNAT="server" CHECKED="False" TEXT="Formularium" AUTOPOSTBACK="False"></ASP:CHECKBOX>
																						</TD>
																						<TD>&nbsp;</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Laporan Depkes</TD>
																						<TD WIDTH="40%">
																							<asp:DropDownList ID="ddlLaporanDKK" Runat="server" Width="100%" CssClass="drpdwn"></asp:DropDownList>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Product Account</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlProductAccount" RUNAT="server" WIDTH="100%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Group</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlGroup" RUNAT="server" WIDTH="100%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Kelompok</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlKelompok" RUNAT="server" WIDTH="100%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Type</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlType" RUNAT="server" WIDTH="100%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Status VEN</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlVEN" RUNAT="server" WIDTH="100%" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;</TD>
																					</TR>
																				</TABLE>
																			</TD>
																		</TR>
																	</TABLE>
																</TABSTRIP:PAGEVIEW>
																<TABSTRIP:PAGEVIEW STYLE="border-right: #6699CC 1px solid;
																						  border-left: #6699CC 1px solid;
																						  border-bottom: #6699CC 1px solid;
																						  padding-bottom: 5px; 
																						  padding-top: 5px;">
																	<TABLE CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
																		<TR CLASS="rbody">
																			<TD CLASS="rbodycol" ALIGN="middle" HEIGHT="25">
																				<TABLE WIDTH="100%">
																					<TR>
																						<TD WIDTH="20%">Harga Jual Standard
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:TEXTBOX ID="txtHJStandart" RUNAT="server" WIDTH="100%" READONLY="true"></ASP:TEXTBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Markup Satuan
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:TEXTBOX ID="txtMarkupSatuan" RUNAT="server" MAXLENGTH="5" WIDTH="100%" READONLY="true"></ASP:TEXTBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Markup Group
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlMarkupGroup" RUNAT="server" WIDTH="100%" ENABLED="false"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Diskon Penjualan</TD>
																						<TD WIDTH="40%">
																							<ASP:TEXTBOX ID="txtDiscPasien" RUNAT="server" WIDTH="100%" READONLY="true"></ASP:TEXTBOX>
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Toleransi Qty
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:TEXTBOX ID="txtToleransiQty" RUNAT="server" WIDTH="100%" READONLY="true"></ASP:TEXTBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR style="display:none">
																						<TD WIDTH="20%">Toleransi Nilai
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:TEXTBOX ID="txtToleransiNilai" RUNAT="server" WIDTH="100%"></ASP:TEXTBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR style="display:none">
																						<TD WIDTH="20%">
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:CHECKBOX ID="chkPPn" RUNAT="server" TEXT="PPn" ENABLED="False"></ASP:CHECKBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD CLASS="rBodyInfo" HEIGHT="20" COLSPAN="2">
																							<P>
																								<TABLE WIDTH="100%">
																									<TR>
																										<TD WIDTH="100%" CLASS="rBodyInfo">
																											Informasi Harga:
																										</TD>
																									</TR>
																								</TABLE>
																								<TABLE WIDTH="100%" BGCOLOR="MintCream" BGCOLOR="#b0c7cb">
																									<TR>
																										<TD WIDTH="50%">Harga Satuan Besar:
																										</TD>
																										<TD ALIGN="right">
																											<ASP:LABEL ID="lblHargaSatuanBesar" RUNAT="server" TEXT="0.00"></ASP:LABEL>
																										</TD>
																									</TR>
																									<TR>
																										<TD WIDTH="50%">Harga Satuan Kecil:
																										</TD>
																										<TD ALIGN="right">
																											<ASP:LABEL ID="lblHargaSatuanKecil" RUNAT="server" TEXT="0.00"></ASP:LABEL>
																										</TD>
																									</TR>
																									<TR>
																										<TD WIDTH="50%">HNA Satuan Kecil + PPn:
																										</TD>
																										<TD ALIGN="right">
																											<ASP:LABEL ID="lblHargaSatuanKecilPPn" RUNAT="server" TEXT="0.00"></ASP:LABEL>
																										</TD>
																									</TR>
																									<TR>
																										<TD WIDTH="50%">Harga Rata2:
																										</TD>
																										<TD ALIGN="right">
																											<ASP:LABEL ID="lblHargaRata2" RUNAT="server" TEXT="0.00"></ASP:LABEL>
																										</TD>
																									</TR>
																									<TR>
																										<TD WIDTH="50%">Harga Beli Akhir:
																										</TD>
																										<TD ALIGN="right">
																											<ASP:LABEL ID="lblHargaLama" RUNAT="server" TEXT="0.00"></ASP:LABEL>
																										</TD>
																									</TR>
																									<TR>
																										<TD WIDTH="50%">Diskon Pembelian:
																										</TD>
																										<TD ALIGN="right">
																											<ASP:LABEL ID="txtDiscount" RUNAT="server" TEXT="0.00"></ASP:LABEL>
																										</TD>
																										<TD>&nbsp;
																										</TD>
																									</TR>
																								</TABLE>
																							</P>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																				</TABLE>
																			</TD>
																		</TR>
																	</TABLE>
																</TABSTRIP:PAGEVIEW>
																<TABSTRIP:PAGEVIEW STYLE="border-right: #6699CC 1px solid;
																						  border-left: #6699CC 1px solid;
																						  border-bottom: #6699CC 1px solid;
																						  padding-bottom: 5px; 
																						  padding-top: 5px;">
																	<TABLE CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
																		<TR CLASS="rbody">
																			<TD CLASS="rbodycol" ALIGN="middle" HEIGHT="25">
																				<TABLE WIDTH="100%">
																					<TR style="display:none">
																						<TD WIDTH="20%">ABC Status
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:LABEL RUNAT="server" ID="lblABCStatus"></ASP:LABEL>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">&nbsp;
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:CHECKBOX RUNAT="server" ID="chkNonStock" TEXT="Bukan Stock"></ASP:CHECKBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR style="display:none">
																						<TD WIDTH="20%">
																							<ASP:LINKBUTTON ID="lbtnKodeGudang" CAUSESVALIDATION="False" TEXT="Kode Gudang" RUNAT="server"></ASP:LINKBUTTON>
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:TEXTBOX ID="txtKodeGudang" RUNAT="server" WIDTH="100%" AUTOPOSTBACK="true"></ASP:TEXTBOX>
																						</TD>
																						<TD>
																							<ASP:LABEL RUNAT="server" ID="lblNamaGudang"></ASP:LABEL>
																						</TD>
																					</TR>
																					<TR style="display:none">
																						<TD WIDTH="20%">Lokasi
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:DROPDOWNLIST ID="ddlLokasi" RUNAT="server" CSSCLASS="drpdwn" WIDTH="100%"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">
																							<ASP:LINKBUTTON ID="lbtnProdusen" CAUSESVALIDATION="False" TEXT="Produsen" RUNAT="server"></ASP:LINKBUTTON>
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:TEXTBOX ID="txtKodeProdusen" RUNAT="server" WIDTH="100%" AUTOPOSTBACK="true"></ASP:TEXTBOX>
																						</TD>
																						<TD>
																							<ASP:LABEL RUNAT="server" ID="lblNamaProdusen"></ASP:LABEL>
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">
																							<ASP:LINKBUTTON ID="lbtnPBF1" CAUSESVALIDATION="False" TEXT="Supplier" RUNAT="server"></ASP:LINKBUTTON>
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:TEXTBOX ID="txtPBF1" RUNAT="server" WIDTH="100%" AUTOPOSTBACK="true"></ASP:TEXTBOX>
																						</TD>
																						<TD>
																							<ASP:LABEL RUNAT="server" ID="lblPBF1"></ASP:LABEL>
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">
																							<ASP:LINKBUTTON ID="lbtnPBF2" CAUSESVALIDATION="False" TEXT="Supplier Tender" RUNAT="server"></ASP:LINKBUTTON>
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:TEXTBOX ID="txtPBF2" RUNAT="server" WIDTH="100%" AUTOPOSTBACK="true"></ASP:TEXTBOX>
																						</TD>
																						<TD>
																							<ASP:LABEL RUNAT="server" ID="lblPBF2"></ASP:LABEL>
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Keterangan Tender</TD>
																						<TD WIDTH="40%">
																							<ASP:DROPDOWNLIST ID="ddlTender" RUNAT="server" WIDTH="100%" AUTOPOSTBACK="true" CSSCLASS="drpdwn"></ASP:DROPDOWNLIST>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Harga Tender
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:TEXTBOX ID="txtHargaTender" RUNAT="server" WIDTH="100%"></ASP:TEXTBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Discount Tender
																						</TD>
																						<TD WIDTH="40%">
																							<ASP:TEXTBOX ID="txtDiscountTender" RUNAT="server" WIDTH="100%"></ASP:TEXTBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																				</TABLE>
																			</TD>
																		</TR>
																	</TABLE>
																</TABSTRIP:PAGEVIEW>
																<TABSTRIP:PAGEVIEW STYLE="border-right: #6699CC 1px solid;
																						  border-left: #6699CC 1px solid;
																						  border-bottom: #6699CC 1px solid;
																						  padding-bottom: 5px; 
																						  padding-top: 5px;">
																	<TABLE CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
																		<TR CLASS="rbody">
																			<TD CLASS="rbodycol" ALIGN="middle" HEIGHT="25">
																				<TABLE WIDTH="100%">
																					<TR>
																						<TD WIDTH="20%">Status ROP</TD>
																						<TD WIDTH="40%">
																							<ASP:RADIOBUTTON ID="rbtnDinamis" RUNAT="server" CHECKED="True" TEXT="Dinamis" GROUPNAME="__ROP"></ASP:RADIOBUTTON>
																							<ASP:RADIOBUTTON ID="rbtnStatis" RUNAT="server" CHECKED="False" TEXT="Statis" GROUPNAME="__ROP"></ASP:RADIOBUTTON>
																						</TD>
																						<TD>&nbsp;</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Lead Time
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:TEXTBOX ID="txtLeadTime" RUNAT="server" WIDTH="100%"></ASP:TEXTBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:CHECKBOX ID="chkCekExpired" RUNAT="server" TEXT="Cek Expired"></ASP:CHECKBOX>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Faktor (X)
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:TEXTBOX ID="txtSafetyStock" RUNAT="server" WIDTH="100%"></ASP:TEXTBOX>
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Safety Time
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:TEXTBOX ID="txtSafetyTime" RUNAT="server" WIDTH="100%"></ASP:TEXTBOX>
																						</TD>
																					</TR>
																					<TR>
																						<TD WIDTH="20%">Qty On Order
																						</TD>
																						<TD WIDTH="20%">
																							<ASP:LABEL ID="lblQtyOnOrder" RUNAT="server" WIDTH="100%"></ASP:LABEL>
																						</TD>
																						<TD>&nbsp;
																						</TD>
																					</TR>
																				</TABLE>
																			</TD>
																		</TR>
																	</TABLE>
																</TABSTRIP:PAGEVIEW>
																<TABSTRIP:PAGEVIEW STYLE="border-right: #6699CC 1px solid;
																						  border-left: #6699CC 1px solid;
																						  border-bottom: #6699CC 1px solid;
																						  padding-bottom: 5px; 
																						  padding-top: 5px;">
																	<TABLE CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
																		<TR CLASS="rbody">
																			<TD CLASS="rbodycol" ALIGN="middle" HEIGHT="25" WIDTH="20%">
																				<TABLE WIDTH="100%">
																					<TR>
																						<TD align="left">
																							<Font size="8" color="DarkBlue">Label </Font>
																						</TD>
																					</TR>
																				</TABLE>
																			</TD>
																			<TD CLASS="rbodycol" ALIGN="top" HEIGHT="25" WIDTH="80%">
																				<TABLE WIDTH="100%">
																					<TR>
																						<TD>
																							<ASP:DROPDOWNLIST ID="ddlLabel1" RUNAT="server" WIDTH="80%"></ASP:DROPDOWNLIST>
																						</TD>
																					</TR>
																					<TR>
																						<TD>
																							<ASP:DROPDOWNLIST ID="ddlLabel2" RUNAT="server" WIDTH="80%"></ASP:DROPDOWNLIST>
																						</TD>
																					</TR>
																					<TR>
																						<TD>
																							<ASP:DROPDOWNLIST ID="ddlLabel3" RUNAT="server" WIDTH="80%"></ASP:DROPDOWNLIST>
																						</TD>
																					</TR>
																					<TR>
																						<TD>
																							<ASP:DROPDOWNLIST ID="ddlLabel4" RUNAT="server" WIDTH="80%"></ASP:DROPDOWNLIST>
																						</TD>
																					</TR>
																				</TABLE>
																			</TD>
																		</TR>
																	</TABLE>
																</TABSTRIP:PAGEVIEW>
																<TABSTRIP:PAGEVIEW STYLE="border-right: #6699CC 1px solid;
																						  border-left: #6699CC 1px solid;
																						  border-bottom: #6699CC 1px solid;
																						  padding-bottom: 5px; 
																						  padding-top: 5px;">
																	<TABLE WIDTH="100%">
																		<TR>
																			<TD WIDTH="100%">
																				<ASP:DATAGRID ID="dgTherapi" RUNAT="server" AUTOGENERATECOLUMNS="False" CELLSPACING="0" BORDERCOLOR="Gainsboro"
																					BORDERWIDTH="1" GridLines="none" HEIGHT="100%" WIDTH="100%" ALLOWPAGING="False" PAGESIZE="20"
																					DATAKEYFIELD="kdItem" SHOWFOOTER="True" CELLPADDING="0">
																					<HEADERSTYLE FONT-BOLD="True" BACKCOLOR="#DEE3E7" HEIGHT="20"></HEADERSTYLE>
																					<ITEMSTYLE FONT-SIZE="8pt"></ITEMSTYLE>
																					<ALTERNATINGITEMSTYLE BACKCOLOR="WhiteSmoke"></ALTERNATINGITEMSTYLE>
																					<PAGERSTYLE MODE="NumericPages" HORIZONTALALIGN="right"></PAGERSTYLE>
																					<EDITITEMSTYLE FONT-BOLD="true"></EDITITEMSTYLE>
																					<COLUMNS>
																						<ASP:BOUNDCOLUMN DATAFIELD="kodeTherapi" VISIBLE="False"></ASP:BOUNDCOLUMN>
																						<ASP:BOUNDCOLUMN DATAFIELD="namaTherapi" VISIBLE="False"></ASP:BOUNDCOLUMN>
																						<ASP:TEMPLATECOLUMN RUNAT="server" HEADERTEXT="Kode Therapi">
																							<ITEMTEMPLATE>
																								<ASP:LABEL RUNAT="server" STYLE="margin-left:5;margin-right:5" TEXT='<%# DataBinder.Eval(Container.DataItem, "kodeTherapi") %>' ID="_lblKodeTherapi">
																								</ASP:LABEL>
																							</ITEMTEMPLATE>
																						</ASP:TEMPLATECOLUMN>
																						<ASP:TEMPLATECOLUMN RUNAT="server" HEADERTEXT="Nama Therapi" HEADERSTYLE-HORIZONTALALIGN="Left" ITEMSTYLE-HORIZONTALALIGN="Left">
																							<ITEMTEMPLATE>
																								<ASP:LABEL RUNAT="server" STYLE="margin-left:5;margin-right:5" TEXT='<%# DataBinder.Eval(Container.DataItem, "namaTherapi") %>' ID="_lblNamaTherapi">
																								</ASP:LABEL>
																							</ITEMTEMPLATE>
																						</ASP:TEMPLATECOLUMN>
																					</COLUMNS>
																				</ASP:DATAGRID>
																			</TD>
																		</TR>
																	</TABLE>
																</TABSTRIP:PAGEVIEW>
															</TABSTRIP:MULTIPAGE>
														</TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>
									<TABLE CELLSPACING="0" CELLPADDING="5" WIDTH="100%">
										<TR>
											<TD ALIGN="left">
												<P><ASP:VALIDATIONSUMMARY ID="ValidationSummary" RUNAT="server" HEADERTEXT="Field(s) berikut harus diisi atau perlu diperbaiki."></ASP:VALIDATIONSUMMARY></P>
											</TD>
										</TR>
									</TABLE>
									<!-- Begin Related Links -->
									<TABLE CELLSPACING="0" CELLPADDING="1" WIDTH="100%" BORDER="0">
										<TR>
											<TD CLASS="rBodyInfo" VALIGN="top" WIDTH="99%"><P>
													<TABLE WIDTH="100%">
														<TR>
															<TD CLASS="rBodyInfo" WIDTH="100%">Related Links:
															</TD>
														</TR>
													</TABLE>
													<TABLE CELLSPACING="10" CELLPADDING="0" WIDTH="100%" BGCOLOR="mintcream">
														<TR VALIGN="top">
															<TD ID="rbiks" WIDTH="50%">
																<P>
																	<STRONG>Konversi Satuan</STRONG>
																	<br />
																	Input Satuan alternatif dan faktor per barang.
																</P>
															</TD>
															<TD ALIGN="left">
																<ASP:BUTTON ID="btnKonversiSatuan" ONMOUSEOVER="rbiks.style.backgroundColor='#ffd27a'"
																	ONMOUSEOUT="rbiks.style.backgroundColor='MintCream'" RUNAT="server" CAUSESVALIDATION="False"
																	TEXT="Go..." CSSCLASS="sbttn"></ASP:BUTTON>
															</TD>
														</TR>
														<TR VALIGN="top">
															<TD ID="rbiza" WIDTH="50%">
																<P>
																	<STRONG>Zat Aktif</STRONG>
																	<br />
																	Input zat aktif obat.
																</P>
															</TD>
															<TD ALIGN="left">
																<ASP:BUTTON ID="btnZatAktif" ONMOUSEOVER="rbisf.style.backgroundColor='#ffd27a'" ONMOUSEOUT="rbisf.style.backgroundColor='MintCream'"
																	RUNAT="server" CAUSESVALIDATION="False" TEXT="Go..." CSSCLASS="sbttn"></ASP:BUTTON>
															</TD>
														</TR>
														<TR VALIGN="top">
															<TD ID="rbipa" WIDTH="50%">
																<P>
																	<STRONG>Pemakaian Rata-rata</STRONG>
																	<br />
																	Input pemakaian rata-rata per bulan.
																</P>
															</TD>
															<TD ALIGN="left">
																<ASP:BUTTON ID="btnPemakaian" ONMOUSEOVER="rbisf.style.backgroundColor='#ffd27a'" ONMOUSEOUT="rbisf.style.backgroundColor='MintCream'"
																	RUNAT="server" CAUSESVALIDATION="False" TEXT="Go..." CSSCLASS="sbttn"></ASP:BUTTON>
															</TD>
														</TR>
														<TR VALIGN="top">
															<TD ID="rbiha" WIDTH="50%">
																<P>
																	<STRONG>Perubahan Harga</STRONG>
																	<br />
																	Input perubahan harga.
																</P>
															</TD>
															<TD ALIGN="left">
																<ASP:BUTTON ID="btnUbahHarga" ONMOUSEOVER="rbisf.style.backgroundColor='#ffd27a'" ONMOUSEOUT="rbisf.style.backgroundColor='MintCream'"
																	RUNAT="server" CAUSESVALIDATION="False" TEXT="Go..." CSSCLASS="sbttn"></ASP:BUTTON>
															</TD>
														</TR>
														<TR STYLE="DISPLAY: none" VALIGN="top">
															<TD ID="rbisf" WIDTH="50%">
																<P><STRONG>Standard Field</STRONG><br />
																	Update data Standard Field; yang dapat di-update dari standrad field: GROUP, 
																	KELOMPOK, TYPE, SATUAN
																</P>
															</TD>
															<TD ALIGN="left">
																<ASP:BUTTON ID="btnStandardField" ONMOUSEOVER="rbisf.style.backgroundColor='#ffd27a'"
																	ONMOUSEOUT="rbisf.style.backgroundColor='MintCream'" RUNAT="server" CAUSESVALIDATION="False"
																	TEXT="Go..." CSSCLASS="sbttn"></ASP:BUTTON>
															</TD>
														</TR>
														<TR STYLE="DISPLAY: none" VALIGN="top">
															<TD ID="rbili" WIDTH="50%">
																<P><STRONG>Line Item</STRONG>
																	<br />
																	Update data Product Account
																</P>
															</TD>
															<TD ALIGN="left">
																<ASP:BUTTON ID="btnProductAccount" ONMOUSEOVER="rbili.style.backgroundColor='#ffd27a'"
																	ONMOUSEOUT="rbili.style.backgroundColor='MintCream'" RUNAT="server" CAUSESVALIDATION="False"
																	TEXT="Go..." CSSCLASS="sbttn"></ASP:BUTTON>
															</TD>
														</TR>
														<TR STYLE="DISPLAY: none" VALIGN="top">
															<TD ID="rbis" WIDTH="50%">
																<P><STRONG>Supplier</STRONG>
																	<br />
																	Update data Supplier/PBF
																</P>
															</TD>
															<TD ALIGN="left">
																<ASP:BUTTON ID="btnSupplier" ONMOUSEOVER="rbis.style.backgroundColor='#ffd27a'" ONMOUSEOUT="rbis.style.backgroundColor='MintCream'"
																	RUNAT="server" CAUSESVALIDATION="False" TEXT="Go..." CSSCLASS="sbttn"></ASP:BUTTON>
															</TD>
														</TR>
													</TABLE>
												</P>
											</TD>
										</TR>
									</TABLE>
									<!-- End Related Links --></TD>
							</TR>
						</TABLE>
						</div> 
					</TD>
				</TR>
				<tr>
				    <td valign="bottom" style="padding-left: 20px">
				        <!-- BEGIN PAGE FOOTER-->
			            <MODULE:COPYRIGHT id="mdlCopyRight" runat="server" PathPrefix=".."></MODULE:COPYRIGHT>
			            <!-- END PAGE FOOTER-->	
				    </td>
				</tr>
			</TABLE>
		</FORM>
		<SCRIPT LANGUAGE="javascript" SRC="/qislib/scripts/common/common.js"></SCRIPT>
		<SCRIPT LANGUAGE="vbscript" SRC="/qislib/scripts/common/common.vbs"></SCRIPT>
	</BODY>
</HTML>
