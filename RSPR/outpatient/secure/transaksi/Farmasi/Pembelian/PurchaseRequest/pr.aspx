<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pr.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.PurchaseRequest.pr" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Permintaan Pembelian</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="Stylesheet">
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
            oPopup.show(topper, lefter + 20, 550, 200, ttip);
        }
		
		//-->
    </script>
    <%--<style type="text/css">
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
    </style>--%>
</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="frmPermintaan" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table cellspacing="0" cellpadding="2" style="height: 100%;" width="100%" border="0">
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
                                                Pemintaan Pembelian
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
                                                                        <asp:LinkButton ID="lBtnNoBukti" runat="server" Text="No. Bukti" CausesValidation="False"
                                                                            onmouseover="window.status='Click here to select from existing data.';return true"
                                                                            onmouseout="window.status='';return true;" title="Click here to select from existing data."></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoBukti" runat="server" AutoPostBack="true" Width="95%" MaxLength="10"
                                                                            CssClass="txtautogenerate"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <Module:webcal ID="cal" runat="server"></Module:webcal>
                                                                        &nbsp;
                                                                        <asp:TextBox ID="txtJamMinta" runat="server" Style="text-align: center;" Width="23%" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:LinkButton ID="lbtnKodeGudang" CausesValidation="False" Text="Gudang" runat="server" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeGudang" AutoPostBack="true" runat="server" MaxLength="5"
                                                                            Width="24%" />
                                                                        <asp:TextBox ID="lblNamaGudang" runat="server" Width="70%" />
                                                                        <asp:RequiredFieldValidator ID="rfvGudang" runat="server" ControlToValidate="lblNamaGudang"
                                                                            ErrorMessage="Kode Gudang" Display="dynamic">
																									** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Lokasi
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="95%" />
                                                                        <asp:RequiredFieldValidator ID="rfvLokasi" runat="server" Display="dynamic" ErrorMessage="Lokasi"
                                                                            ControlToValidate="ddlLokasi">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Keterangan
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKeterangan" runat="server" MaxLength="50" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
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
                                                <!-- BEGIN ADDNEW PERMINTAAN -->
                                                <asp:Panel ID="panelPermintaanAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr class="rbody">
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Permintaan Pembelian
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%" border="1">
                                                                                <tr>
                                                                                    <td width="20%">
                                                                                    </td>
                                                                                    <td width="15%" align="center">
                                                                                        <b>Satuan Kecil</b>
                                                                                    </td>
                                                                                    <td width="15%" align="center">
                                                                                        <b>Qty On Hand</b>
                                                                                    </td>
                                                                                    <td width="15%" align="center">
                                                                                        <b>Reorder Point</b>
                                                                                    </td>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <asp:TextBox ID="Info_txtSatuan" runat="server" ReadOnly="true" Style="text-align: center" />
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <asp:TextBox ID="Info_txtQOH" runat="server" ReadOnly="true" Style="text-align: center" />
                                                                                    </td>
                                                                                    <td align="center">
                                                                                        <asp:TextBox ID="Info_txtROP" runat="server" ReadOnly="true" Style="text-align: center" />
                                                                                    </td>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtCounter" runat="server" Visible="False"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lBtnKodeItem" runat="server" Text="Kode Item" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                                            onmouseout="window.status='';return true;" title="Click here to select from existing data."
                                                                                            CausesValidation="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtKodeItem" runat="server" MaxLength="10"
                                                                                            Width="100%" AutoPostBack="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPermintaan_AddNewRow_txtKodeItem" runat="server"
                                                                                            Display="dynamic" ErrorMessage="Kode Item" ControlToValidate="Permintaan_AddNewRow_txtKodeItem">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_lblNamaItem" runat="server" MaxLength="25"
                                                                                            Width="100%" ReadOnly="true"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvPermintaan_AddNewRow_txtNamaItem" runat="server"
                                                                                            Display="dynamic" ErrorMessage="Nama Item" ControlToValidate="Permintaan_AddNewRow_lblNamaItem">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lbtnKodeSupplier" runat="server" Text="Kode Supplier" onmouseover="window.status='Click here to select from existing data.';return true"
                                                                                            onmouseout="window.status='';return true;" title="Click here to select from existing data."
                                                                                            CausesValidation="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtKodeSupplier" runat="server" MaxLength="10"
                                                                                            Width="100%" AutoPostBack="True"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Supplier
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_lblNamaSupplier" runat="server" MaxLength="25"
                                                                                            Width="100%" ReadOnly="true"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Qty On Order
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtOPO" runat="server" Width="100%" Text="0.00"
                                                                                            ReadOnly="True"></asp:TextBox>
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
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtKuantitas" runat="server" MaxLength="10"
                                                                                            Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="Permintaan_AddNewRow_txtKuantitas"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage="Kuantitas" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvKuantitas1" runat="server" ControlToValidate="Permintaan_AddNewRow_txtKuantitas"
                                                                                            Operator="GreaterThan" Type="Double" ValueToCompare="0" ErrorMessage="Kuantitas"
                                                                                            Display="Dynamic">
																													**  Harus lebih dari 0.00 **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPermintaan_AddNewRow_txtKuantitas" runat="server"
                                                                                            Display="dynamic" ErrorMessage="Kuantitas" ControlToValidate="Permintaan_AddNewRow_txtKuantitas">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Satuan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:DropDownList ID="Permintaan_AddNewRow_ddlSatuan" runat="server" Width="100%"
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
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtFaktor" runat="server" MaxLength="10" Width="100%"
                                                                                            Text="0.00" ReadOnly="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Jenis Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtJenisitem" runat="server" MaxLength="10"
                                                                                            Width="100%" Text="" ReadOnly="True"></asp:TextBox>
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
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtharga" runat="server" MaxLength="20" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator ID="cvHarga" runat="server" ControlToValidate="Permintaan_AddNewRow_txtHarga"
                                                                                            Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPermintaan_AddNewRow_txtHarga" runat="server"
                                                                                            Display="dynamic" ErrorMessage="Harga" ControlToValidate="Permintaan_AddNewRow_txtHarga">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Diskon %
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="Permintaan_AddNewRow_txtDiskon" runat="server" MaxLength="6" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RangeValidator ID="rvDiskon" runat="server" ControlToValidate="Permintaan_AddNewRow_txtDiskon"
                                                                                            MaximumValue="100" MinimumValue="0" Type="Double" ErrorMessage="Diskon" Display="Dynamic">** Angka melewati batas **
                                                                                        </asp:RangeValidator>
                                                                                        <asp:CompareValidator ID="cvDiskon" runat="server" ControlToValidate="Permintaan_AddNewRow_txtDiskon"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon" Display="Dynamic">** Harus diisi dengan angka **
                                                                                        </asp:CompareValidator>
                                                                                        <asp:RequiredFieldValidator ID="rfvPermintaan_AddNewRow_txtDiskon" runat="server"
                                                                                            Display="dynamic" ErrorMessage="Diskon" ControlToValidate="Permintaan_AddNewRow_txtDiskon">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="Permintaan_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn"
                                                                                            Width="100" AccessKey="V"></asp:Button>
                                                                                        <asp:Button ID="Permintaan_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                            CssClass="sbttn" Width="100" AccessKey="D"></asp:Button>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <!-- END ADDNEW PERMINTAAN -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- START DATAGRID PERMINTAAN -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridPermintaan" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="1" BorderColor="Gainsboro" BorderWidth="0" GridLines="none" Height="100%"
                                                                DataKeyField="counter" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle Font-Bold="false" CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <ItemStyle CssClass="gridItemStyle" />
                                                                <FooterStyle CssClass="gridFooterStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width='26px'>
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 4" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="nominta" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="Supplier" runat="server" HeaderText="Supplier"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="txtwhitelink">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Supplier") %>'
                                                                                            ID="_lblNamaSupplier" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdsupplier") %>'
                                                                                            ID="_lblKodeSupplier" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" HeaderStyle-CssClass="txtwhitelink">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;">
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
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="True" CommandName="_AddNewRow"
                                                                                onmouseover="window.status='Click here to add new record.';return true" onmouseout="window.status='';return true;"
                                                                                title="Click here to add new record." Text="Tambah Data" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Catalog No." ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                ID="_lblCatalogNo" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Jenis Item" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "jenisitem") %>'
                                                                                ID="_lblJenisItem" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qtyminta" runat="server" HeaderText="Kuantitas"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="txtwhitelink">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyminta"),"#,##0.00") %>'
                                                                                ID="_lblKuantitas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False" HeaderStyle-CssClass="txtwhitelink">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center" HeaderStyle-CssClass="txtwhitelink">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>'
                                                                                ID="_lblNmSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem,"faktor"), "#,##0.00") %>'
                                                                                ID="_lblFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonpc"),"#,##0.00") %>'
                                                                                ID="_lblDiskon" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"), "#,##0.00") %>'
                                                                                ID="_lblSubTotal" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="usrupdate" runat="server" HeaderText="Petugas"
                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderStyle-CssClass="txtwhitelink">
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
                                                            Tombol Pintas: [ALT+A]=Tambah Data | [ALT+V]=Simpan Data | [ALT+D]=Close
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID PERMINTAAN -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td align="right">
                                                <table>
                                                    <tr>
                                                        <td align="right">
                                                            Jumlah Nilai Permintaan :
                                                        </td>
                                                        <td align="right">
                                                            &nbsp;Rp.&nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotal" runat="server" class="right" ReadOnly="True">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none">
                                                        <td align="right">
                                                            Jumlah Diskon Detil :
                                                        </td>
                                                        <td align="right">
                                                            &nbsp;Rp.&nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblDiskon" runat="server" class="right" ReadOnly="True">
                                                            </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: 'none'">
                                                        <td align="right">
                                                            Total Nilai Permintaan :
                                                        </td>
                                                        <td align="right">
                                                            &nbsp;Rp.&nbsp;
                                                        </td>
                                                        <td align="right">
                                                            <asp:TextBox ID="lblTotalAftDisc" runat="server" class="right" ReadOnly="True">
                                                            </asp:TextBox>
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
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <!-- Begin Related Links -->
                                <table cellspacing="0" cellpadding="1" width="100%" border="0" style="display: none;">
                                    <tr>
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
                                                    <tr>
                                                        <td>
                                                            <table width="100%">
                                                                <tr valign="top">
                                                                    <td id="rbip" width="50%">
                                                                        <p>
                                                                            <font class="txtstrong">Cetak Permintaan Pembelian</font>
                                                                            <br />
                                                                            Cetak Rincian Permintaan Pembelian
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <input type="button" name="btnCetak1" id="btnCetak1" class="sbttn" value="Go..."
                                                                            style="display: none;" onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                                                                            onclick="javascript:window.open('http://' + location.host + '<%# QIS.Common.Hisconfiguration.ReportsFolder %>fm_/Bukti/PR.asp?is=' + document.getElementById('txtNoBukti').value + '',null,'status=no,resizable=yes,toolbar=no,menubar=no,location=no');" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td>
                                                            <table width="100%">
                                                                <tr valign="top">
                                                                    <td width="50%" id="rbiup">
                                                                        <p>
                                                                            <font class="txtstrong">Batal Approval</font>
                                                                            <br />
                                                                            Batal Approval Transaksi Permintaan Pembelian / PR.
                                                                        </p>
                                                                    </td>
                                                                    <td align="left">
                                                                        <asp:Button ID="btnUnposting" runat="server" CausesValidation="False" onmouseover="rbiup.style.backgroundColor='#ffd27a'"
                                                                            onmouseout="rbiup.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn" />
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
            <asp:Button ID="btnCetakPR" runat="server" CausesValidation="False" onmouseover="rbip.style.backgroundColor='#ffd27a'"
            onmouseout="rbip.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Permintaan Pembelian</div>
            <div class='qmdescription'>Cetak Bukti Permintaan Pembelian.</div>
        </div>
    </div>--%>
    <!-- End Side Menu -->
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkCetakPR" Text="Cetak Bukti Permintaan Pembelian" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display: none">
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
        function fokus() {
            try {

                var nobukti;
                nobukti = ditrim(document.getElementById('txtNoBukti').value);
                //alert(nobukti);
                var kdgudang;
                kdgudang = ditrim(document.getElementById('txtKodeGudang').value);
                //alert(kdsupplier);
                if (nobukti == '') {
                    if (kdgudang == '') {
                        document.getElementById('lbtnKodeGudang').focus();
                        //document.getElementById('lbtnKodeSupplier').select();
                    }
                    else {
                        document.getElementById('gridPermintaan__ctl2__btnAddNewRow').focus();
                        //document.getElementById('Pemesanan_AddNewRow_txtKodeItem').select();
                    }
                }
                else {
                    document.getElementById('lbtnNoBukti').focus();
                }

                if (typeof (document.getElementById('Permintaan_AddNewRow_txtKodeItem')) !== 'undefined') {
                    var kdbarang;
                    kdbarang = ditrim(document.getElementById('Permintaan_AddNewRow_txtKodeItem').value);

                    if (kdbarang == '') {
                        document.getElementById('lBtnKodeItem').focus();
                        document.getElementById('lBtnKodeItem').select();
                    }
                    else {
                        document.getElementById('Permintaan_AddNewRow_txtKuantitas').focus();
                        document.getElementById('Permintaan_AddNewRow_txtKuantitas').select();
                    }
                }
            }
            catch (e) {
            }
        }
		    
    </script>
</body>
</html>
