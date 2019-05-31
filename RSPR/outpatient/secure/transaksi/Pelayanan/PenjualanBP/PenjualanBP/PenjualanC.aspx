<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PenjualanC.aspx.vb" Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanBP.PenjualanBP.PenjualanC" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Penjualan ke Anak Perusahaan [Subsidiary]</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

    <script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
			End Function			
    </script>

    <script language="javascript">

        function fokus() {
            try {
                var kdbarang;
                kdbarang = document.getElementById('PenjC_AddNewRow_txtKodeItem').value;
                kdbarang = ditrim(kdbarang);
                if (kdbarang == '') {
                    document.getElementById('lBtnKodeItem').focus();
                    document.getElementById('lBtnKodeItem').select();
                }
                else {
                    document.getElementById('PenjC_AddNewRow_txtKuantitas').focus();
                    document.getElementById('PenjC_AddNewRow_txtKuantitas').select();
                }
            }
            catch (e) {
            }
        }
		    
    </script>

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
            oPopup.show(topper, lefter + 20, 550, 200, ttip);
        }

        function ShowBatal() {
            if (typeof (PopupVoid) !== 'undefined') {
                /*x = event.clientX + document.body.scrollLeft; */
                var lebar;
                var tinggi;
                tinggi = delpx(PopupVoid.currentStyle.height);
                lebar = delpx(PopupVoid.currentStyle.width);
                var x = (screen.availWidth - lebar) / 2;
                var y = (screen.availHeight - tinggi) / 2;
                /* get the mouse left position */
                /*y = event.clientY + document.body.scrollTop + 10; */
                /* get the mouse top position  */
                PopupVoid.style.display = "block";
                /* display the pop-up */
                PopupVoid.style.left = x;
                /* set the pop-up's left */
                PopupVoid.style.top = y;
                /* set the pop-up's top */
            }
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
<body onload="ShowPosting();ShowBatal();fokus();">
    <form id="frmPenjC" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="pnlvoid" runat="server">
        <div id="PopupVoid" class="transparent">
            <div>
                <font size="72" color="Red">VOID</font>
            </div>
        </div>
    </asp:Panel>
    <table cellspacing="0" cellpadding="2" width="100%" style="height: 100%;" border="0">
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
            <td valign="top" width="100%" style="height: 100%;">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Penjualan ke Anak Perusahaan [Subsidiary]
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lBtnNoBukti" runat="server" Text="No. Bukti" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoBukti" runat="server" AutoPostBack="true" Width="95%" MaxLength="10" CssClass="txtautogenerate"></asp:TextBox>
                                                                        <asp:TextBox ID="PenjC_AddNewRow_txtCounter" runat="server" Visible="False" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggal" runat="server" ReadOnly="true" Width="95%"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodeCustomer" runat="server" Text="Kode Customer" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeCustomer" runat="server" AutoPostBack="true" Width="95%"
                                                                            MaxLength="10"></asp:TextBox>
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
                                                                            <asp:Label ID="lblInformasiCustomer" runat="server" Text="Informasi Customer:" />
                                                                        </span>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        No. Surat Pesan
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoSP" runat="server" Width="95%" MaxLength="20"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodeGudang" runat="server" Text="Gudang" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeGudang" runat="server" Width="24%">
                                                                        </asp:TextBox>
                                                                        <asp:TextBox ID="lblNamaGudang" runat="server" ReadOnly="true" Width="70%" />
                                                                        <asp:RequiredFieldValidator ID="rfvKodeGudang" runat="server" Display="dynamic" ErrorMessage="Gudang"
                                                                            ControlToValidate="lblNamaGudang">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:Label ID="lblLokasi" runat="server" Text="Lokasi"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="95%">
                                                                        </asp:DropDownList>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPPn" runat="server" Text="PPN" Enabled="True" AutoPostBack="True"
                                                                            Visible="false"></asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                                <asp:Panel ID="panelPPn" runat="server">
                                                                    <tr>
                                                                        <td width="30%">
                                                                            No. Faktur Pajak
                                                                        </td>
                                                                        <td>
                                                                            <asp:TextBox ID="txtNoFPajak" runat="server" Width="95%"></asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="30%">
                                                                            Tgl. Faktur Pajak
                                                                        </td>
                                                                        <td>
                                                                            <Module:webcal ID="calTanggalFakturPajak" runat="server"></Module:webcal>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </asp:Panel>
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
                                                <!-- BEGIN ADDNEW Pembelian Bebas -->
                                                <asp:Panel ID="panelPenjCAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Penjualan ke Anak Perusahaan [Subsidiary]
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnKodeItem" runat="server" Text="Kode Item" CausesValidation="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="PenjC_AddNewRow_txtKodeItem" runat="server" MaxLength="10" Width="100%"
                                                                                            AutoPostBack="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPenjC_AddNewRow_txtKodeItem" runat="server" Display="dynamic"
                                                                                            ErrorMessage="Kode Item" ControlToValidate="PenjC_AddNewRow_txtKodeItem">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="PenjC_AddNewRow_lblNamaItem" runat="server" Width="100%" ReadOnly="true"></asp:TextBox>
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
                                                                                        <asp:TextBox ID="PenjC_AddNewRow_txtKuantitas" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="PenjC_AddNewRow_txtKuantitas"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage="Kuantitas" Display="Dynamic">** Kuantitas harus diisi dengan angka **</asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvKuantitas1" runat="server" ControlToValidate="PenjC_AddNewRow_txtKuantitas"
                                                                                            Operator="GreaterThan" Type="Double" ValueToCompare="0.00" ErrorMessage="Kuantitas"
                                                                                            Display="Dynamic">**  Kuantitas harus lebih dari 0.00 **</asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Satuan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:DropDownList ID="PenjC_AddNewRow_ddlSatuan" runat="server" Width="100%" AutoPostBack="True">
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
                                                                                        <asp:TextBox ID="PenjC_AddNewRow_txtFaktor" runat="server" MaxLength="10" Width="100%"
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
                                                                                        <asp:TextBox ID="PenjC_AddNewRow_txtharga" runat="server" MaxLength="20" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvHarga" runat="server" ControlToValidate="PenjC_AddNewRow_txtharga"
                                                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">** Harga harus diisi dengan angka **</asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Diskon %
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="PenjC_AddNewRow_txtDiskon" runat="server" MaxLength="6" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RangeValidator ID="rvDiskon" runat="server" ControlToValidate="PenjC_AddNewRow_txtDiskon"
                                                                                            MaximumValue="100.00" MinimumValue="0.00" Type="Double" ErrorMessage="Diskon"
                                                                                            Display="Dynamic">** Diskon melebihi 100% **</asp:RangeValidator>
                                                                                        <asp:CompareValidator ID="cvDiskon" runat="server" ControlToValidate="PenjC_AddNewRow_txtDiskon"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon" Display="Dynamic">** Diskon harus diisi dengan angka **</asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="PenjC_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100"
                                                                                            AccessKey="V"></asp:Button>
                                                                                        <asp:Button ID="PenjC_btnDone" runat="server" Text="Close" CausesValidation="False"
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
                                                <!-- END ADDNEW Pembelian Bebas -->
                                                <!-- START DATAGRID Pembelian Bebas -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridPenjC" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                Height="100%" AllowPaging="false" PageSize="20" DataKeyField="counter" ShowFooter="True"
                                                                CellPadding="0" AllowSorting="True">
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
                                                                    <asp:BoundColumn DataField="nobukti" Visible="False" />
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
                                                                    <asp:TemplateColumn SortExpression="qty" runat="server" HeaderText="Kuantitas" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"),"#,##0.00") %>'
                                                                                ID="_lblKuantitas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="true">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>'
                                                                                ID="_lblnmSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="faktor" runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "faktor"),"#,##0.00") %>'
                                                                                ID="_lblfaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Disc %" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskon"),"#,##0.00") %>'
                                                                                ID="_lblDiskon" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"), "#,##0.00") %>'
                                                                                ID="_lblSubTotal" />
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
                                                        <td class="txtweakinfo">
                                                            Tombol Pintas: [ALT+A]=Tambah Data | [Alt+V]=Simpan | [ALT+D]=Selesai
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID Pembelian Bebas -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td align="right">
                                                <table>
                                                    <tr class="rbody">
                                                        <td align="right">
                                                            Jumlah Nilai Penjualan :
                                                        </td>
                                                        <td align="right">
                                                            &nbsp;Rp.&nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotal" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td align="right">
                                                            Jumlah Diskon Detil :
                                                        </td>
                                                        <td align="right">
                                                            &nbsp;Rp.&nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblDiskon" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody" style='display: "none"'>
                                                        <td align="right">
                                                            Jumlah PPN (<asp:Label ID="lblKetPPn" runat="server" />%) :
                                                        </td>
                                                        <td align="right">
                                                            &nbsp;Rp.&nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblPPn" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td align="right">
                                                            Total Nilai Penjualan :
                                                        </td>
                                                        <td align="right">
                                                            &nbsp;Rp.&nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotalAftPPn" runat="server" ReadOnly="True" class="right">
                                                            </asp:TextBox>
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
                                                    <tr valign="top">
                                                        <td width="50%" id="rbatal">
                                                            <p>
                                                                <font class="txtstrong">Batal Approval Penjualan</font>
                                                                <br />
                                                                Batal Approval transaksi Penjualan; data bisa dibatalkan bila belum ada pembayaran.
                                                            </p>
                                                        </td>
                                                        <td align="left">
                                                            <asp:Button ID="btnUnposting" onmouseover="rbatal.style.backgroundColor='#ffd27a'"
                                                                onmouseout="rbatal.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                CssClass="sbttn" CausesValidation="False"></asp:Button>
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
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakPenjualanSubs" runat="server" Text="Go" CausesValidation="False" onmouseout="rcetak.style.backgroundColor='MintCream'"
            CssClass="sbttn" onmouseover="rcetak.style.backgroundColor='#ffd27a'" />
            <div class='qmtitle'>Cetak Bukti Penjualan</div>
            <div class='qmdescription'>Cetak Bukti Penjualan Anak Perusahaan.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkPenjualanSubs" Text="Cetak Bukti Penjualan" Selected="True"></asp:ListItem>
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
