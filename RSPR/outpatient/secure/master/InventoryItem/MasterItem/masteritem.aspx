<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="masteritem.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.MasterItem.masterItem" %>

<html>
<head>
    <title>Item Obat dan Alat Kesehatan</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>
    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>
</head>
<body ms_positioning="GridLayout">
    <form id="frmMasterItem" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <table cellspacing="0" cellpadding="2" width="100%" border="0" height="100%">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td valign="top" width="100%" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25" colspan="2">
                                            Item Obat dan Alat Kesehatan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" valign="top" align="middle" style="width: 50%;">
                                            <table width="100%">
                                                <tr>
                                                    <td width="15%">
                                                        <asp:LinkButton ID="lbtnKodeItem" runat="server" Text="Kode Item" CausesValidation="False" />
                                                    </td>
                                                    <td width="40%">
                                                        <asp:TextBox ID="txtKodeItem" runat="server" Width="404" AutoPostBack="true" CssClass="txtautogenerate" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <asp:CheckBox ID="chkStatusAktif" runat="server" Checked="True" Text="Aktif" AutoPostBack="False">
                                                        </asp:CheckBox>
                                                        &nbsp;&nbsp;
                                                        <asp:CheckBox ID="chkdiskontrans" runat="server" Checked="False" Text="Diskon" AutoPostBack="False">
                                                        </asp:CheckBox>
                                                        &nbsp;&nbsp;
                                                        <asp:CheckBox ID="chkFormalium" runat="server" Checked="False" Text="Formularium"
                                                            AutoPostBack="False"></asp:CheckBox>
                                                        &nbsp;&nbsp;
                                                        <asp:CheckBox runat="server" ID="chkNonStock" Text="Bukan Stock"></asp:CheckBox>
                                                        &nbsp;&nbsp;
                                                        <asp:CheckBox ID="chkVoucher" runat="server" Text="Voucher" AutoPostBack="False"
                                                            Checked="False" Visible="false"></asp:CheckBox>
                                                        &nbsp;&nbsp;
                                                        <asp:CheckBox ID="chkDiscountGetVoucher" runat="server" Text="Diskon Ikut Voucher"
                                                            AutoPostBack="False" Visible="false"></asp:CheckBox>
                                                         &nbsp;&nbsp;
                                                        <asp:CheckBox ID="chkApproval" runat="server" Text="Persetujuan"  Checked="False"
                                                            AutoPostBack="False"></asp:CheckBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Nama Item
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNamaItem" runat="server" Width="404" MaxLength="50"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfldNamaItem" runat="server" Display="dynamic" ErrorMessage="Nama Item"
                                                            ControlToValidate="txtNamaItem">** 
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Barcode ID.
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtBarcodeID" runat="server" Width="404" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Catalog No.
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNamaItem2" runat="server" Width="404" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Satuan Kecil - Besar
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlSatuanKecil" runat="server" Width="200" CssClass="drpdwn">
                                                        </asp:DropDownList>
                                                        <asp:Label ID="lblSatuanKecil" runat="server" Text="1.00" Visible="False"></asp:Label>
                                                        <asp:DropDownList ID="ddlSatuanBesar" runat="server" Width="200" CssClass="drpdwn">
                                                        </asp:DropDownList>
                                                        <asp:Label ID="lblSatuanBesar" runat="server" Text="1.00" Visible="False"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Kadar
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtKadar" runat="server" Width="200" Style="text-align: right;"></asp:TextBox>
                                                        <asp:DropDownList ID="ddlSatuanKadar" runat="server" Width="200" CssClass="drpdwn">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Cara Pemotongan Stock
                                                    </td>
                                                    <td>
                                                        <table width="404" cellspacing="1" bgcolor="#ffd27a">
                                                            <tr>
                                                                <td width="50%" bgcolor="#F5F5F5">
                                                                    <table cellpadding="1" width="100%">
                                                                        <tr>
                                                                            <td width="50%" class="rheaderexpable" align="center">
                                                                                Penjualan
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td width="50%">
                                                                                <asp:RadioButton ID="rbtnPSK" runat="server" Text="Dibulatkan ke Satuan Kecil" GroupName="__PS2">
                                                                                </asp:RadioButton>
                                                                                <br />
                                                                                <asp:RadioButton ID="rbtnPSP" runat="server" Text="Sesuai Pemakaian" GroupName="__PS2">
                                                                                </asp:RadioButton>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td width="48%" bgcolor="#F5F5F5">
                                                                    <table cellpadding="1" width="100%">
                                                                        <tr>
                                                                            <td width="48%" class="rheaderexpable" align="center">
                                                                                Pemakaian
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td width="48%">
                                                                                <asp:RadioButton ID="rbtnSK" runat="server" Text="Dibulatkan ke Satuan Kecil" GroupName="__PS1">
                                                                                </asp:RadioButton>
                                                                                <br />
                                                                                <asp:RadioButton ID="rbtnSP" runat="server" Text="Sesuai Pemakaian" GroupName="__PS1">
                                                                                </asp:RadioButton>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td class="rbodycol" valign="top" align="middle" style="width: 50%;">
                                            <table width="100%">
                                                <tr>
                                                    <td width="15%">
                                                        Jenis Item
                                                    </td>
                                                    <td width="40%">
                                                        <asp:DropDownList ID="ddlJenisItem" runat="server" Width="404">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Product Account
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlProductAccount" runat="server" Width="404">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Group Item
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlGroup" runat="server" Width="404">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Sub Group Item
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlKelompok" runat="server" Width="404">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Tipe Item
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlType" runat="server" Width="404">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="height: 1px;">
                                                        <hr />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Status D.K.K.
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlLaporanDKK" runat="server" Width="404">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Status V/E/N
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlVEN" runat="server" Width="404">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:LinkButton ID="lbtnTherapi" CausesValidation="False" Text="Kelompok Therapi"
                                                            runat="server"></asp:LinkButton>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtKodeTherapi" runat="server" Width="100" AutoPostBack="true"></asp:TextBox>
                                                        <asp:TextBox runat="server" ID="lblNamaTherapi" Width="300" ReadOnly="True" CssClass="txtsummary"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:LinkButton ID="lbtnDtTherapi" CausesValidation="False" Text="Therapi" runat="server"></asp:LinkButton>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtKodeDtTherapi" runat="server" Width="100" AutoPostBack="true"></asp:TextBox>
                                                        <asp:TextBox runat="server" ID="lblNamaDtTherapi" Width="300" ReadOnly="True" CssClass="txtsummary"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        User PenanggungJawab
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtUserPJ" runat="server" Width="404" ReadOnly="true"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td width="100%" colspan="2">
                                            <telerik:RadTabStrip ID="rtsMasterItem" runat="server" Skin="Windows7" MultiPageID="rmpMasterItem"
                                                SelectedIndex="0" CssClass="tabStrip" CausesValidation="false">
                                                <Tabs>
                                                    <telerik:RadTab Text="Data Nilai">
                                                    </telerik:RadTab>
                                                    <telerik:RadTab Text="Data Pemasok">
                                                    </telerik:RadTab>
                                                    <telerik:RadTab Text="Perencanaan Persediaan">
                                                    </telerik:RadTab>
                                                    <telerik:RadTab Text="Data Zat Aktif">
                                                    </telerik:RadTab>
                                                    <telerik:RadTab Text="Data Indikasi">
                                                    </telerik:RadTab>
                                                </Tabs>
                                            </telerik:RadTabStrip>
                                            <telerik:RadMultiPage ID="rmpMasterItem" runat="server" SelectedIndex="0" CssClass="multiPage"
                                                BackColor="#DFE9F5" BorderStyle="Solid" BorderColor="#DFE9F5" BorderWidth="2"
                                                Width="100%">
                                                <telerik:RadPageView ID="RadPageView2" runat="server">
                                                    <table cellspacing="0" cellpadding="0" width="100%" style="background-color: #FBFDFF">
                                                        <tr>
                                                            <td class="rbodycol" valign="top" style="width: 50%;">
                                                                <table width="100%">
                                                                    <tr style="display: none;">
                                                                        <td width="15%">
                                                                            [I] Harga Jual Standard
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtHJStandart" runat="server" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td>
                                                                            [II] Margin Satuan
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtMarkupSatuan" runat="server" MaxLength="5" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td>
                                                                            [III] Margin Batasan Harga
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlMarkupGroup" runat="server" Width="404" Style="text-align: right;">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Harga Eceran Tertinggi
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtHET" runat="server" MaxLength="9" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Diskon Penjualan
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtDiscPasien" runat="server" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Toleransi Qty Opname
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtToleransiQty" runat="server" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none">
                                                                        <td>
                                                                            Toleransi Nilai
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtToleransiNilai" runat="server" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none">
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                            <asp:CheckBox ID="chkPPn" runat="server" Text="PPN" Enabled="False"></asp:CheckBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td class="rbodycol" valign="top" align="right" style="width: 50%;">
                                                                <table align="right">
                                                                    <td class="rBodyInfo" height="20" colspan="2" style="width: 400; height: 100%; background-color: #ffd27a;">
                                                                        <table width="100%" style="background-color: MintCream; height: 100%;" cellspacing="1"
                                                                            cellpadding="2">
                                                                            <tr>
                                                                                <td width="100%" style="text-align: center" class="rheaderexpable" colspan="2">
                                                                                    Informasi Harga Item
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="40%" style="text-align: right;">
                                                                                    Harga Satuan Besar:
                                                                                </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="lblHargaSatuanBesar" runat="server" Text="0.00"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="height: 1px; background-color: #ffd27a; width: 100%;" colspan="2">
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right;">
                                                                                    Harga Satuan Kecil:
                                                                                </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="lblHargaSatuanKecil" runat="server" Text="0.00"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="height: 1px; background-color: #ffd27a; width: 100%;" colspan="2">
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right;">
                                                                                    HNA Satuan Kecil + PPN:
                                                                                </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="lblHargaSatuanKecilPPn" runat="server" Text="0.00"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="height: 1px; background-color: #ffd27a; width: 100%;" colspan="2">
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right;">
                                                                                    Harga Rata-rata:
                                                                                </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="lblHargaRata2" runat="server" Text="0.00"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="height: 1px; background-color: #ffd27a; width: 100%;" colspan="2">
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right;">
                                                                                    Harga Beli Terakhir:
                                                                                </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="lblHargaLama" runat="server" Text="0.00"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="height: 1px; background-color: #ffd27a; width: 100%;" colspan="2">
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right;">
                                                                                    Diskon Beli Terakhir:
                                                                                </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="txtDiscount" runat="server" Text="0.00"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="RadPageView3" runat="server">
                                                    <table cellspacing="0" cellpadding="0" width="100%" style="background-color: #FBFDFF">
                                                        <tr>
                                                            <td class="rbodycol" align="middle" style="width: 50%;">
                                                                <table width="100%">
                                                                    <tr style="display: none">
                                                                        <td width="15%">
                                                                            ABC Status
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:Label runat="server" ID="lblABCStatus"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none">
                                                                        <td>
                                                                            <asp:LinkButton ID="lbtnKodeGudang" CausesValidation="False" Text="Kode Gudang" runat="server"></asp:LinkButton>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtKodeGudang" runat="server" Width="100%" AutoPostBack="true"></asp:TextBox>
                                                                            <asp:Label runat="server" ID="lblNamaGudang"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none">
                                                                        <td>
                                                                            Lokasi
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlLokasi" runat="server" CssClass="drpdwn" Width="100%">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="15%">
                                                                            <asp:LinkButton ID="lbtnProdusen" CausesValidation="False" Text="Produsen" runat="server"></asp:LinkButton>
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtKodeProdusen" runat="server" Width="100" AutoPostBack="true"></asp:TextBox>
                                                                            <asp:Label runat="server" ID="lblNamaProdusen"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:LinkButton ID="lbtnPBF1" CausesValidation="False" Text="Supplier" runat="server"></asp:LinkButton>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtPBF1" runat="server" Width="100" AutoPostBack="true"></asp:TextBox>
                                                                            <asp:Label runat="server" ID="lblPBF1"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:LinkButton ID="lbtnPBF2" CausesValidation="False" Text="Supplier Tender" runat="server"></asp:LinkButton>
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtPBF2" runat="server" Width="100" AutoPostBack="true"></asp:TextBox>
                                                                            <asp:Label runat="server" ID="lblPBF2"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Keterangan Tender
                                                                        </td>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlTender" runat="server" Width="404" AutoPostBack="true" CssClass="drpdwn">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Harga Tender
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtHargaTender" runat="server" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Discount Tender
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtDiscountTender" runat="server" Width="404" Style="text-align: right;"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td class="rbodycol" align="middle" style="width: 50%;">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="RadPageView4" runat="server">
                                                    <table cellspacing="0" cellpadding="0" width="100%" style="background-color: #FBFDFF">
                                                        <tr>
                                                            <td class="rbodycol" valign="top" style="width: 50%;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="15%">
                                                                            R.O.P.
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:RadioButton ID="rbtnStatis" runat="server" Checked="True" Text="Statis" GroupName="__ROP">
                                                                            </asp:RadioButton>
                                                                            <asp:RadioButton ID="rbtnDinamis" runat="server" Checked="False" Text="Dinamis" GroupName="__ROP">
                                                                            </asp:RadioButton>
                                                                            &nbsp;&nbsp;
                                                                            <asp:CheckBox ID="chkCekExpired" runat="server" Text="Cek Expired"></asp:CheckBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Backward
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtBackward" runat="server" Width="100"></asp:TextBox>
                                                                            hari (Jumlah Hari Pemakaian Rata-rata)
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Forward
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtForward" runat="server" Width="100"></asp:TextBox>
                                                                            hari (Jumlah Hari Kebutuhan Persediaan)
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td>
                                                                            Lead Time
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtLeadTime" runat="server" Width="404"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td>
                                                                            Safety Time
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtSafetyTime" runat="server" Width="404"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none;">
                                                                        <td>
                                                                            Faktor (X)
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtSafetyStock" runat="server" Width="404"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Qty on Order
                                                                        </td>
                                                                        <td>
                                                                            <asp:Label ID="lblQtyOnOrder" runat="server" Width="404"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td class="rbodycol" valign="top" style="width: 50%;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td>
                                                                            Keterangan R.O.P. (Re-Order Point):
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <table>
                                                                                <tr>
                                                                                    <td valign="top">
                                                                                        <b>Statis</b>
                                                                                    </td>
                                                                                    <td valign="top">
                                                                                        dihitung berdasarkan Min dan Max saldo item per Gudang dan Lokasi
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td valign="top">
                                                                                        <b>Dinamis</b>        
                                                                                    </td>
                                                                                    <td>
                                                                                        dihitung berdasarkan rumus berikut
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                    </td>
                                                                                    <td>
                                                                                        <b>(</b> Qty Pemakaian Rata-rata <b>X</b> Jumlah Hari Forward <b>) -</b> Qty Saldo Tersedia
                                                                                    </td>
                                                                                </tr>
                                                                            </table>                                                                            
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="RadPageView6" runat="server">
                                                    <table width="100%" style="background-color: #FBFDFF">
                                                        <tr>
                                                            <td width="100%">
                                                                <!-- BEGIN ADDNEW ACTIVE SUBSTANCE -->
                                                                <asp:Panel ID="panelZatAktifAddNewRow" runat="server">
                                                                    <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                        width="100%">
                                                                        <tr class="rheader">
                                                                            <td class="rheadercol" align="left" height="25">
                                                                                Edit atau Tambah Data Komposisi Zat Aktif Per Item
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <table cellspacing="1" cellpadding="1" width="100%">
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            <asp:LinkButton ID="lbtnKodeZatAktif" runat="server" Text="Zat Aktif" CausesValidation="False"></asp:LinkButton>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="AddNewRow_txtKodeZatAktif" runat="server" Width="100%" AutoPostBack="True"
                                                                                                MaxLength="10"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtKodeZatAktif" runat="server" Display="dynamic"
                                                                                                ErrorMessage="Kode Zat Aktif" ControlToValidate="AddNewRow_txtKodeZatAktif">**
                                                                                            </asp:RequiredFieldValidator>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Nama Zat Aktif
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="AddNewRow_txtNamaZatAktif" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <table width="100%">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Button ID="btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100">
                                                                                            </asp:Button>
                                                                                            <asp:Button ID="btnDone" runat="server" Text="Close" CausesValidation="False" CssClass="sbttn"
                                                                                                Width="100"></asp:Button>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                                <!-- END ADDNEW ACTIVE SUBSTANCE-->
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <asp:DataGrid ID="dgZatAktif" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                    BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%" Width="100%"
                                                                    AllowPaging="False" PageSize="20" DataKeyField="kdItem" ShowFooter="True" CellPadding="0">
                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                    <EditItemStyle Font-Bold="false" />
                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                    <Columns>
                                                                        <asp:BoundColumn DataField="kdZatAktif" Visible="False"></asp:BoundColumn>
                                                                        <asp:BoundColumn DataField="nmZatAktif" Visible="False"></asp:BoundColumn>
                                                                        <asp:TemplateColumn RUNAT="server" HeaderText="Kode Zat Aktif">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdZatAktif") %>'
                                                                                    ID="_lblKdZatAktif">
                                                                                </asp:Label>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn RUNAT="server" HeaderText="Nama Zat Aktif" HeaderStyle-HorizontalAlign="Left"
                                                                            ItemStyle-HorizontalAlign="Left">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmZatAktif") %>'
                                                                                    ID="_lblNmZatAktif">
                                                                                </asp:Label>
                                                                            </ItemTemplate>
                                                                            <FooterTemplate>
                                                                                <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                    Text="Tambah Data" />
                                                                            </FooterTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn>
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                    ALT="Delete this item" CommandName="__delete" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                            <ItemTemplate>
                                                                                <input type="button" onclick="javascript:hwnd=window.open('ZatAktifDEM.aspx?kditem=<%# DataBinder.Eval(Container.DataItem, "kdItem") %>&kdzataktif=<%# DataBinder.Eval(Container.DataItem, "kdZatAktif") %>','_DEM', 'height=550,width=800, status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=yes');hwnd.focus();"
                                                                                    value="D.E.M" class="sbttn" />
                                                                            </ItemTemplate>
                                                                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                        </asp:TemplateColumn>
                                                                    </Columns>
                                                                </asp:DataGrid>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="RadPageView7" runat="server">
                                                    <table width="100%" style="background-color: #FBFDFF">
                                                        <tr>
                                                            <td width="100%">
                                                                <!-- BEGIN ADDNEW ACTIVE SUBSTANCE -->
                                                                <asp:Panel ID="panelIndikasiAddNewRow" runat="server">
                                                                    <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                        width="100%">
                                                                        <tr class="rheader">
                                                                            <td class="rheadercol" align="left" height="25">
                                                                                Edit atau Tambah Indikasi per Item
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <table cellspacing="1" cellpadding="1" width="100%">
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            <asp:LinkButton ID="lbtnKodeIndikasi" runat="server" Text="Kode Indikasi" CausesValidation="False"></asp:LinkButton>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="AddNewRow_txtKodeIndikasi" runat="server" AutoPostBack="true" Width="100%"
                                                                                                MaxLength="10"></asp:TextBox>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtKodeIndikasi" runat="server" Display="dynamic"
                                                                                                ErrorMessage="Kode Indikasi" ControlToValidate="AddNewRow_txtKodeIndikasi">**
                                                                                            </asp:RequiredFieldValidator>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Nama Indikasi
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="AddNewRow_txtNamaIndikasi" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                                <table width="100%">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Button ID="btnAddNewRow1" runat="server" Text="Save" CssClass="sbttn" Width="100">
                                                                                            </asp:Button>
                                                                                            <asp:Button ID="btnDone1" runat="server" Text="Close" CausesValidation="False" CssClass="sbttn"
                                                                                                Width="100"></asp:Button>
                                                                                        </td>
                                                                                        <td>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                                <!-- END ADDNEW ACTIVE SUBSTANCE-->
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <asp:DataGrid ID="dgIndikasi" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                    BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%" Width="100%"
                                                                    AllowPaging="False" PageSize="20" DataKeyField="kdItem" ShowFooter="True" CellPadding="0">
                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                    <EditItemStyle Font-Bold="false" />
                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                    <Columns>
                                                                        <asp:TemplateColumn>
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton runat="server" ID="__ibtnDelete1" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                    AlternateText="Delete this item" CommandName="__delete1" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:BoundColumn DataField="kdIndikasi" Visible="False"></asp:BoundColumn>
                                                                        <asp:BoundColumn DataField="nmIndikasi" Visible="False"></asp:BoundColumn>
                                                                        <asp:TemplateColumn RUNAT="server" HeaderText="Kode Indikasi">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdIndikasi") %>'
                                                                                    ID="_lblKdIndikasi">
                                                                                </asp:Label>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn RUNAT="server" HeaderText="Nama Indikasi" HeaderStyle-HorizontalAlign="Left"
                                                                            ItemStyle-HorizontalAlign="Left">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmIndikasi") %>'
                                                                                    ID="_lblNmIndikasi">
                                                                                </asp:Label>
                                                                            </ItemTemplate>
                                                                            <FooterTemplate>
                                                                                <asp:LinkButton runat="server" ID="_btnAddNewRow1" CausesValidation="False" CommandName="_AddNewRow1"
                                                                                    Text="Tambah Data" />
                                                                            </FooterTemplate>
                                                                        </asp:TemplateColumn>
                                                                    </Columns>
                                                                </asp:DataGrid>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </telerik:RadPageView>
                                                <telerik:RadPageView ID="RadPageView5" runat="server">
                                                    <table cellspacing="0" cellpadding="0" width="100%" style="background-color: #FBFDFF">
                                                        <tr>
                                                            <td class="rbodycol" valign="top" style="width: 50%;">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td align="left" rowspan="5" style="width: 15%; text-align: center;" class="rheaderexpable">
                                                                            <font size="8">Label</font>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 40%;">
                                                                            <asp:DropDownList ID="ddlLabel1" runat="server" Width="404">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlLabel2" runat="server" Width="404">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlLabel3" runat="server" Width="404">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:DropDownList ID="ddlLabel4" runat="server" Width="404">
                                                                            </asp:DropDownList>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td class="rbodycol" valign="top" style="width: 50%;">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </telerik:RadPageView>
                                            </telerik:RadMultiPage>
                                        </td>
                                    </tr>
                                </table>
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr>
                                        <td align="left">
                                            <p>
                                                <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                </asp:ValidationSummary>
                                            </p>
                                        </td>
                                    </tr>
                                </table>
                                <!-- Begin Related Links -->
                                <table cellspacing="0" cellpadding="1" width="100%" border="0" style="display: none">
                                    <tr>
                                        <td class="rBodyInfo" valign="top" width="99%">
                                            <table width="100%">
                                                <tr class="rheaderexpable">
                                                    <td align="left" height="10" valign="middle">
                                                        <img style="cursor: hand" onclick="javascript:if (RelatedLinkDiv.style.display == '') {RelatedLinkDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { RelatedLinkDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                            alt="Collapse/Expand" src="/qislib/images/collapse.png" align="absmiddle">
                                                        Quick Menu:
                                                    </td>
                                                </tr>
                                            </table>
                                            <div id="RelatedLinkDiv" style="overflow: auto; width: 100%;">
                                                <table cellspacing="10" cellpadding="0" width="100%" bgcolor="mintcream">
                                                    <tr style="display: none" valign="top">
                                                        <td id="rbiza" width="50%">
                                                            <p>
                                                                <font class="txtstrong">Zat Aktif</font>
                                                                <br />
                                                                Input zat aktif obat.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnZatAktif" ONMOUSEOVER="rbisf.style.backgroundColor='#ffd27a'"
                                                                ONMOUSEOUT="rbisf.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                                                                Text="Go..." CssClass="sbttn"></asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none" valign="top">
                                                        <td id="rbisf" width="50%">
                                                            <p>
                                                                <font class="txtstrong">Standard Field</font><br />
                                                                Update data Standard Field; yang dapat di-update dari standrad field: GROUP, KELOMPOK,
                                                                TYPE, SATUAN
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnStandardField" ONMOUSEOVER="rbisf.style.backgroundColor='#ffd27a'"
                                                                ONMOUSEOUT="rbisf.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                                                                Text="Go..." CssClass="sbttn"></asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none" valign="top">
                                                        <td id="rbili" width="50%">
                                                            <p>
                                                                <font class="txtstrong">Line Item</font>
                                                                <br />
                                                                Update data Product Account
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnProductAccount" ONMOUSEOVER="rbili.style.backgroundColor='#ffd27a'"
                                                                ONMOUSEOUT="rbili.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                                                                Text="Go..." CssClass="sbttn"></asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none" valign="top">
                                                        <td id="rbis" width="50%">
                                                            <p>
                                                                <font class="txtstrong">Supplier</font>
                                                                <br />
                                                                Update data Supplier/PBF
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnSupplier" ONMOUSEOVER="rbis.style.backgroundColor='#ffd27a'" ONMOUSEOUT="rbis.style.backgroundColor='MintCream'"
                                                                runat="server" CausesValidation="False" Text="Go..." CssClass="sbttn"></asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr valign="top" style="display: none">
                                                        <td id="rbcic" width="50%">
                                                            <p>
                                                                <font class="txtstrong">Create Item Code</font>
                                                                <br />
                                                                Create Item Code
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnCreateItemCode" ONMOUSEOVER="rbcic.style.backgroundColor='#ffd27a'"
                                                                ONMOUSEOUT="rbcic.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                                                                Text="Go..." CssClass="sbttn"></asp:Button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <!-- End Related Links -->
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <div id="divRightPanelTasksContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnKonversiSatuan" onmouseover="rbiks.style.backgroundColor='#ffd27a'"
                onmouseout="rbiks.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                Text="Go" CssClass="sbttn"></asp:Button>
            <div class='qmtitle'>
                Konversi Satuan</div>
            <div class='qmdescription'>
                Definisi Satuan dan Faktor Barang.</div>
        </div>
        <%--<div class="rightPanelContent borderBox">
            <asp:Button ID="btnPemakaian" onmouseover="rbipa.style.backgroundColor='#ffd27a'"
                onmouseout="rbipa.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                Text="Go" CssClass="sbttn"></asp:Button>
            <div class='qmtitle'>
                Pemakaian Rata-rata</div>
            <div class='qmdescription'>
                Definisi Pemakaian Rata-rata per Bulan.</div>
        </div>--%>
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnUbahHarga" onmouseover="rbiha.style.backgroundColor='#ffd27a'"
                onmouseout="rbiha.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                Text="Go" CssClass="sbttn"></asp:Button>
            <div class='qmtitle'>
                Harga Barang</div>
            <div class='qmdescription'>
                Definisi Harga Satuan dan Rata-rata Barang.</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnKontrakPembelian" onmouseover="rbiks.style.backgroundColor='#ffd27a'"
                onmouseout="rbiks.style.backgroundColor='MintCream'" runat="server" CausesValidation="False"
                Text="Go" CssClass="sbttn"></asp:Button>
            <div class='qmtitle'>
                Kontrak Pembelian Supplier</div>
            <div class='qmdescription'>
                Definisi kontrak pembelian item dari supplier.</div>
        </div>
         <div class="rightPanelContent borderBox">
            <asp:Button ID="btnSubstitusi" runat="server" CausesValidation="False"
                Text="Go" CssClass="sbttn"></asp:Button>
            <div class='qmtitle'>
                Substitusi Obat</div>
            <div class='qmdescription'>
                Definisi Substitusi Obat.</div>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>
    <script language="javascript" src="/qislib/scripts/common/common.js"></script>
    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>
</body>
</html>
