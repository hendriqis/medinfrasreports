<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="penerimaanBarang.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.PenerimaanBarang.penerimaanBarang" %>

<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Penerimaan Pembelian</title>
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
            oPopup.document.createStyleSheet('/qislib/css/styles.css')
            oPopup.document.body.innerHTML = oDialog.innerHTML;
            // x,y,w,h
            oPopup.show(topper, lefter + 20, 550, 200, ttip);
        }
		
		//-->
    </script>

    <style type="text/css">
        .transparent
        {
            display: none;
            filter: alpha(opacity=20);
            width: 170px;
            color: white;
            position: absolute;
            height: 100px;
            background-color: transparent;
        }
    </style>
</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus()">
    <form id="frmpenerimaanbarang" method="post" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div class="transparent" id="Popup">
            <div>
                <font color="red" size="72">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="panelHeader" runat="server">
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
                                            <td class="rheadercol" align="left" height="25">
                                                Penerimaan Pembelian
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
                                                                        <asp:LinkButton ID="lBtnNoPenerimaan" Text="No. BPB" runat="server" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoPenerimaan" runat="server" AutoPostBack="true" Width="95%" CssClass="txtautogenerate"
                                                                            MaxLength="10"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTglTerima" runat="server" Width="95%" ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td width="20%">
                                                                        Tanggal Pembayaran
                                                                    </td>
                                                                    <td>
                                                                        <Module:webcal ID="cal2" runat="server"></Module:webcal>
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td width="20%">
                                                                        <asp:Label ID="lblPenerima" Text="Penerima" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlPenerima" runat="server" Width="95%">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:LinkButton ID="lbtnKodeSupplier" Text="Kode Supplier" runat="server" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeSupplier" runat="server" AutoPostBack="true" Width="95%"
                                                                            MaxLength="10"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvKodeSupplier" runat="server" Display="dynamic"
                                                                            ErrorMessage="Kode Supplier" ControlToValidate="txtKodeSupplier">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <span id="ttip" style="cursor: hand; color: green" onclick="richDialog()">
                                                                            <asp:Label ID="lblInformasiSupplier" Text="Informasi Supplier:" runat="server" Width="100%"></asp:Label></span>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        No. Faktur/Kirim
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoKirim" runat="server" Width="95%"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvNoKirim" runat="server" Display="dynamic" ErrorMessage="No. Faktur/Kirim"
                                                                            ControlToValidate="txtNoKirim">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Tanggal Faktur
                                                                    </td>
                                                                    <td>
                                                                        <Module:webcal runat="server" ID="calTglFaktur" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:Label ID="lblJenisPembayaran" Text="Jenis Pembayaran" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlJenisPembayaran" runat="server" Width="95%" AutoPostBack="True">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <asp:Panel ID="pnlFPajak" runat="server">
                                                                    <tr>
                                                                        <td width="20%">
                                                                            No. Faktur Pajak
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtNoFPajak" runat="server" Width="95%"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="20%">
                                                                            Tgl. Faktur Pajak
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtTglFPajak" runat="server" Width="90%"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="display: none">
                                                                        <td width="20%">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td>
                                                                            <asp:CheckBox ID="chkNotaRetur" runat="server" Text="NotaRetur" Enabled="True"></asp:CheckBox>
                                                                        </td>
                                                                    </tr>
                                                                </asp:Panel>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:LinkButton ID="lbtnGudang" Text="Gudang" runat="server" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtGudang" runat="server" AutoPostBack="True" Width="24%" MaxLength="25"></asp:TextBox>
                                                                        <asp:TextBox ID="lblNamaGudang" runat="server" Width="70%" ReadOnly="true"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvGudang" runat="server" Display="dynamic" ErrorMessage="Gudang"
                                                                            ControlToValidate="lblNamaGudang">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:Label ID="lblLokasi" Text="Lokasi" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="95%">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator ID="rfvLokasi" runat="server" ErrorMessage="Lokasi" ControlToValidate="ddlLokasi">**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPPn" runat="server" AutoPostBack="True" Text="PPN" Enabled="True">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Mata Uang
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlMataUang" runat="server" Width="95%" AutoPostBack="true">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Nilai Kurs (Rp)
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKurs" runat="server" Width="95%" ReadOnly="True"></asp:TextBox>
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
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- BEGIN ADDNEW Penerimaan -->
                                                <asp:Panel ID="panelPenerimaanAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr class="rbody">
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Penerimaan Pembelian
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="rbody">
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:CheckBox ID="Penerimaan_AddNewRow_chkBonus" runat="server" AutoPostBack="True"
                                                                                            Text="Bonus" Width="100%"></asp:CheckBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr visible="False">
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnCounterTerima" Text="Counter Terima" runat="server" CausesValidation="False"
                                                                                            Visible="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtCounterTerima" runat="server" ReadOnly="True"
                                                                                            Width="100%" Visible="False"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr visible="False">
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnCounter" Text="Counter Pesan" runat="server" CausesValidation="False"
                                                                                            Visible="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtCounter" runat="server" ReadOnly="True"
                                                                                            Width="100%" Visible="False"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnKodeItem" Text="Kode Item" runat="server" CausesValidation="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtKodeItem" runat="server" MaxLength="10"
                                                                                            AutoPostBack="True" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPenerimaan_AddNewRow_txtKodeItem" runat="server"
                                                                                            Display="dynamic" ErrorMessage="Kode Item" ControlToValidate="Penerimaan_AddNewRow_txtKodeItem">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_lblNamaItem" runat="server" Width="100%" ReadOnly="true"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPenerimaan_AddNewRow_txtNamaItem" runat="server"
                                                                                            Display="dynamic" ErrorMessage="Nama Item" ControlToValidate="Penerimaan_AddNewRow_lblNamaItem">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Kuantitas
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtKuantitas" runat="server" AutoPostBack="False"
                                                                                            MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtKuantitasPsn" runat="server" Width="100%"></asp:TextBox>
                                                                                        <asp:Label class="error" ID="lblError" runat="server" Width="100%"></asp:Label>
                                                                                        <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtKuantitas"
                                                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Kuantitas" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvKuantitas1" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtKuantitas"
                                                                                            Operator="GreaterThan" Type="Currency" ErrorMessage="Kuantitas" Display="Dynamic"
                                                                                            ValueToCompare="0.00">
																										**  Harus lebih dari 0.00 **
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Satuan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:DropDownList ID="Penerimaan_AddNewRow_ddlSatuan" runat="server" AutoPostBack="True"
                                                                                            Width="100%">
                                                                                        </asp:DropDownList>
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
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtFaktor" runat="server" MaxLength="10" ReadOnly="True"
                                                                                            Text="1" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtFaktorPsn" runat="server" ReadOnly="True"
                                                                                            Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <asp:Panel ID="pnlNotBonus" runat="server">
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Harga
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtharga" runat="server" AutoPostBack="False"
                                                                                                MaxLength="20" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            <asp:CompareValidator ID="cvHarga" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtharga"
                                                                                                Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">** Harus diisi dengan angka **
                                                                                            </asp:CompareValidator>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Diskon %
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtDiskonPc" runat="server" AutoPostBack="False"
                                                                                                MaxLength="6" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            <asp:RangeValidator ID="rvDiskonPc" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtDiskonPc"
                                                                                                Type="Double" ErrorMessage="Diskon %" Display="Dynamic" MaximumValue="100.00"
                                                                                                MinimumValue="0.00">** Angka melewati batas **
                                                                                            </asp:RangeValidator>
                                                                                            <asp:CompareValidator ID="cvDiskonPc" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtDiskonPc"
                                                                                                Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon %" Display="Dynamic">** Harus diisi dengan angka **
                                                                                            </asp:CompareValidator>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Diskon Rp
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtDiskonRp" runat="server" MaxLength="12"
                                                                                                Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            <asp:CompareValidator ID="cvDiskonRp" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtDiskonRp"
                                                                                                Operator="DataTypeCheck" Type="Currency" ErrorMessage="Diskon Rp" Display="Dynamic">** Harus diisi dengan angka **
                                                                                            </asp:CompareValidator>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Diskon2 %
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtDiskonPc2" runat="server" AutoPostBack="False"
                                                                                                MaxLength="6" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            <asp:RangeValidator ID="rvDiskonPc2" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtDiskonPc"
                                                                                                Type="Double" ErrorMessage="Diskon %" Display="Dynamic" MaximumValue="100.00"
                                                                                                MinimumValue="0.00">** Angka melewati batas **
                                                                                            </asp:RangeValidator>
                                                                                            <asp:CompareValidator ID="cvDiskonPc2" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtDiskonPc"
                                                                                                Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon %" Display="Dynamic">** Harus diisi dengan angka **
                                                                                            </asp:CompareValidator>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Diskon2 Rp
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtDiskonRp2" runat="server" MaxLength="12"
                                                                                                Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            <asp:CompareValidator ID="cvDiskonRp2" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtDiskonRp"
                                                                                                Operator="DataTypeCheck" Type="Currency" ErrorMessage="Diskon Rp" Display="Dynamic">** Harus diisi dengan angka **
                                                                                            </asp:CompareValidator>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr style="display: none">
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            Jumlah
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtJumlah" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            &nbsp;
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                                            No. Pesan
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtNoPesan" runat="server" ReadOnly="True"
                                                                                                AutoPostBack="False" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                        <td class="rBodyAddNewFld">
                                                                                            &nbsp;
                                                                                        </td>
                                                                                    </tr>
                                                                                </asp:Panel>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        No. Batch
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtNoBatch" runat="server" MaxLength="20" AutoPostBack="False"
                                                                                            Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Expired
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtExpired" runat="server" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nilai Kurs (Rp)
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Penerimaan_AddNewRow_txtKurs" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Acc
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:CheckBox ID="Penerimaan_AddNewRow_txtAcc" runat="server" Enabled="False" Width="100%">
                                                                                        </asp:CheckBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="Penerimaan_btnAddNewRow" AccessKey="V" runat="server" Text="Save"
                                                                                            CausesValidation="False" Width="100" CssClass="sbttn"></asp:Button>
                                                                                        <asp:Button ID="Penerimaan_btnDone" AccessKey="D" runat="server" Text="Close" CausesValidation="False"
                                                                                            Width="100" CssClass="sbttn"></asp:Button>
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
                                                <!-- END ADDNEW Penerimaan -->
                                                <!-- START DATAGRID Penerimaan -->
                                                <table width="100%">
                                                    <tr class="rbody">
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridPenerimaan" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                Height="100%" DataKeyField="counterterima" ShowFooter="True" CellPadding="0"
                                                                AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
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
                                                                    <asp:BoundColumn DataField="noterima" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="bonus" runat="server" HeaderText="Bonus" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "bonus") %>'
                                                                                ID="_chkBonus" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Counter Item" HeaderStyle-HorizontalAlign="Center"
                                                                        ItemStyle-HorizontalAlign="Left" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                                ID="_lblCounter" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama Item"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;" colspan="3">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                            ID="_lblNamaItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKodeItem" />
                                                                                    </td>
                                                                                    <td class="txtweak" style="font-style: italic; text-align: right; width: 60px;">
                                                                                        Catalog No.
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                            ID="_lblCatalogNo" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Add Bonus Item" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qtyterima" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyterima"),"#,##0.00") %>'
                                                                                ID="_lblKuantitas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>'
                                                                                ID="_lblNmSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "faktor"),"#,##0.00") %>'
                                                                                ID="_lblFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga2"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Kurs" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "kurs"),"#,##0.00") %>'
                                                                                ID="_lblKurs" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonpc"),"#,##0.00") %>'
                                                                                ID="_lblDiskonPc" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon Rp" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonrp"),"#,##0.00") %>'
                                                                                ID="_lblDiskonRp" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon2 %" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonpc2"),"#,##0.00") %>'
                                                                                ID="_lblDiskonPc2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon2 Rp" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonrp2"),"#,##0.00") %>'
                                                                                ID="_lblDiskonRp2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Jumlah Diskon" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "totaldiskondt"), "#,##0.00") %>'
                                                                                ID="_lblTotalDisc" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="lebih" runat="server" HeaderText="Acc" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Checked='<%# CBool(Format(DataBinder.Eval(Container.DataItem, "lebih"), "0")) %>'
                                                                                Enabled="False" ID="_chkAcc" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"),"#,##0.00") %>'
                                                                                ID="_lblSubTotal" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="expired" runat="server" HeaderText="Expired"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "expired") %>'
                                                                                ID="_lblExpired" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="80px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nopesan" runat="server" HeaderText="No. Pesan"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>'
                                                                                ID="_lblNoPesan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nobatch" runat="server" HeaderText="No. Batch"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nobatch") %>'
                                                                                ID="_lblNoBatch" />
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
                                                        <td>
                                                            <font style="font-size: x-small; color: teal;">Shortcut Key : [ALT+A] = Tambah Data.
                                                                [ALT+V] = Simpan Data. [ALT+D] = Selesai. </font>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID Penerimaan -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td align="right">
                                                <table>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotal" runat="server" Text="Jumlah Nilai Penerimaan"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur1" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="lblTotal" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody" style="display: none">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotalDiskonDT" runat="server" Text="Jumlah Diskon Detil"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur2" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="txtTotalDiskonDT" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td align="right">
                                                            <asp:Label ID="lblHdDiskonPc" runat="server" Text="Diskon Final %"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
                                                            <asp:TextBox class="right" ID="txtHdDiskonPc" runat="server" AutoPostBack="True"></asp:TextBox>
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblHdDiskonRp" runat="server" Text="Diskon Final Rp"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur3" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="txtHdDiskonRp" runat="server" ReadOnly="True" AutoPostBack="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            Jumlah PPN (
                                                            <asp:Label ID="lblPPn" runat="server"></asp:Label>&nbsp;%) &nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur4" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="txtPPn" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblOngkos" runat="server" Text="Ongkos Kirim"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur5" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="txtOngkos" runat="server" AutoPostBack="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblMaterai" runat="server" Text="Materai"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur6" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="txtMaterai" runat="server" AutoPostBack="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody" style="display: none">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblDP" runat="server" Text="Uang Muka"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur7" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="txtDP" runat="server" AutoPostBack="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotalAkhir" runat="server" Text="Total Penerimaan"></asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur8" runat="server"></asp:Label>&nbsp;
                                                            <asp:TextBox class="right" ID="lblTotalAkhir" runat="server" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="15%">
                                                            Catatan
                                                        </td>
                                                        <td width="85%">
                                                            <asp:TextBox ID="txtcatatan" runat="server" Width="100%" MaxLength="20"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table cellspacing="0" cellpadding="5" width="100%">
                                                    <tr class="rbody">
                                                        <td align="left">
                                                            <p>
                                                                &nbsp;<asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                                </asp:ValidationSummary>
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody" style="display: none;">
                                            <td>
                                                <!-- Begin Related Links -->
                                                <table cellspacing="0" cellpadding="1" width="100%" border="0">
                                                    <tr>
                                                        <td class="rBodyInfo" valign="top" width="99%">
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
                                                                    <tr style="display: none" valign="top">
                                                                        <td id="rbiu" width="50%">
                                                                            <p>
                                                                                <font class="txtstrong">Update Penerimaan</font>
                                                                                <br />
                                                                                Update data penerimaan (Tanggal Terima,Tanggal Pembayaran,Penerima,No.Faktur,Jenis
                                                                                Pembayaran,No.Faktur Pajak,Tgl.Faktur Pajak,Catatan)
                                                                            </p>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Button ID="btnUpdate" onmouseover="rbiu.style.backgroundColor='#ffd27a'" onmouseout="rbiu.style.backgroundColor='MintCream'"
                                                                                runat="server" CausesValidation="False" Text="Go..." CssClass="sbttn"></asp:Button>
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
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelSalinPesanan" runat="server">
        <!--#include file="SalinPesanan_Grid.incl.aspx" -->

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
        </script>

        <script language="javascript" src="/qislib/scripts/common/util.js"></script>

    </asp:Panel>
    <!-- Begin Side Menu -->
    <div id="divRightPanelTasksContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnSalinPesanan" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                onmouseout="rbis.style.backgroundColor='MintCream'" runat="server" CausesValidation="True"
                Text="Go" CssClass="sbttn"></asp:Button>
            <div class='qmtitle'>Salin Pesanan Barang</div>
            <div class='qmdescription'>Salin Pesanan Barang per Pemasok.</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnUpdateNoFaktur" onmouseover="rbia.style.backgroundColor='#ffd27a'"
                onmouseout="rbia.style.backgroundColor='MintCream'" runat="server" CausesValidation="True"
                Text="Go" CssClass="sbttn"></asp:Button>
            <div class='qmtitle'>Edit Nomor Faktur/Kirim</div>
            <div class='qmdescription'>Edit Nomor Faktur/Kirim dari Pemasok.</div>
        </div>
    </div>
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakPenerimaan" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Penerimaan Pembelian</div>
            <div class='qmdescription'>Cetak Bukti Penerimaan Pembelian.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkPenerimaan" Text="Cetak Bukti Penerimaan Pembelian" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

    <span id="spanQtyPesan">

        <script language="javascript">
            function validasiQty(qtyT, qtyP) {
                qtyTerima = parseFloat(qtyT.value)
                qtyPesan = parseFloat(qtyP)

                if (qtyTerima < qtyPesan) {
                    if (!confirm('Kuantitas Terima : ' + qtyT.value + ' lebih Kecil daripada Kuantitas Pesan : ' + qtyP + ' , transaksi akan dilanjutkan ?')) {
                        qtyT.value = '0';
                    }
                }
            }			
        </script>

        <script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
			End Function			
        </script>

        <script language="javascript">
            function fokus() {
                try {

                    var nobukti;
                    nobukti = ditrim(document.getElementById('txtNoPenerimaan').value);
                    var kdsupplier;
                    kdsupplier = ditrim(document.getElementById('txtKodeSupplier').value);
                    var nokirim;
                    nokirim = ditrim(document.getElementById('txtNoKirim').value);
                    if (nobukti == '') {
                        if (kdsupplier == '') {
                            document.getElementById('lbtnKodeSupplier').focus();
                        }
                        else {
                            if (nokirim == '') {
                                document.getElementById('txtNoKirim').focus();
                            }
                            else {
                                document.getElementById('btnSalinPesanan').focus();
                                //document.getElementById('gridPenerimaan__ctl2__btnAddNewRow').focus(); 
                            }
                        }
                    }
                    else {
                        document.getElementById('lBtnNoPenerimaan').focus();
                    }

                    //if (typeof(document.getElementById('Pemesanan_AddNewRow_txtKodeItem'))!=='undefined')
                    //	{
                    //	var kdbarang;
                    //	kdbarang = ditrim(document.getElementById('Pemesanan_AddNewRow_txtKodeItem').value);    
                    //		
                    //	if (kdbarang == '')
                    //		{
                    //		document.getElementById('lBtnKodeItem').focus();            		
                    //		document.getElementById('lBtnKodeItem').select();
                    //		}
                    //	else
                    //		{
                    //		document.getElementById('Pemesanan_AddNewRow_txtKuantitas').focus();
                    //		document.getElementById('Pemesanan_AddNewRow_txtKuantitas').select();
                    //		}
                    //	}
                }
                catch (e) {
                }
            }
		    
        </script>

    </span>
</body>
</html>
