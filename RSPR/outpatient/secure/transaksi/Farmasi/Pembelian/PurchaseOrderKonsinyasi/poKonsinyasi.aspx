<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="poKonsinyasi.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.PurchaseOrderKonsinyasi.poKonsinyasi" %>

<html>
<head>
    <title>Pemesanan Barang Konsinyasi (Purchase Order Konsinyasi)</title>

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src="/qislib/scripts/JScript.js" type="text/javascript" language="javascript" />

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"> </script>

    <script src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js" language="javascript"> </script>

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
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="formPOKonsinyasi" runat="server">
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
                <Module:RadMenu ID="RadMenu" runat="server" />
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
                            <td align="left" valign="top">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Pemesanan Barang Konsinyasi
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td valign="top" width="100%">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="10%">
                                                            <asp:LinkButton ID="lBtnNoPesan" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                title="Click here to select from existing data." onmouseout="window.status='';return true;"
                                                                CausesValidation="False" Text="No. Pesan" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtNoPesan" runat="server" MaxLength="10" Width="354" AutoPostBack="true" CssClass="txtautogenerate" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Tanggal Pesan
                                                        </td>
                                                        <td>
                                                            <Module:webcal ID="cal" runat="server" />
                                                            &nbsp;&nbsp; Tanggal Kirim
                                                            <Module:webcal ID="calKirim" runat="server" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="lbtnKodeSupplier" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                title="Click here to select from existing data." onmouseout="window.status='';return true;"
                                                                CausesValidation="False" Text="Kode Supplier" runat="server" />
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtKodeSupplier" runat="server" MaxLength="15" Width="354" AutoPostBack="true" />
                                                            <asp:RequiredFieldValidator ID="rfvKodeSupplier" runat="server" ControlToValidate="txtKodeSupplier"
                                                                ErrorMessage="Kode Supplier" Display="dynamic">** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            <span id="ttip" style="cursor: hand; color: green" onclick="richDialog()">
                                                                <asp:Label ID="lblInformasiSupplier" Text="Informasi Supplier:" runat="server" Width="100%" />
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:CheckBox ID="chkPosting" runat="server" Visible="False" Enabled="False" Text="Posting" />
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkPPn" runat="server" AutoPostBack="True" Text="PPN" />
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
                                        <!-- End Informasi Supplier -->
                                        <!-- BEGIN ADDNEW PEMESANAN -->
                                        <tr class="rbody">
                                            <td width="100%">
                                                <asp:Panel ID="panelPemesananAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table bordercolordark="#98aab1" cellpadding="5" cellspacing="0" class="rBodyAddNew"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td align="left" class="rheadercol" height="25">
                                                                            Edit atau Tambah Item Pemesanan Barang Konsinyasi
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellpadding="1" cellspacing="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtCounter" runat="server" Visible="False" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnKodeItem" runat="server" CausesValidation="False" onmouseout="window.status='';return true;"
                                                                                            onmouseover="window.status='Click here to select from existing data.';return true"
                                                                                            Text="Kode Item" title="Click here to select from existing data." />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtKodeItem" runat="server" AutoPostBack="True"
                                                                                            MaxLength="10" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtKodeItem" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_txtKodeItem" Display="dynamic" ErrorMessage="Kode Item">
																							** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_lblNamaItem" runat="server" ReadOnly="true"
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtNamaItem" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_lblNamaItem" Display="dynamic" ErrorMessage="Nama Item">
																							** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Qty
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtKuantitas" runat="server" MaxLength="10"
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtKuantitas"
                                                                                            Display="Dynamic" ErrorMessage="Kuantitas" Operator="DataTypeCheck" Type="Currency">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvKuantitas1" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtKuantitas"
                                                                                            Display="Dynamic" ErrorMessage="Kuantitas" Operator="GreaterThan" Type="Currency"
                                                                                            ValueToCompare="0">
																												**  Harus lebih dari 0.00 **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtKuantitas" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_txtKuantitas" Display="dynamic" ErrorMessage="Kuantitas">** 
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
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtFaktor" runat="server" MaxLength="10" ReadOnly="True"
                                                                                            Text="0.00" Width="100%"></asp:TextBox>
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
                                                                                        <asp:CompareValidator ID="cvHarga" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtHarga"
                                                                                            Display="Dynamic" ErrorMessage="Harga" Operator="DataTypeCheck" Type="Currency">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvHarga1" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtHarga"
                                                                                            Display="Dynamic" ErrorMessage="Harga" Operator="GreaterThan" Type="Currency"
                                                                                            ValueToCompare="0">**  Harus lebih dari 0.00 **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtHarga" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtHarga"
                                                                                            Display="dynamic" ErrorMessage="Harga">** 
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
                                                                                        <asp:RangeValidator ID="rvDiskon" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtDiskon"
                                                                                            Display="Dynamic" ErrorMessage="Diskon" MaximumValue="100" MinimumValue="0" Type="Double">** Angka melewati batas **
                                                                                        </asp:RangeValidator>
                                                                                        <asp:CompareValidator ID="cvDiskon" runat="server" ControlToValidate="Pemesanan_AddNewRow_txtDiskon"
                                                                                            Display="Dynamic" ErrorMessage="Diskon" Operator="DataTypeCheck" Type="Double">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPemesanan_AddNewRow_txtDiskon" runat="server"
                                                                                            ControlToValidate="Pemesanan_AddNewRow_txtDiskon" Display="dynamic" ErrorMessage="Diskon">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Catatan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtCatatan" runat="server" MaxLength="100" Width="100%"></asp:TextBox>
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
                                                                                        <asp:TextBox ID="Pemesanan_AddNewRow_txtSpesifikasi" runat="server" Height="75" MaxLength="10000"
                                                                                            TextMode="MultiLine" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="Pemesanan_btnAddNewRow" runat="server" AccessKey="V" CssClass="sbttn"
                                                                                            Text="Save" Width="100" />
                                                                                        <asp:Button ID="Pemesanan_btnDone" runat="server" AccessKey="D" CausesValidation="False"
                                                                                            CssClass="sbttn" Text="Close" Width="100" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr bgcolor="white" valign="bottom">
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
                                            <!-- START DATAGRID PEMESANAN -->
                                            <td width="100%">
                                                <table width="100%">
                                                    <tr>
                                                        <td height="100%" width="100%">
                                                            <asp:DataGrid ID="gridPemesanan" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                                                                BorderColor="Gainsboro" BorderWidth="1" CellPadding="0" CellSpacing="0" DataKeyField="counter"
                                                                GridLines="none" Height="100%" ShowFooter="True" Width="100%">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" CancelText="&lt;img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'&gt;"
                                                                        EditText="&lt;img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'&gt;"
                                                                        UpdateText="&lt;img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'&gt;">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton ID="__ibtnDelete" runat="server" AlternateText="Delete this item"
                                                                                CausesValidation="False" CommandName="__delete" ImageUrl="/qislib/images/delete.png"
                                                                                Style="margin-top: 4" Visible='<%# Not(DataBinder.Eval(Container.DataItem, "posting")) %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="nopesan" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Left" HeaderText="Item"
                                                                        ItemStyle-HorizontalAlign="Left" SortExpression="nmdesc1">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;" colspan="3">
                                                                                        <asp:Label ID="_lblNamaItem" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "nmdesc2") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label ID="_lblKodeItem" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' />
                                                                                    </td>
                                                                                    <td class="txtweak" style="font-style: italic; text-align: right; width: 60px;">
                                                                                        Catalog No.
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label ID="_lblCatalogNo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc2") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" colspan="3">
                                                                                        <asp:Label ID="_lblCatatan" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "catatan") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" colspan="3">
                                                                                        <asp:Label ID="_lblSpesifikasi" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "spesifikasiitem") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton ID="_btnAddNewRow" runat="server" AccessKey="A" CausesValidation="True"
                                                                                CommandName="_AddNewRow" onmouseout="window.status='';return true;" onmouseover="window.status='Click here to add new record.';return true"
                                                                                Text="Tambah Data" title="Click here to add new record." />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Right" HeaderText="Qty"
                                                                        ItemStyle-HorizontalAlign="Right" SortExpression="qtypesan">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="_lblKuantitas" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtypesan"),"#,##0.00") %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Right" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Right" SortExpression="satuan" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="_lblSatuan" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>'
                                                                                Visible="False" />
                                                                            <asp:Label ID="_lblSatuanFaktor" runat="server" Text='<%# IIF(DataBinder.Eval(Container.DataItem,"faktor")=1,DataBinder.Eval(Container.DataItem,"satuan"),DataBinder.Eval(Container.DataItem,"satuan") & "/" & DataBinder.Eval(Container.DataItem,"faktor")) %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Center" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Center" SortExpression="nmsatuan">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="_lblNmSatuan" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>'
                                                                                Visible="False" />
                                                                            <asp:Label ID="_lblNmSatuanFaktor" runat="server" Text='<%# IIF(DataBinder.Eval(Container.DataItem,"faktor")=1,DataBinder.Eval(Container.DataItem,"nmsatuan"),DataBinder.Eval(Container.DataItem,"nmsatuan") & "/" & DataBinder.Eval(Container.DataItem,"faktor")) %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Right" HeaderText="Faktor"
                                                                        ItemStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="_lblFaktor" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem,"faktor"), "#,##0.00") %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Center" HeaderText="PPN"
                                                                        Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox ID="_chkPPN" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "ppn") %>'
                                                                                Enabled="false" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Right" HeaderText="Diskon %"
                                                                        ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="_lblDiskon" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonpc"),"#,##0.00") %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Right" HeaderText="SubTotal"
                                                                        ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="_lblSubTotal" runat="server" Style="margin-left: 10; margin-right: 10"
                                                                                Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"), "#,##0.00") %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Right" HeaderText="Petugas"
                                                                        ItemStyle-HorizontalAlign="Right" SortExpression="usrupdate">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="_lblPetugas" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "usrupdate") %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <font style="font-size: x-small; color: teal;">Shortcut Key : [ALT+A] = Tambah Data.
                                                                [ALT+V] = Simpan Data. [ALT+D] = Selesai.</font>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID PEMESANAN -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td width="100%" align="right">
                                                <table width="40%">
                                                    <tr>
                                                        <td align="right">
                                                            Jumlah Nilai Pemesanan :&nbsp;
                                                            <asp:Label ID="lblCur" runat="server"></asp:Label>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotal" runat="server" class="right" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none">
                                                        <td align="right">
                                                            Jumlah Diskon Detil :&nbsp;
                                                            <asp:Label ID="lblCur2" runat="server"></asp:Label>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblDiskon" runat="server" class="right" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="display:none">
                                                        <td align="right">
                                                            <asp:Label ID="lblHdDiskonRp" runat="server" Text="Diskon Final Rp"></asp:Label>
                                                            &nbsp;&nbsp;:&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur3" runat="server"></asp:Label>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="txtHdDiskonRp" runat="server" AutoPostBack="True" class="right"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" style="height: 28px">
                                                            Jumlah PPN (
                                                            <asp:Label ID="lblKetPPn" runat="server"></asp:Label>
                                                            %) : &nbsp;
                                                            <asp:Label ID="lblCur4" runat="server"></asp:Label>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right" style="height: 28px">
                                                            <asp:TextBox ID="lblPPn" runat="server" class="right" ReadOnly="True"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Saldo Nilai Pemesanan :&nbsp;&nbsp;
                                                            <asp:Label ID="lblCur6" runat="server"></asp:Label>
                                                            &nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotalAftPPn" runat="server" class="right" ReadOnly="True"></asp:TextBox>
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
                                                            <asp:TextBox ID="txtcatatan" runat="server" Width="100%"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table cellpadding="5" cellspacing="0" width="100%">
                                                    <tr>
                                                        <td align="left">
                                                            <p>
                                                                &nbsp;<asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody" style="display: none;">
                                            <!-- Begin Related Links -->
                                            <td width="100%">
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
                                                        <tr valign="top">
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
                                                    </table>
                                                </div>
                                            </td>
                                            <!-- End Related Links -->
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>    
    <!-- Begin Side Menu -->
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakanPO" runat="server" Text="Go" CausesValidation="False"
            onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
            AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Pemesanan Barang Konsinyasi</div>
            <div class='qmdescription'>Cetak Bukti Pemesanan Barang Konsinyasi.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint1" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan1" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkCetakanPO" Text="Cetak Bukti Pemesanan Barang Konsinyasi" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel1" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>

    <!-- End Side Menu -->
    </form>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"> </script>

    <script language="javascript" src="/qislib/scripts/common/common.js"> </script>

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

                var noPesan;
                noPesan = ditrim(document.getElementById('txtNoPesan').value);
                //alert(noPesan);
                var kdsupplier;
                kdsupplier = ditrim(document.getElementById('txtKodeSupplier').value);
                //alert(kdsupplier);
                if (noPesan == '') {
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
                    document.getElementById('lbtnNoPesan').focus();
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
