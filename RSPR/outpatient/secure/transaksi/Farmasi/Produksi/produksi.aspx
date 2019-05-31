<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="produksi.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.Produksi.Produksi" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Produksi / Pengemasan Kembali Persediaan</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body onload="ShowPosting()">
    <form id="frmproduksi" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
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
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
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
                                                Produksi atau Pengemasan Kembali Persediaan
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
                                                                        <asp:LinkButton ID="lbtnNoproduksi" runat="server" Text="No. Produksi" CausesValidation="False" />
                                                                    </td>
                                                                    <td width="65%" colspan="2">
                                                                        <asp:TextBox ID="txtNoproduksi" runat="server" AutoPostBack="true" Width="97.5%" CssClass="txtautogenerate"
                                                                            MaxLength="10" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td width="65%" colspan="2">
                                                                        <asp:TextBox ID="txtTanggal" runat="server" ReadOnly="true" Width="97.5%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKdGudang" runat="server" Text="Gudang" CausesValidation="False" />
                                                                    </td>
                                                                    <td width="65%">
                                                                        <asp:TextBox ID="txtKdGudang" runat="server" AutoPostBack="true" Width="25%" MaxLength="10" />
                                                                        <asp:TextBox ID="txtNmGudang" runat="server" AutoPostBack="true" Width="74%" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvKdGudang" runat="server" Display="dynamic" ErrorMessage="Gudang"
                                                                            ControlToValidate="txtkdGudang">
																				**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Lokasi
                                                                    </td>
                                                                    <td width="65%" colspan="2">
                                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="97.5%" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKdbarang" runat="server" Text="Kode Formula" CausesValidation="False" />
                                                                    </td>
                                                                    <td width="65%">
                                                                        <asp:TextBox ID="txtKdBarang" runat="server" AutoPostBack="true" Width="25%" MaxLength="10" />
                                                                        <asp:TextBox ID="txtNmBarang" runat="server" ReadOnly="true" Width="73.5%" />
                                                                    </td>
                                                                    <td width="5%">
                                                                        <asp:RequiredFieldValidator ID="rfvKdBarang" runat="server" ControlToValidate="txtKdBarang"
                                                                            ErrorMessage="Kode Formula" Display="dynamic">
																				**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Qty Produksi
                                                                    </td>
                                                                    <td width="65%">
                                                                        <asp:TextBox ID="txtQtyProduksi" runat="server" MaxLength="10" Width="25%" />
                                                                        <asp:TextBox ID="txtSatProduksi" runat="server" MaxLength="10" Width="73.5%" ReadOnly="True" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvQtyProduksi" runat="server" ControlToValidate="txtQtyProduksi"
                                                                            ErrorMessage="Qty produksi" Display="dynamic">
																				**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Harga Satuan Produksi
                                                                    </td>
                                                                    <td width="65%">
                                                                        <asp:TextBox ID="txtHargaProduksi" runat="server" Width="100%" ReadOnly="True" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Fixed Cost Satuan Produksi
                                                                    </td>
                                                                    <td width="65%">
                                                                        <asp:TextBox ID="txtFCostProduksi" runat="server" Width="100%" ReadOnly="True" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr style="display: 'none'">
                                                                    <td width="30%">
                                                                        Expired
                                                                    </td>
                                                                    <td width="65%">
                                                                        <asp:TextBox ID="txtExpired" runat="server" Width="100%" MaxLength="10" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- BEGIN ADDNEW produksi -->
                                                <asp:Panel ID="panelproduksiAddNewRow" runat="server">
                                                    <asp:TextBox ID="txtFldCounter" runat="Server" Visible="False" />
                                                    <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                        width="100%">
                                                        <tr class="rheader">
                                                            <td class="rheadercol" align="left" height="25">
                                                                Edit atau Tambah Item Produksi
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table cellspacing="1" cellpadding="1" width="100%">
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            <asp:LinkButton ID="lblFldKdBarang" runat="server" Text="Kode Item" CausesValidation="False" />
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtFldKdBarang" runat="server" AutoPostBack="true" Width="100%"
                                                                                MaxLength="10" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:RequiredFieldValidator ID="rfvFldKdBarang" runat="server" ControlToValidate="txtFldKdBarang"
                                                                                ErrorMessage="Kode Item" Display="dynamic">
																					**
                                                                            </asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Nama Item
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtFldNmItem" runat="server" Width="100%" MaxLength="50" ReadOnly="True" />
                                                                        </td>
                                                                        <td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Qty Pakai
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtFldQtyPrd" runat="server" MaxLength="10" Width="100%" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:RequiredFieldValidator ID="rfvFldQtyPrd" runat="server" ControlToValidate="txtFldQtyPrd"
                                                                                ErrorMessage="Qty produksi" Display="dynamic">
																					**
                                                                            </asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Satuan
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtFldSatuan" runat="server" Width="100%" MaxLength="50" ReadOnly="True" />
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
                                                                            <asp:TextBox ID="txtFldFaktor" runat="server" Width="100%" MaxLength="50" ReadOnly="True" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%" style="display: 'none'">
                                                                    <tr>
                                                                        <td width="5%">
                                                                            <asp:Button ID="produksiDt_btnAddNewRow" runat="server" Text="Save" Width="100" CssClass="sbttn" />
                                                                            <asp:Button ID="produksiDt_btnDone" runat="server" Text="Close" Width="100" CausesValidation="False"
                                                                                CssClass="sbttn" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr valign="bottom" bgcolor="white">
                                                            <td align="left" height="25">
                                                                <p style="align='right'">
                                                                    Data yang sudah ada...</p>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <!-- END ADDNEW produksi -->
                                                <!-- START DATAGRID produksi -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridproduksiDt" runat="server" Width="100%" CellPadding="0" ShowFooter="True"
                                                                DataKeyField="counter" Height="100%" GridLines="none" BorderWidth="1" BorderColor="Gainsboro"
                                                                CellSpacing="0" AutoGenerateColumns="False" AllowSorting="True">
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" Visible="False" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Visible="False" Style="margin-top: 2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="noproduksi" Visible="False" />
                                                                    <asp:BoundColumn DataField="counter" Visible="False" />
                                                                    <asp:TemplateColumn runat="server" HeaderText="noproduksi" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "noproduksi") %>'
                                                                                ID="_lblNoproduksi" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="counter" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                                ID="_lblCounter" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="kdbarang" runat="server" HeaderText="Kode Item">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                ID="_lblKodeBarang" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NmDesc1" runat="server" HeaderText="Nama Item">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "NmDesc1") %>'
                                                                                ID="_lblNmItem" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NmDesc2" runat="server" HeaderText="Catalog No.">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "NmDesc2") %>'
                                                                                ID="_lblCatalogNo" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="Qty" runat="server" HeaderText="Qty">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "Qty"), "#,##0.00") %>'
                                                                                ID="_lblQtyDist" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                ID="_lblnmSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Faktor" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>'
                                                                                ID="_lblFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="hpr" runat="server" HeaderText="Harga Stock"
                                                                        Visible="True" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hpr"), "#,##0.00") %>'
                                                                                ID="_lblHpr" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Total" Visible="True" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "hpr")*DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>'
                                                                                ID="_lblTotal" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="usrupdate" runat="server" HeaderText="Petugas"
                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "usrupdate") %>'
                                                                                ID="_lblPetugas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID produksi -->
                                            </td>
                                        </tr>
                                    </table>
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr>
                                            <td align="left">
                                                <p>
                                                    <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
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
                                                    <table width="100%" bgcolor="MintCream" bgcolor="#b0c7cb" cellspacing="10" cellpadding="0">
                                                        <tr valign="top" style="display: none">
                                                            <td width="50%" id="rbiks">
                                                                <p>
                                                                    <font class="txtstrong">Gudang & Lokasi</font>
                                                                    <br />
                                                                    Input Data Gudang & Lokasi Penyimpanan barang.
                                                                </p>
                                                            </td>
                                                            <td align="left">
                                                                <asp:Button ID="btnGudang" runat="server" onmouseover="rbiks.style.backgroundColor='#ffd27a'"
                                                                    onmouseout="rbiks.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                                    CausesValidation="False" />
                                                            </td>
                                                        </tr>
                                                        <tr valign="top" style="display: none">
                                                            <td width="50%" id="rbisf">
                                                                <p>
                                                                    <font class="txtstrong">Standard Field</font>
                                                                    <br />
                                                                    Update data Standart Field; yang dapat di-update dari standrad field: GROUP, KELOMPOK,
                                                                    TYPE, SATUAN
                                                                </p>
                                                            </td>
                                                            <td align="left">
                                                                <asp:Button ID="btnStandardField" onmouseover="rbisf.style.backgroundColor='#ffd27a'"
                                                                    onmouseout="rbisf.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                    CssClass="sbttn" CausesValidation="False" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- End Related Links -->
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
            <asp:Button ID="btnCetakProduksiBarang" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Produksi Barang</div>
            <div class='qmdescription'>Cetak Bukti Produksi/Pengemasan Kembali Barang.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkProduksiBarang" Text="Cetak Bukti Produksi Barang" Selected="True"></asp:ListItem>
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

</body>
</html>
