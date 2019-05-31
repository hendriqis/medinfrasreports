<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="returPenjC.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanBP.ReturBP.returPenjC" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Retur Penjualan dari Anak Perusahaan [Subsidiary]</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script language="vbscript">
			        Public Function ditrim(ByVal x)
				        ditrim = Trim(x)			
			        End Function			
    </script>

    <script language="javascript">
        function fokus() {
            try {
                var kdbarang;
                kdbarang = document.getElementById('Retur_AddNewRow_txtKodeItem').value;
                kdbarang = ditrim(kdbarang);
                if (kdbarang == '') {
                    document.getElementById('lBtnKodeItem').focus();
                    document.getElementById('lBtnKodeItem').select();
                }
                else {
                    document.getElementById('Retur_AddNewRow_txtKuantitas').focus();
                    document.getElementById('Retur_AddNewRow_txtKuantitas').select();
                }
            }
            catch (e) {
            }
        }
    </script>

    <script language="javascript">
        //<!--

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
            filter: alpha(opacity=20);
            background-color: Transparent;
            display: none;
            width: 170;
            height: 100;
            position: absolute;
            color: white; /*border: 1 green solid;*/
        }
    </style>
</head>
<body onload="ShowPosting();fokus();">
    <form id="frmReturPemb" method="post" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table cellspacing="0" cellpadding="2" width="100%" style="height: 100%;" border="0">
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
            <td valign="top" width="100%" style="height: 100%;">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Retur Penjualan dari Anak Perusahaan [Subsidiary]
                                        </td>
                                    </tr>
                                    <asp:Panel ID="panelHeader" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lBtnNoRetur" Text="No. Retur" runat="server" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoRetur" runat="server" AutoPostBack="true" Width="95%" MaxLength="10" CssClass="txtautogenerate">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggal" runat="server" ReadOnly="true" Width="95%">
                                                                        </asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodeCustomer" runat="server" Text="Kode Customer" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                            onmouseout="window.status='';return true;" title="Click here to select from existing data."
                                                                            CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeCustomer" runat="server" AutoPostBack="true" Width="95%"
                                                                            MaxLength="5"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvKodeCustomer" runat="server" Display="dynamic"
                                                                            ErrorMessage="Kode Customer" ControlToValidate="txtKodeCustomer">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <span id="ttip" style="color: green; cursor: hand;" onclick="richDialog()">
                                                                            <asp:Label ID="lblInformasiCustomer" runat="server" Text="Informasi Customer: " />
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnNoBukti" Text="No. Bukti" runat="server" CausesValidation="False">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoBukti" runat="server" MaxLength="10" Width="95%" AutoPostBack="True">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvNoBukti" runat="server" Display="dynamic" ErrorMessage="NOMOR BUKTI"
                                                                            ControlToValidate="txtNoBukti">** 
                                                                        </asp:RequiredFieldValidator>
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
                                                                        <asp:TextBox ID="txtGudang" runat="server" AutoPostBack="True" MaxLength="5" Width="24%">
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
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="95%" AutoPostBack="True">
                                                                        </asp:DropDownList>
                                                                        <asp:RequiredFieldValidator runat="server" ID="rfvLokasi" ControlToValidate="ddlLokasi"
                                                                            ErrorMessage="Lokasi">**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblCatatan" Text="Catatan" runat="server">
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlCatatan" runat="server" Width="95%">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: none">
                                                                    <td width="30%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPPn" runat="server" Text="PPN" Enabled="True" AutoPostBack="True">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- Begin Informasi Supplier -->
                                                <div id="oDialog" style="display: none;">
                                                    <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 1px solid #666666;
                                                        filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#2688C5, EndColorStr=#54AEED);
                                                        padding: 10px">
                                                        <table border="0" width="100%" cellspacing="0" cellpadding="1">
                                                            <tr>
                                                                <td valign="middle" style="color: #ffffff">
                                                                    Informasi Anak Perusahaan [Subsidiary]
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
                                                                                            <asp:Label ID="lblNamaCustomer" runat="server" Width="100%" MaxLength="25"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Alamat :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblAlamat" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Kota :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblKota" runat="server" Width="100%" MaxLength="50"></asp:Label>
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
                                                                                            <asp:Label ID="lblTelepon" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Fax :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblFax" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Kode Pos :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblKodePos" runat="server" Width="100%" MaxLength="50"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="30%" valign="top" style="text-align: right; font-style: italic;">
                                                                                            Contact Person :
                                                                                        </td>
                                                                                        <td width="70%" colspan="2" valign="top" style="color: #000000">
                                                                                            <asp:Label ID="lblContact" runat="server" Width="100%" MaxLength="50"></asp:Label>
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
                                                <!-- BEGIN ADDNEW RETUR -->
                                                <asp:Panel ID="panelReturAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Retur Penjualan dari Anak Perusahaan [Subsidiary]
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr style="display: none">
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnCounter" runat="server" Text="Counter" CausesValidation="False">
                                                                                        </asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Retur_AddNewRow_txtCounter" runat="server" Visible="True" Width="100%"
                                                                                            Enabled="True" ReadOnly="False">
                                                                                        </asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnKodeItem" runat="server" Text="Kode Item" CausesValidation="False">
                                                                                        </asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Retur_AddNewRow_txtKodeItem" runat="server" Width="100%" Enabled="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Retur_AddNewRow_lblNamaItem" runat="server" Width="100%" ReadOnly="true"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Kuantitas
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Retur_AddNewRow_txtKuantitas" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="AddNewRow_QtyStock" runat="server" Width="100%" Text="0.00" Visible="False"
                                                                                            ReadOnly="True" />
                                                                                        <asp:Label class="error" ID="lblError" runat="server" Width="100%" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Satuan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:DropDownList ID="Retur_AddNewRow_DdlSatuan" runat="server" Width="100%" Enabled="True"
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
                                                                                        <asp:TextBox ID="Retur_AddNewRow_txtFaktor" runat="server" MaxLength="10" Width="100%"
                                                                                            Text="1" Enabled="True" ReadOnly="True"></asp:TextBox>
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
                                                                                        <asp:TextBox ID="Retur_AddNewRow_txtharga" runat="server" Width="100%" Enabled="True"></asp:TextBox>
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
                                                                                        <asp:TextBox ID="Retur_AddNewRow_txtDiskonPc" runat="server" MaxLength="6" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RangeValidator ID="rvDiskonPc" runat="server" ControlToValidate="Retur_AddNewRow_txtDiskonPc"
                                                                                            MaximumValue="100.00" MinimumValue="0.00" Type="Double" ErrorMessage="Diskon %"
                                                                                            Display="Dynamic">** Angka melewati batas **
                                                                                        </asp:RangeValidator>
                                                                                        <asp:CompareValidator ID="cvDiskonPc" runat="server" ControlToValidate="Retur_AddNewRow_txtDiskonPc"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon %" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Status Retur
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:DropDownList ID="Retur_AddNewRow_ddlStatusRetur" runat="server" Width="100%">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="display: none">
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Hpr
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Retur_AddNewRow_txthpr" runat="server" Width="100%" Enabled="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="Retur_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100"
                                                                                            AccessKey="V"></asp:Button>
                                                                                        <asp:Button ID="Retur_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                            CssClass="sbttn" Width="100" AccessKey="D"></asp:Button>
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
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridRetur" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                Height="100%" DataKeyField="counter" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
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
                                                                    <asp:BoundColumn DataField="noretur" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            ID="_lblNamaItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKodeItem" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="True" CommandName="_AddNewRow"
                                                                                Text="Tambah Data" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qty" runat="server" HeaderText="Qty" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"),"#,##0.00") %>'
                                                                                ID="_lblKuantitas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="true">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>'
                                                                                ID="_lblnmSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="faktor" runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>'
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
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskon"),"#,##0.00") %>'
                                                                                ID="_lblDiskonPc" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"),"#,##0.00") %>'
                                                                                ID="_lblSubTotal" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Hpr" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hpr"),"#,##0.00") %>'
                                                                                ID="_lblHpr" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Status" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdstatus") %>'
                                                                                ID="_lblKdStatus" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="updater" runat="server" HeaderText="Petugas"
                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "updater") %>'
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
                                    </asp:Panel>
                                    <tr class="rbody">
                                        <td align="right">
                                            <table>
                                                <tr class="rbody">
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:Label ID="lblJudulTotal" runat="server" Text="Jumlah Nilai Retur">
                                                        </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
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
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="lblTotalDiskonDt" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="rbody" style="display: 'none'">
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td align="right">
                                                        Jumlah PPn (<asp:Label ID="lblPPn" runat="server" class="right" />&nbsp;%) &nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="txtPPn" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr class="rbody">
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:Label ID="lblJudulTotalAkhir" runat="server" Text="Total Nilai Retur">
                                                        </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                    </td>
                                                    <td align="right">
                                                        <asp:TextBox ID="lblTotalAkhir" runat="server" ReadOnly="True" class="right">
                                                        </asp:TextBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table cellspacing="0" cellpadding="5" width="100%">
                                                <tr class="rbody">
                                                    <td align="left">
                                                        <p>
                                                            <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                            </asp:ValidationSummary>
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
                                                                    <td width="50%" id="rbis">
                                                                        <p>
                                                                            <font class="txtstrong">Salin Retur</font>
                                                                            <br />
                                                                            Salin Data Retur
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Button ID="btnSalinRetur" runat="server" onmouseover="rbis.style.backgroundColor='#ffd27a'"
                                                                            onmouseout="rbis.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                                            CausesValidation="False" />
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
                                    <asp:Panel ID="PanelSalinRetur" runat="server">
                                        <!--#include file="SalinReturPembBP_Grid.incl.aspx" -->
                                    </asp:Panel>
                                </table>
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
            <asp:Button ID="btnCetakReturPenjualanSubsDenganHarga" runat="server" Text="Go" CausesValidation="False" onmouseout="rbip.style.backgroundColor='MintCream'"
            CssClass="sbttn" onmouseover="rbip.style.backgroundColor='#ffd27a'" />
            <div class='qmtitle'>Cetak Bukti Retur Penjualan [Dengan Harga]</div>
            <div class='qmdescription'>Cetak Bukti Retur Penjualan [Dengan Harga].</div>
        </div>
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakReturPenjualanSubsTanpaHarga" runat="server" Text="Go" CausesValidation="False" onmouseout="rbip.style.backgroundColor='MintCream'"
            CssClass="sbttn" onmouseover="rbip.style.backgroundColor='#ffd27a'" />
            <div class='qmtitle'>Cetak Bukti Retur Penjualan [Tanpa Harga]</div>
            <div class='qmdescription'>Cetak Bukti Retur Penjualan [Tanpa Harga].</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkReturPenjualanSubsDenganHarga" Text="Cetak Bukti Retur Penjualan [Dengan Harga]" Selected="True"></asp:ListItem>
            <asp:ListItem Value="ctkReturPenjualanSubsTanpaHarga" Text="Cetak Bukti Retur Penjualan [Tanpa Harga]"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>
</body>
</html>
