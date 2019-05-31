<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="po.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.PurchaseOrder.po" %>

<html>
<head>
    <title>Pemesanan Barang (Purchase Order)</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <script language="javascript">
		<!--

        var oPopup = window.createPopup();

        function richDialog() {
            var lefter = event.offsetY + 0;
            var topper = event.offsetX + 15;
            //var lefter = (screen.availWidth - 200)/2;
            //var topper = (screen.availHeight - 550)/2;
            oPopup.document.createStyleSheet('/qislib/css/styles.css')
            oPopup.document.body.innerHTML = oDialog.innerHTML;
            // x,y,w,h
            oPopup.show(topper, lefter + 20, 550, 250, ttip);
        }
		
		//-->
    </script>
</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="frmPesanan" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div class="transparent" id="Popup">
            <div>
                <font color="red" size="72">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table cellspacing="0" cellpadding="2" width="100%" height="100%" border="0">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server" />
            </td>
        </tr>
        <tr>
            <td valign="top" width="100%" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Pemesanan Barang (Purchase Order)
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:LinkButton ID="lBtnNoBukti" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                            title="Click here to select from existing data." onmouseout="window.status='';return true;"
                                                                            CausesValidation="False" Text="No. Bukti" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoBukti" runat="server" MaxLength="10" Width="95%" AutoPostBack="true" CssClass="txtautogenerate" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Tanggal Pesan
                                                                    </td>
                                                                    <td>
                                                                        <Module:webcal ID="cal" runat="server" />
                                                                        &nbsp;&nbsp;Tanggal Kirim
                                                                        <Module:webcal ID="calKirim" runat="server" />
                                                                    </td>                                                                    
                                                                </tr>
                                                                <asp:Panel ID="pnlTglExpired" runat="server">
                                                                    <tr>
                                                                        <td width="20%">
                                                                            Tanggal Expired
                                                                        </td>
                                                                        <td>
                                                                            <Module:webcal ID="calExpired" runat="server" DontResetDate="True" />
                                                                        </td>
                                                                    </tr>
                                                                </asp:Panel>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:Label ID="lblStatusPO" CausesValidation="False" Text="Status PO" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlStatusPO" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:LinkButton ID="lbtnKodeSupplier" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                            title="Click here to select from existing data." onmouseout="window.status='';return true;"
                                                                            CausesValidation="False" Text="Kode Supplier" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeSupplier" runat="server" MaxLength="15" Width="95%" AutoPostBack="true" />
                                                                        <asp:RequiredFieldValidator ID="rfvKodeSupplier" runat="server" ControlToValidate="txtKodeSupplier"
                                                                            ErrorMessage="Kode Supplier" Display="dynamic">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <span id="ttip" style="cursor: hand; color: green" onclick="richDialog()">
                                                                            <asp:Label ID="lblInformasiSupplier" Text="Informasi Supplier:" runat="server" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:Label ID="lblKodePemesan" CausesValidation="False" Text="Pemesan" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlKodePemesan" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:Label ID="lblKodeTOF" CausesValidation="False" Text="Jenis Pembayaran" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlKodeTOF" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:Label ID="lblKodeFOB" CausesValidation="False" Text="Harga Franko" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlKodeFOB" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="height: 13px" width="20%">
                                                                        Mata Uang
                                                                    </td>
                                                                    <td style="height: 13px">
                                                                        <asp:DropDownList ID="ddlMataUang" runat="server" Width="95%" AutoPostBack="true" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Nilai Kurs (Rp)
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKurs" runat="server" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Visible="False" Enabled="False" Text="Posting" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPPn" runat="server" AutoPostBack="True" Text="PPN" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- Begin Informasi Supplier -->
                                                <div id="oDialog" style="display: none">
                                                    <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 1px solid #666666;
                                                        filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#2688C5, EndColorStr=#54AEED);
                                                        padding: 10px">
                                                        <table cellspacing="0" cellpadding="1" width="100%" border="0">
                                                            <tr>
                                                                <td valign="middle" style="color: #ffffff">
                                                                    Informasi Supplier
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="rBodyInfo" valign="middle" width="99%" height="100%">
                                                                    <table width="100%" bgcolor="#EDF4FA" id="__infp" style="height: 100%">
                                                                        <tr>
                                                                            <td valign="top" width="50%">
                                                                                <table width="100%">
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Nama :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblNamaSupplier" runat="server" MaxLength="25" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Alamat :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblAlamat" runat="server" MaxLength="50" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Kota :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblKota" runat="server" MaxLength="50" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Nilai Minimum Pemesanan :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblNilaiMinimumPemesanan" runat="server" MaxLength="50" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td valign="top" width="50%">
                                                                                <table width="100%">
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Telepon :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblTelepon" runat="server" MaxLength="50" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Fax :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblFax" runat="server" MaxLength="50" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Kode Pos :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblKodePos" runat="server" MaxLength="50" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Contact Person :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblContact" runat="server" MaxLength="50" Width="100%" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!-- End Informasi Supplier -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- BEGIN ADDNEW PEMESANAN -->
                                                <asp:Panel ID="panelPemesananAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Pemesanan Barang
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:CheckBox ID="Pemesanan_AddNewRow_chkBonus" runat="server" AutoPostBack="True"
                                                                                            Text="Bonus" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtCounter" runat="server" Visible="False" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        No. Minta
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtNoMinta" runat="server" MaxLength="10" Text="0.00"
                                                                                            Width="100%" ReadOnly="True" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnKodeItem" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                                            title="Click here to select from existing data." onmouseout="window.status='';return true;"
                                                                                            CausesValidation="False" Text="Kode Item" runat="server" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtKodeItem" runat="server" MaxLength="10" Width="100%"
                                                                                            AutoPostBack="True" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtKodeItem" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_txtKodeItem" ErrorMessage="Kode Item"
                                                                                            Display="dynamic">
																								        ** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <asp:ImageButton ID="lbtnDaftarHargaBeliItem" runat="server" ImageUrl="/qislib/images/packagedetail.png" ImageAlign="AbsMiddle" ToolTip="Lihat informasi harga beli per pemasok"></asp:ImageButton>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_lblNamaItem" runat="server" Width="100%" ReadOnly="true" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtNamaItem" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_lblNamaItem" ErrorMessage="Nama Item"
                                                                                            Display="dynamic">
																								        ** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Qty On Order
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtOPO" runat="server" Text="0.00" Width="100%"
                                                                                            ReadOnly="True" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Kuantitas
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtKuantitas" runat="server" MaxLength="10"
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvKuantitas" runat="server" Display="Dynamic" ErrorMessage="Kuantitas"
                                                                                            Type="Currency" Operator="DataTypeCheck" ControlToValidate="Pemesanan_AddNewRow_txtKuantitas">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvKuantitas1" runat="server" Display="Dynamic" ErrorMessage="Kuantitas"
                                                                                            Type="Currency" Operator="GreaterThan" ControlToValidate="Pemesanan_AddNewRow_txtKuantitas"
                                                                                            ValueToCompare="0.00">
																													        **  Harus lebih dari 0.00 **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtKuantitas" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_txtKuantitas" ErrorMessage="Kuantitas"
                                                                                            Display="dynamic">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Satuan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:DropDownList ID="Pemesanan_AddNewRow_ddlSatuan" runat="server" AutoPostBack="True"
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Faktor
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtFaktor" runat="server" MaxLength="10" Text="0.00"
                                                                                            Width="100%" ReadOnly="True" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Harga
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtharga" runat="server" MaxLength="20" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvHarga" runat="server" Display="Dynamic" ErrorMessage="Harga"
                                                                                            Type="Currency" Operator="DataTypeCheck" ControlToValidate="Pemesanan_AddNewRow_txtHarga">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvHarga1" runat="server" Display="Dynamic" ErrorMessage="Harga"
                                                                                            Type="Currency" Operator="GreaterThan" ControlToValidate="Pemesanan_AddNewRow_txtHarga"
                                                                                            ValueToCompare="0.00">**  Harus lebih dari 0.00 **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtHarga" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtHarga"
                                                                                            ErrorMessage="Harga" Display="dynamic">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none">
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:CheckBox ID="Pemesanan_AddNewRow_chkPPN" runat="server" Text="PPN" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Diskon %
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtDiskon" runat="server" MaxLength="6" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RangeValidator ID="rvDiskon" runat="server" Display="Dynamic" ErrorMessage="Diskon"
                                                                                            Type="Double" ControlToValidate="Pemesanan_AddNewRow_txtDiskon" MinimumValue="0.00"
                                                                                            MaximumValue="100.00">** Angka melewati batas **
                                                                                        </asp:RangeValidator>
                                                                                        <asp:CompareValidator ID="cvDiskon" runat="server" Display="Dynamic" ErrorMessage="Diskon"
                                                                                            Type="Double" Operator="DataTypeCheck" ControlToValidate="Pemesanan_AddNewRow_txtDiskon">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtDiskon" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_txtDiskon" ErrorMessage="Diskon" Display="dynamic">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Diskon2 %
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtDiskon2" runat="server" MaxLength="6" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RangeValidator ID="rvDiskon2" runat="server" Display="Dynamic" ErrorMessage="Diskon2"
                                                                                            Type="Double" ControlToValidate="Pemesanan_AddNewRow_txtDiskon2" MinimumValue="0.00"
                                                                                            MaximumValue="100.00">** Angka melewati batas **
                                                                                        </asp:RangeValidator>
                                                                                        <asp:CompareValidator ID="cvDiskon2" runat="server" Display="Dynamic" ErrorMessage="Diskon2"
                                                                                            Type="Double" Operator="DataTypeCheck" ControlToValidate="Pemesanan_AddNewRow_txtDiskon2">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtDiskon2" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_txtDiskon2" ErrorMessage="Diskon2" Display="dynamic">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Catatan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtCatatan" runat="server" MaxLength="100" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Spesifikasi
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtSpesifikasi" runat="server" MaxLength="10000"
                                                                                            Width="100%" Height="75" TextMode="MultiLine" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="Pemesanan_btnAddNewRow" AccessKey="V" runat="server" Text="Save"
                                                                                            Width="100" CssClass="sbttn" />
                                                                                        <asp:Button ID="Pemesanan_btnDone" AccessKey="D" runat="server" CausesValidation="False"
                                                                                            Text="Close" Width="100" CssClass="sbttn" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr valign="bottom" bgcolor="white">
                                                                        <td align="left" height="25">
                                                                            <p align="right">
                                                                                Data yang sudah ada...
                                                                            </p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <!-- END ADDNEW PEMESANAN -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- START DATAGRID PEMESANAN -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridPemesanan" runat="server" Width="100%" AllowSorting="True"
                                                                CellPadding="0" ShowFooter="True" DataKeyField="counter" Height="100%" GridLines="none"
                                                                BorderWidth="1" BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 4" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="nopesan" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="bonus" runat="server" HeaderText="Bonus" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "bonus") %>'
                                                                                ID="_chkBonus" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nominta" runat="server" HeaderText="No. Minta"
                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nominta") %>'
                                                                                ID="_lblNominta" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td colspan="3" style="color: #000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                            ID="_lblNamaItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" style="width: 60px">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKodeItem" />
                                                                                    </td>
                                                                                    <td class="txtweak" style="width: 60px; font-style: italic; text-align: right;">
                                                                                        Catalog No.
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                            ID="_lblCatalogNo" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "catatan") %>'
                                                                                            ID="_lblCatatan" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "spesifikasiitem") %>'
                                                                                            ID="_lblSpesifikasi" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="True" CommandName="_AddNewRow"
                                                                                onmouseover="window.status='Click here to add new record.';return true" onmouseout="window.status='';return true;"
                                                                                title="Click here to add new record." Text="Tambah Data" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qtypesan" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtypesan"),"#,##0.00") %>'
                                                                                ID="_lblKuantitas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>'
                                                                                ID="_lblSatuan" Visible="False" />
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# IIF(DataBinder.Eval(Container.DataItem,"faktor")=1,DataBinder.Eval(Container.DataItem,"satuan"),DataBinder.Eval(Container.DataItem,"satuan") & "/" & DataBinder.Eval(Container.DataItem,"faktor")) %>'
                                                                                ID="_lblSatuanFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>'
                                                                                ID="_lblNmSatuan" Visible="False" />
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# IIF(DataBinder.Eval(Container.DataItem,"faktor")=1,DataBinder.Eval(Container.DataItem,"nmsatuan"),DataBinder.Eval(Container.DataItem,"nmsatuan") & "/" & DataBinder.Eval(Container.DataItem,"faktor")) %>'
                                                                                ID="_lblNmSatuanFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem,"faktor"), "#,##0.00") %>'
                                                                                ID="_lblFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga2"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="PPN" HeaderStyle-HorizontalAlign="Center"
                                                                        Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "ppn") %>'
                                                                                ID="_chkPPN" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonpc"),"#,##0.00") %>'
                                                                                ID="_lblDiskon" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon2 %" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonpc2"),"#,##0.00") %>'
                                                                                ID="_lblDiskon2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"), "#,##0.00") %>'
                                                                                ID="_lblSubTotal" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="usrupdate" runat="server" HeaderText="Petugas"
                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "usrupdate") %>'
                                                                                ID="_lblPetugas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtweakinfo">
                                                            Tombol Pintas: [ALT+A]=Tambah Data | [Alt+V]=Simpan | [ALT+D]=Close.
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID PEMESANAN -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="40%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="25%">
                                                                        Syarat Pembayaran
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtSyaratBayar" runat="server" Width="100%" Height="120" Font-Size="8pt"
                                                                            Font-Name="Tahoma" TextMode="MultiLine" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td align="right">
                                                            <table width="100%">
                                                                <tr class="rbody">
                                                                    <td align="right">
                                                                    </td>
                                                                    <td align="right">
                                                                        Jumlah Nilai Pemesanan :&nbsp;
                                                                        <asp:Label ID="lblCur" runat="server" />&nbsp;
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox class="right" ID="lblTotal" runat="server" ReadOnly="True" />
                                                                    </td>
                                                                </tr>
                                                                <tr class="rbody" style="display: none">
                                                                    <td align="right">
                                                                    </td>
                                                                    <td align="right">
                                                                        Jumlah Diskon Detil :&nbsp;
                                                                        <asp:Label ID="lblCur2" runat="server" />&nbsp;
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox class="right" ID="lblDiskon" runat="server" ReadOnly="True" />
                                                                    </td>
                                                                </tr>
                                                                <tr class="rbody">
                                                                    <td align="right">
                                                                        <asp:Label ID="lblHdDiskonPc" runat="server" Text="Diskon Final %" />&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
                                                                        <asp:TextBox class="right" ID="txtHdDiskonPc" runat="server" AutoPostBack="True" />
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:Label ID="lblHdDiskonRp" runat="server" Text="Diskon Final Rp" />&nbsp;&nbsp;:&nbsp;&nbsp;
                                                                        <asp:Label ID="lblCur3" runat="server" />&nbsp;
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox class="right" ID="txtHdDiskonRp" runat="server" ReadOnly="True" AutoPostBack="True" />
                                                                    </td>
                                                                </tr>
                                                                <tr class="rbody">
                                                                    <td style="height: 28px" align="right">
                                                                    </td>
                                                                    <td style="height: 28px" align="right">
                                                                        Jumlah PPN (
                                                                        <asp:Label ID="lblKetPPn" runat="server" />%) : &nbsp;
                                                                        <asp:Label ID="lblCur4" runat="server" />&nbsp;
                                                                    </td>
                                                                    <td style="height: 28px" align="right">
                                                                        <asp:TextBox class="right" ID="lblPPn" runat="server" ReadOnly="True" />
                                                                    </td>
                                                                </tr>
                                                                <tr class="rbody">
                                                                    <td align="right">
                                                                    </td>
                                                                    <td align="right">
                                                                        Uang Muka :&nbsp;&nbsp;
                                                                        <asp:Label ID="lblCur5" runat="server" />&nbsp;
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox class="right" ID="lblUangMuka" runat="server" AutoPostBack="True" />
                                                                    </td>
                                                                </tr>
                                                                <tr class="rbody">
                                                                    <td align="right">
                                                                    </td>
                                                                    <td align="right">
                                                                        Saldo Nilai Pemesanan :&nbsp;&nbsp;
                                                                        <asp:Label ID="lblCur6" runat="server" />&nbsp;
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:TextBox class="right" ID="lblTotalAftPPn" runat="server" ReadOnly="True" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="10%">
                                                            Catatan
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtcatatan" runat="server" Width="100%" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
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
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr style="display: none;">
                            <td width="100%">
                                <!-- Begin Related Links -->
                                <table width="100%">
                                    <tr class="rheaderexpable">
                                        <td align="left" height="10" valign="middle">
                                            <img style="cursor: hand" onclick="javascript:if (RelatedLinkDiv.style.display == '') {RelatedLinkDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { RelatedLinkDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                alt="Collapse/Expand" src="/qislib/images/collapse.png" align="absmiddle" />
                                            Quick Menu:
                                        </td>
                                    </tr>
                                </table>
                                <div id="RelatedLinkDiv" style="overflow: auto; width: 100%;">
                                    <table cellspacing="10" cellpadding="0" width="100%" bgcolor="mintcream">
                                        <tr valign="top" style="display:none">
                                            <td width="50%" id="rbiup">
                                                <p>
                                                    <font class="txtstrong">Batal Approval</font>
                                                    <br />
                                                    Batal Approval Transaksi Pemesanan Barang / PO.
                                                </p>
                                            </td>
                                            <td align="left">
                                                <asp:Button ID="btnUnposting" runat="server" CausesValidation="False" onmouseover="rbiup.style.backgroundColor='#ffd27a'"
                                                    onmouseout="rbiup.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn" />
                                            </td>
                                        </tr>
                                        <tr valign="top" style="display: none">
                                            <td width="50%" id="rbiks">
                                                <p>
                                                    <font class="txtstrong">Konversi Satuan</font>
                                                    <br />
                                                    Input Satuan alternatif dan faktor per barang.
                                                </p>
                                            </td>
                                            <td align="left">
                                                <asp:Button ID="btnKonversiSatuan" runat="server" onmouseover="rbiks.style.backgroundColor='#ffd27a'"
                                                    onmouseout="rbiks.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                    CausesValidation="True" />
                                            </td>
                                        </tr>
                                        <tr valign="top" style="display: none">
                                            <td width="50%" id="rbip_none">
                                                <p>
                                                    <font class="txtstrong">Cetak Bukti Pemesanan Barang / PO</font>
                                                    <br />
                                                    Cetak Rincian PO untuk pemesanan barang.
                                                </p>
                                            </td>
                                            <td align="left">
                                                <input type="button" name="btnCetak1" id="btnCetak1" class="sbttn" value="Tanpa Harga"
                                                    onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.ReportsFolder %>fm_/Bukti/PO.asp?is=' + document.getElementById('txtNoBukti').value + '&amp;r=th' + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                &nbsp;-&nbsp;
                                                <input type="button" name="btnCetak2" id="btnCetak2" class="sbttn" value="Dengan Harga"
                                                    onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.ReportsFolder %>fm_/Bukti/PO.asp?is=' + document.getElementById('txtNoBukti').value + '&amp;r=dh' + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                            </td>
                                        </tr>
                                        <tr valign="top" style="display: none">
                                            <td width="50%" id="rbis">
                                                <p>
                                                    <font class="txtstrong">Supplier</font>
                                                    <br />
                                                    Update data Supplier/PBF
                                                </p>
                                            </td>
                                            <td align="left">
                                                <asp:Button ID="btnSupplier" runat="server" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                                                    onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                    CausesValidation="False" />
                                            </td>
                                        </tr>                                        
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <!-- End Related Links -->
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakanPO" runat="server" Text="Go" CausesValidation="False" onmouseout="rbip.style.backgroundColor='MintCream'"
                CssClass="sbttn" onmouseover="rbip.style.backgroundColor='#ffd27a'" />
            <div class='qmtitle'>Cetak Bukti Pemesanan Barang</div>
            <div class='qmdescription'><asp:DropDownList ID="ddlCetakanPO" runat="server" /></div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakPPH" runat="server" Text="Go" CausesValidation="False" onmouseout="rbph.style.backgroundColor='MintCream'"
            CssClass="sbttn" onmouseover="rbph.style.backgroundColor='#ffd27a'" />
            <div class='qmtitle'>Cetak Permintaan Penawaran Harga</div>
            <div class='qmdescription'>Cetak Permintaan Penawaran Harga.</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakReorderPO" runat="server" CausesValidation="False" onmouseover="rbrpo.style.backgroundColor='#ffd27a'"
            onmouseout="rbrpo.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Reorder Pemesanan Barang</div>
            <div class='qmdescription'>Cetak Reorder Pemesanan Barang.</div>
        </div>        
    </div>--%>
    <!-- End Side Menu -->

    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkCetakanPOHarga" Text="Cetak Bukti Pemesanan Barang dengan Harga" Selected="True"></asp:ListItem>
            <%--<asp:ListItem Value="ctkCetakanPOFBesar" Text="Cetak Bukti Pemesanan Barang dengan Format Besar"></asp:ListItem>--%>
            <asp:ListItem Value="ctkCetakanPOTHarga" Text="Cetak Bukti Pemesanan Barang Tanpa Harga"></asp:ListItem>
            <%--<asp:ListItem Value="ctkCetakPPH" Text="Cetak Permintaan Penawaran Harga"></asp:ListItem>--%>
            <%--<asp:ListItem Value="ctkReorderPO" Text="Cetak Reorder Pemesanan Barang"></asp:ListItem>--%>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    </form>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

    <script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
			End Function			
    </script>

    <script language="javascript">
        function ShowPosting() {
            if (typeof (Popup) !== 'undefined') {
                /*x = event.clientX + document.body.scrollLeft; */
                var lebar;
                var tinggi;
                tinggi = delpx(Popup.currentStyle.height);
                lebar = delpx(Popup.currentStyle.width);
                var x = (screen.availWidth - lebar) / 2;
                var y = (screen.availHeight - tinggi) / 2;
                /* get the mouse left position */
                /*y = event.clientY + document.body.scrollTop + 10; */
                /* get the mouse top position  */
                Popup.style.display = "block";
                /* display the pop-up */
                Popup.style.left = x;
                /* set the pop-up's left */
                Popup.style.top = y;
                /* set the pop-up's top */
            }
        }
        function fokus() {
            try {

                var nobukti;
                nobukti = ditrim(document.getElementById('txtNoBukti').value);
                //alert(nobukti);
                var kdsupplier;
                kdsupplier = ditrim(document.getElementById('txtKodeSupplier').value);
                //alert(kdsupplier);
                if (nobukti == '') {
                    if (kdsupplier == '') {
                        document.getElementById('lbtnKodeSupplier').focus();
                        //document.getElementById('lbtnKodeSupplier').select();
                    }
                    else {
                        document.getElementById('gridPemesanan__ctl2__btnAddNewRow').focus();
                        //document.getElementById('Pemesanan_AddNewRow_txtKodeItem').select();
                    }
                }
                else {
                    document.getElementById('lbtnNoBukti').focus();
                }
                if (typeof (document.getElementById('Pemesanan_AddNewRow_txtKodeItem')) !== 'undefined') {
                    var kdbarang;
                    kdbarang = ditrim(document.getElementById('Pemesanan_AddNewRow_txtKodeItem').value);

                    if (kdbarang == '') {
                        document.getElementById('lBtnKodeItem').focus();
                        document.getElementById('lBtnKodeItem').select();
                    }
                    else {
                        document.getElementById('Pemesanan_AddNewRow_txtKuantitas').focus();
                        document.getElementById('Pemesanan_AddNewRow_txtKuantitas').select();
                    }
                }
            }
            catch (e) {
            }
        }
    </script>

</body>
</html>
