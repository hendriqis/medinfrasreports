<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pemakaianBarang.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.PemakaianBarang.pemakaianBarang" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Pemakaian Barang</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <style type="text/css">
        .transparent
        {
            filter: alpha(opacity=20);
            background-color: Transparent;
            display: none;
            width: 170;
            height: 100;
            position: absolute;
            color: white;
        }
    </style>
</head>
<body onload="ShowPosting();fokus();">
    <form id="frmPemakaian" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
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
            <td width="100%" height="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Pemakaian Barang
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" height="25">
                                            <!-- ---------------------------------
																	HEADER BEGIN HERE 
																------------------------------------- -->
                                            <table width="100%">
                                                <tr>
                                                    <!-- ---------------------------------
																			LEFT SECTION
																		------------------------------------- -->
                                                    <td width="50%" valign="top">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="20%">
                                                                    <asp:LinkButton ID="lbtnNoPemakaian" CausesValidation="False" Text="No. Pemakaian"
                                                                        runat="server" />
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtNoPemakaian" AutoPostBack="true" runat="server" MaxLength="10" CssClass="txtautogenerate"
                                                                        Width="95%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    Tanggal
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtTanggal" ReadOnly="true" runat="server" Width="95%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%">
                                                                    <asp:LinkButton ID="lbtnGudang" CausesValidation="False" Text="Gudang" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtKodeGudang" AutoPostBack="true" runat="server" MaxLength="5"
                                                                        Width="24%" />
                                                                    <asp:TextBox ID="txtNamaGudang" runat="server" Width="70%" ReadOnly="true" />
                                                                    <asp:RequiredFieldValidator ID="rfvGudang" runat="server" ControlToValidate="txtKodeGudang"
                                                                        ErrorMessage="Kode Gudang" Display="dynamic">
																												** 
                                                                    </asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <!-- ---------------------------------
																			END LEFT SECTION
																		------------------------------------- -->
                                                    <!-- ---------------------------------
																			RIGHT SECTION
																		------------------------------------- -->
                                                    <td width="50%" valign="top">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="20%">
                                                                    Pemakai
                                                                </td>
                                                                <td>
                                                                    <asp:DropDownList ID="ddlPemakai" runat="server" Width="95%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="20%" valign="middle">
                                                                    Keterangan
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtKeterangan" Width="95%" Rows="3" MaxLength="75" TextMode="multiline"
                                                                        runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr style="display: none">
                                                                <td width="20%">
                                                                </td>
                                                                <td>
                                                                    <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <!-- ---------------------------------
																			RIGHT SECTION
																		------------------------------------- -->
                                                </tr>
                                            </table>
                                            <!-- ---------------------------------
																	HEADER END HERE 
																------------------------------------- -->
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="middle" height="25">
                                            <!-- BEGIN ADDNEW Pemakaian -->
                                            <asp:Panel ID="panelPemakaianAddNewRow" runat="server">
                                                <table width="100%">
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtCounter" runat="server" Visible="False" />
                                                            <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                width="100%">
                                                                <tr class="rheader">
                                                                    <td class="rheadercol" align="left" height="25">
                                                                        Edit atau Tambah Item Pemakaian Barang
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <table cellspacing="1" cellpadding="1" width="100%">
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Lokasi
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:DropDownList ID="Pemakaian_AddNewRow_ddlLokasi" runat="server" Width="100%"
                                                                                        AutoPostBack="False" />
                                                                                </td>
                                                                                <td class="rBodyAddNewFld">
                                                                                    <asp:RequiredFieldValidator ID="rfvLokasi" runat="server" ControlToValidate="Pemakaian_AddNewRow_ddlLokasi"
                                                                                        ErrorMessage="Kode Lokasi" Display="dynamic">
																																	** 
                                                                                    </asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    <asp:LinkButton ID="lBtnKodeBarang" runat="server" Text="Kode Item" CausesValidation="False" />
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="Pemakaian_AddNewRow_txtKodeBarang" runat="server" MaxLength="10"
                                                                                        Width="100%" AutoPostBack="True" />
                                                                                </td>
                                                                                <td class="rBodyAddNewFld">
                                                                                    <asp:RequiredFieldValidator ID="rfvPemakaian_AddNewRow_txtKodeBarang" runat="server"
                                                                                        Display="dynamic" ErrorMessage="Kode Item" ControlToValidate="Pemakaian_AddNewRow_txtKodeBarang">
																											** 
                                                                                    </asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Nama Item
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="Pemakaian_AddNewRow_lblNamaBarang" runat="server" MaxLength="25"
                                                                                        Width="100%" ReadOnly="true" />
                                                                                    <asp:CheckBox ID="chkNonStock" runat="server" Text="NonStock" Enabled="False" Visible="False" />
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
                                                                                    <asp:TextBox ID="Pemakaian_AddNewRow_txtKuantitas" runat="server" MaxLength="10"
                                                                                        Width="100%" />
                                                                                </td>
                                                                                <td class="rBodyAddNewFld">
                                                                                    <asp:Label class="error" ID="lblError" runat="server" Width="100%" />
                                                                                    <asp:RequiredFieldValidator ID="rfvKuantitas" runat="server" ControlToValidate="Pemakaian_AddNewRow_txtKuantitas"
                                                                                        ErrorMessage="Kuantitas" Display="dynamic">
																											** REQUIRED FIELD **
                                                                                    </asp:RequiredFieldValidator>
                                                                                    <asp:CompareValidator ID="cvKuantitas" runat="server" ControlToValidate="Pemakaian_AddNewRow_txtKuantitas"
                                                                                        Operator="DataTypeCheck" Type="Double" ErrorMessage="Kuantitas" Display="Dynamic">
																											** Harus diisi dengan angka **
                                                                                    </asp:CompareValidator>
                                                                                    <asp:CompareValidator ID="cvKuantitas1" runat="server" ControlToValidate="Pemakaian_AddNewRow_txtKuantitas"
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
                                                                                    <asp:DropDownList ID="Pemakaian_AddNewRow_ddlSatuan" runat="server" Width="100%"
                                                                                        AutoPostBack="True" />
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
                                                                                    <asp:TextBox ID="Pemakaian_AddNewRow_txtFaktor" runat="server" MaxLength="10" Width="100%"
                                                                                        Text="1" ReadOnly="True" />
                                                                                </td>
                                                                                <td class="rBodyAddNewFld">
                                                                                    &nbsp;
                                                                                </td>
                                                                            </tr>
                                                                            <tr style="display: none">
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Harga
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="Pemakaian_AddNewRow_txtharga" runat="server" MaxLength="20" Width="100%" />
                                                                                </td>
                                                                                <td class="rBodyAddNewFld">
                                                                                    <asp:CompareValidator ID="cvHarga" runat="server" ControlToValidate="Pemakaian_AddNewRow_txtharga"
                                                                                        Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">
																											** Harus diisi dengan angka **
                                                                                    </asp:CompareValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr style="display: none">
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Expired
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="Pemakaian_AddNewRow_txtExpired" runat="server" MaxLength="20" Width="100%" />
                                                                                </td>
                                                                                <td class="rBodyAddNewFld">
                                                                                    &nbsp;
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td width="5%">
                                                                                    <asp:Button ID="Pemakaian_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn"
                                                                                        Style="width: 100;" AccessKey="V" />
                                                                                </td>
                                                                                <td>
                                                                                    <asp:Button ID="Pemakaian_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                        CssClass="sbttn" Style="width: 100;" AccessKey="D" />
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
                                            <!-- END ADDNEW Pemakaian -->
                                            <!-- START DATAGRID Pemakaian -->
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%" height="100%">
                                                        <asp:DataGrid ID="gridPemakaian" runat="server" Width="100%" AutoGenerateColumns="False"
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
                                                                    CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                    <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                </asp:EditCommandColumn>
                                                                <asp:TemplateColumn ItemStyle-Width="26px">
                                                                    <ItemTemplate>
                                                                        <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                            AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 2" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="nopakai" Visible="False" />
                                                                <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                <asp:TemplateColumn runat="server" HeaderText="Counter" HeaderStyle-HorizontalAlign="Center"
                                                                    Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                            ID="_lblCounter" />
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Lokasi" HeaderStyle-HorizontalAlign="Center"
                                                                    Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>'
                                                                            ID="_lblLokasi" />
                                                                    </ItemTemplate>
                                                                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <table>
                                                                            <tr>
                                                                                <td colspan="3" style="color: #000000;">
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
                                                                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"nmdesc2") %>'
                                                                                        ID="_lblCatalogNo" />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </ItemTemplate>
                                                                    <FooterTemplate>
                                                                        <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                            Text="Tambah Data" AccessKey="A" />
                                                                    </FooterTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="qtypakai" runat="server" HeaderText="Kuantitas"
                                                                    ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtypakai"),"#,##0.00") %>'
                                                                            ID="_lblKuantitas" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"satuan") %>'
                                                                            ID="_lblSatuan" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                    ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"nmsatuan") %>'
                                                                            ID="_lblnmSatuan" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="faktor" runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem,"faktor"), "#,##0.00") %>'
                                                                            ID="_lblFaktor" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"),"#,##0.00") %>'
                                                                            ID="_lblHarga" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="SubTotal" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 10; margin-right: 10" Text='<%# Format(DataBinder.Eval(Container.DataItem, "subTotal"), "#,##0.00") %>'
                                                                            ID="_lblSubTotal" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn runat="server" HeaderText="Expired" ItemStyle-HorizontalAlign="Center"
                                                                    HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "expired"), "dd-MM-yyyy") %>'
                                                                            ID="_lblExpired" />
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
                                            </table>
                                            <!-- END DATAGRID Pemakaian -->
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td align="right">
                                            <table>
                                                <tr class="rbody">
                                                    <td>
                                                        <asp:Label ID="lblJudulTotal" runat="server" Text="Total Nilai Pemakaian Barang">
                                                        </asp:Label>&nbsp;&nbsp;:&nbsp;&nbsp;Rp.&nbsp;
                                                        <asp:Label ID="lblTotal" runat="server">
                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
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
                                                        <td width="50%" id="rbiu">
                                                            <p>
                                                                <font class="txtstrong">Update Pemakaian</font>
                                                                <br />
                                                                Update data pemakaian (Tanggal Pakai,Pemakai)
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
            <asp:Button ID="btnCetakPemakaianBarang" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Pemakaian Barang</div>
            <div class='qmdescription'>Cetak Bukti Pemakaian Barang.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkPemakaianBarang" Text="Cetak Bukti Pemakaian Barang" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>

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
            var kdgudang;
            kdgudang = ditrim(document.getElementById('txtKodeGudang').value);

            if (kdgudang == '') {
                document.getElementById('lbtnGudang').focus();
            }
            else {
                //document.getElementById('gridInisialisasi__ctl2__btnAddNewRow').focus();  		
            }

            //if (typeof(document.getElementById('Pemakaian_AddNewRow_txtKodeBarang'))!=='undefined')
            //	{
            var kdbarang;
            kdbarang = ditrim(document.getElementById('Pemakaian_AddNewRow_txtKodeBarang').value);

            if (kdbarang == '') {
                document.getElementById('lBtnKodeBarang').focus();
                document.getElementById('lBtnKodeBarang').select();
            }
            else {
                document.getElementById('Pemakaian_AddNewRow_txtKuantitas').focus();
                document.getElementById('Pemakaian_AddNewRow_txtKuantitas').select();
            }
        }
        //}
        catch (e) {
        }
    }	
</script>

