<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pengembalianBrgKonsi.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.BarangKonsinyasi.PengembalianKonsinyasi.pengembalianBrgKonsi" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Pengembalian Barang Konsinyasi</title>
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

</head>
<body onload="ShowPosting()">
    <form id="frmpengembalianbrgkonsinyasi" method="post" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table cellspacing="0" cellpadding="2" width="100%" style="height: 100%" border="0">
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
            <td valign="top" width="100%" style="height: 100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Pengembalian Barang Konsinyasi
                                        </td>
                                    </tr>
                                </table>
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lBtnNoPengembalian" Text="No. Pengembalian" runat="server" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoPengembalian" runat="server" AutoPostBack="true" Width="95%" CssClass="txtautogenerate"
                                                                            MaxLength="10">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggal" runat="server" AutoPostBack="true" Width="95%" MaxLength="10">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodeSupplier" runat="server" Text="Kode Supplier" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeSupplier" runat="server" AutoPostBack="true" Width="95%"
                                                                            MaxLength="10">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvKodeSupplier" runat="server" Display="dynamic"
                                                                            ErrorMessage="Kode Supplier" ControlToValidate="txtKodeSupplier">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <span id="ttip" style="color: green; cursor: hand;" onclick="richDialog()">
                                                                            <asp:Label ID="lblInformasiSupplier" runat="server" Text="Informasi Supplier:" />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnGudang" Text="Gudang" runat="server" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtGudang" runat="server" AutoPostBack="True" MaxLength="25" Width="25%">
                                                                        </asp:TextBox>
                                                                        <asp:TextBox ID="lblNamaGudang" runat="server" Width="70%" ReadOnly="true" />
                                                                        <asp:RequiredFieldValidator ID="rfvGudang" runat="server" Display="dynamic" ErrorMessage="Gudang"
                                                                            ControlToValidate="txtGudang">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblLokasi" Text="Lokasi" runat="server">
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="95%">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator runat="server" ID="rfvLokasi" ControlToValidate="ddlLokasi"
                                                                            ErrorMessage="Lokasi">**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPPn" runat="server" Text="PPN" Enabled="True" AutoPostBack="True">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblReferenceNo" runat="server" Text="Nomor PO" runat="server">
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtReferenceNo" runat="server" AutoPostBack="True" MaxLength="25"
                                                                            Width="25%" Enabled="false">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
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
                                                <!-- BEGIN ADDNEW Penerimaan -->
                                                <asp:Panel ID="panelPenerimaanAddNewRow" runat="server">
                                                    <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                        width="100%">
                                                        <tr class="rheader">
                                                            <td class="rheadercol" align="left" height="25">
                                                                Edit atau Tambah Item Pengembalian Barang Konsinyasi
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table cellspacing="1" cellpadding="1" width="100%">
                                                                    <tr visible="False">
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            <asp:LinkButton ID="lBtnCounter" runat="server" Text="Counter" CausesValidation="False"
                                                                                Visible="False">
                                                                            </asp:LinkButton>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtCounter" runat="server" Width="100%" ReadOnly="True"
                                                                                Visible="False">
                                                                            </asp:TextBox>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            <asp:LinkButton ID="lBtnKodeItem" runat="server" Text="Kode Item" CausesValidation="False"></asp:LinkButton>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtKodeItem" runat="server" MaxLength="10"
                                                                                Width="100%" AutoPostBack="True"></asp:TextBox>
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
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtNamaItem" runat="server" MaxLength="25"
                                                                                Width="100%" ReadOnly="True"></asp:TextBox>
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
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtKuantitas" runat="server" MaxLength="10"
                                                                                Width="100%" AutoPostBack="True"></asp:TextBox>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld">
                                                                            <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtKuantitas"
                                                                                Operator="DataTypeCheck" Type="Double" ErrorMessage="Kuantitas" Display="Dynamic">** Harus diisi dengan angka **
                                                                            </asp:CompareValidator>
                                                                            <asp:CompareValidator ID="cvKuantitas1" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtKuantitas"
                                                                                Operator="GreaterThan" Type="Double" ValueToCompare="0.00" ErrorMessage="Kuantitas"
                                                                                Display="Dynamic">
																										**  Harus lebih dari 0.00 **
                                                                            </asp:CompareValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Satuan
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:DropDownList ID="Penerimaan_AddNewRow_ddlSatuan" runat="server" Width="100%"
                                                                                AutoPostBack="True">
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
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtFaktor" runat="server" MaxLength="10" Width="100%"
                                                                                Text="1" ReadOnly="True"></asp:TextBox>
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
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtharga" runat="server" MaxLength="20" Width="100%"
                                                                                AutoPostBack="True"></asp:TextBox>
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
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtDiskonPc" runat="server" MaxLength="6" Width="100%"
                                                                                AutoPostBack="True"></asp:TextBox>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld">
                                                                            <asp:RangeValidator ID="rvDiskonPc" runat="server" ControlToValidate="Penerimaan_AddNewRow_txtDiskonPc"
                                                                                MaximumValue="100.00" MinimumValue="0.00" Type="Double" ErrorMessage="Diskon %"
                                                                                Display="Dynamic">** Angka melewati batas **
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
                                                                            Expired
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="Penerimaan_AddNewRow_txtExpired" runat="server" Width="100%"></asp:TextBox>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Button ID="Penerimaan_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn"
                                                                                CausesValidation="False" Width="100"></asp:Button>
                                                                            <asp:Button ID="Penerimaan_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                CssClass="sbttn" Width="100"></asp:Button>
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
                                                </asp:Panel>
                                                <!-- END ADDNEW Penerimaan -->
                                                <!-- START DATAGRID Penerimaan -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridPenerimaan" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                Height="100%" DataKeyField="counter" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>"
                                                                        Visible="False">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 4" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="noterima" runat="server" HeaderText="No. Terima"
                                                                        HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noterima") %>'
                                                                                ID="_lblNoTerima" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;" colspan="3">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
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
                                                                                Text="Tambah Data" Visible="False" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qtyback" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyback"),"#,##0.00") %>'
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
                                                                                ID="_lblnmSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="faktor" runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "faktor"),"#,##0.00") %>'
                                                                                ID="_lblFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
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
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonrp"),"#,##0.00") %>'
                                                                                ID="_lblDiskonRp" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"),"#,##0.00") %>'
                                                                                ID="_lblSubTotal" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Expired" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# DataBinder.Eval(Container.DataItem, "expiredGrid") %>'
                                                                                ID="_lblExpired" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="80px" />
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
                                                            <asp:Label ID="lblJudulTotal" runat="server" Text="Jumlah Nilai Penerimaan">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                            <asp:TextBox ID="lblTotal" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotalDiskonDT" runat="server" Text="Jumlah Diskon Detil">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                            <asp:TextBox ID="txtTotalDiskonDT" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody" style="display: none">
                                                        <td align="right">
                                                            <asp:Label ID="lblHdDiskonPc" runat="server" Text="Diskon Final %">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
                                                            <asp:TextBox ID="txtHdDiskonPc" runat="server" AutoPostBack="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblHdDiskonRp" runat="server" Text="Diskon Final Rp">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                            <asp:TextBox ID="txtHdDiskonRp" runat="server" AutoPostBack="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            Jumlah PPN (<asp:Label ID="lblPPn" runat="server" />&nbsp;%) &nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                            <asp:TextBox ID="txtPPn" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody" style="display: none">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblMaterai" runat="server" Text="Materai">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                            <asp:TextBox ID="txtMaterai" runat="server" AutoPostBack="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:Label ID="lblJudulTotalAkhir" runat="server" Text="Total Penerimaan">
                                                            </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                            <asp:TextBox ID="lblTotalAkhir" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="15%">
                                                            Catatan
                                                        </td>
                                                        <td width="85%">
                                                            <asp:TextBox ID="txtcatatan" runat="server" Width="100%" MaxLength="20">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr>
                                            <td align="left">
                                                <p>
                                                    &nbsp;<asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                    </asp:ValidationSummary>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- Begin Related Links -->
                                    <table border="0" width="100%" cellspacing="0" cellpadding="1" style="display: none;">
                                        <tr>
                                            <td class="rBodyInfo" width="99%" valign="top">
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
                                                    <table width="100%" bgcolor="MintCream" cellspacing="10" cellpadding="0">
                                                        <tr valign="top" style="display: none">
                                                            <td width="50%" id="rbiu">
                                                                <p>
                                                                    <font class="txtstrong">Update Penerimaan</font>
                                                                    <br />
                                                                    Update data penerimaan (Tanggal Terima,Tanggal Pembayaran,Penerima,No.Faktur,Jenis
                                                                    Pembayaran,No.Faktur Pajak,Tgl.Faktur Pajak,Catatan)
                                                                </p>
                                                            </td>
                                                            <td align="left">
                                                                <asp:Button ID="btnUpdate" runat="server" onmouseover="rbiu.style.backgroundColor='#ffd27a'"
                                                                    onmouseout="rbiu.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                                    CausesValidation="False" />
                                                            </td>
                                                        </tr>                                                        
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- End Related Links -->

                                    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

                                </asp:Panel>
                                <asp:Panel ID="PanelSalinFaktur" runat="server">
                                    <!--#include file="SalinPengembalianKonsi_Grid.incl.aspx" -->

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

                                    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

                                </asp:Panel>
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
            <asp:Button ID="btnSalinFaktur" runat="server" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn"
                CausesValidation="True" />
            <div class='qmtitle'>Salin Penerimaan Barang Konsinyasi</div>
            <div class='qmdescription'>Salin Barang Konsinyasi yang telah Diterima per Pemasok.</div>
        </div>
    </div>
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakPengembalianKonsiyasi" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Pengembalian Barang Konsinyasi</div>
            <div class='qmdescription'>Cetak Bukti Pengembalian Barang Konsinyasi.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkPengembalianKonsiyasi" Text="Cetak Bukti Pengembalian Barang Konsinyasi" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

</body>
</html>
