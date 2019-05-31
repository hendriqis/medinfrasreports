<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StockOpname_New.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Stock.StockOpname.StockOpname_New" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI, Version=1.9.0.0, Culture=neutral, PublicKeyToken=24d65337282035f2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Opname Persediaan</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
</head>
<body onload="fokus();">
    <form id="frmPenyesuaianRj" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlApproved" Visible="false" runat="server">
        <div class="transparent" id="Popup" style="width: 50%">
            <font color="red" size="72">APPROVED</font>
        </div>
    </asp:Panel>
    <table border="0" width="100%" style="height: 100%;" cellspacing="0" cellpadding="2">
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
            <td width="100%" valign="top" style="height: 100%;">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Opname Persediaan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="center">
                                            <table width="100%">
                                                <tr>
                                                    <td width="50%" valign="top">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="30%">
                                                                    <asp:LinkButton ID="lbtnNoBukti" CausesValidation="False" Text="No. Bukti Opname"
                                                                        runat="server" />
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:TextBox ID="txtnobukti" AutoPostBack="true" runat="server" MaxLength="15" Width="100"
                                                                        CssClass="txtautogenerate" />
                                                                    <asp:Button ID="btnStartOpname" runat="server" Text="Mulai Hitung" CssClass="sbttn"
                                                                        Width="100" />
                                                                    <asp:Button ID="btnStopOpname" runat="server" Text="Selesai Hitung" CssClass="sbttn"
                                                                        Width="100" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="30%">
                                                                    <asp:CheckBox ID="chkIsSelesaiByDateTime" runat="server" Text="Tanggal Jam Selesai Hitung" AutoPostBack="false" />
                                                                </td>
                                                                <td width="70%">
                                                                    <Module:webcal ID="calStopOpname" runat="server"></Module:webcal>
                                                                    <ew:maskedtextbox id="txtJamStopOpname" runat="server" autopostback="False" width="100" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="30%">
                                                                    Tanggal Opname
                                                                </td>
                                                                <td width="70%">
                                                                    <Module:webcal ID="Cal" runat="server"></Module:webcal>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="30%">
                                                                    Berita Acara
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:TextBox ID="txtBeritaAcara" runat="server" TextMode="Multiline" Height="75"
                                                                        Width="300" />
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="50%" valign="top">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="30%">
                                                                    <asp:LinkButton ID="lbtnGudang" runat="server" Text="Gudang " CausesValidation="False" />
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:TextBox ID="txtKodeGudang" runat="server" Width="150" AutoPostBack="True" />
                                                                    <asp:Label ID="lblNamaGudang" runat="server" />
                                                                </td>
                                                                <asp:RequiredFieldValidator ID="rfvGudang" runat="server" ControlToValidate="txtKodeGudang"
                                                                    ErrorMessage="Kode Gudang" Display="Dynamic">**
                                                                </asp:RequiredFieldValidator>
                                                            </tr>
                                                            <tr>
                                                                <td width="30%">
                                                                    Lokasi
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:DropDownList ID="ddlLokasi" runat="server" Width="80%" AutoPostBack="True" />
                                                                </td>
                                                            </tr>
                                                            <tr style="display: none;">
                                                                <td width="30%">
                                                                    Product Line
                                                                </td>
                                                                <td width="70%">
                                                                    <asp:DropDownList ID="ddlGroup" runat="server" Width="80%" AutoPostBack="True" />
                                                                </td>
                                                            </tr>
                                                            <asp:Panel ID="pnlFilterKelompok" runat="server">
                                                                <tr>
                                                                    <td width="30%">
                                                                        Kelompok
                                                                    </td>
                                                                    <td width="70%">
                                                                        <asp:DropDownList ID="ddlKelompok" runat="server" Width="80%" AutoPostBack="True" />
                                                                    </td>
                                                                </tr>
                                                            </asp:Panel>                                                            
                                                            <tr>
                                                                <td colspan="2" style="background-color: MintCream; border-width: medium; border-color: #666666;">
                                                                    <asp:Panel ID="pnlMesage" runat="server">
                                                                        <img src="/qislib/images/info.png" border="0" /><br />
                                                                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                                                        <!-- ASO : After Stock Opname
                                                                        <br /> -->
                                                                        BSO : Before Stock Opname
                                                                        <br />
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <!-- ---------------------------------
															END LEFT SECTION
														------------------------------------- -->
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="center" height="25">
                                            <table width="100%">
                                                <tr>
                                                    <td align="left" style="width: 120px">
                                                        <asp:Label runat="server" Style="margin-left: 5px; margin-right: 5px" Text='Page : '
                                                            ID="lblJudulHalaman" Font-Size="14" fontcolor="red" />
                                                        <asp:Label runat="server" Style="margin-left: 5px; margin-right: 5px" ID="lblNoPage"
                                                            Font-Size="14" />
                                                    </td>
                                                    <td align="right">
                                                        <asp:DataList ID="listSearch" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow"
                                                            OnItemCommand="HandleItemSearchCommand">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="linkSearch" CausesValidation="False" runat="server" CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
                                                                    Text='<%# DataBinder.Eval(Container.DataItem, "list") %>' />&nbsp;&nbsp;&nbsp;
                                                            </ItemTemplate>
                                                        </asp:DataList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <!-- BEGIN ADDNEW KOREKSI -->
                                </table>
                                <asp:Panel ID="panelAddNewKoreksi" runat="server">
                                    <table width="100%">
                                        <tr>
                                            <td>
                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                    width="100%">
                                                    <tr class="rheader">
                                                        <td class="rheadercol" align="left" height="25">
                                                            Koreksi Data Opname Persediaan
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                <tr>
                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                        <asp:LinkButton ID="lBtnKodeItemKoreksi" runat="server" Text="Kode Item" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                        <asp:TextBox ID="Koreksi_AddNewRow_txtKodeItem" runat="server" MaxLength="10" AutoPostBack="True"
                                                                            Width="100%"></asp:TextBox>
                                                                    </td>
                                                                    <td class="rBodyAddNewFld">
                                                                        <asp:RequiredFieldValidator ID="rfvKoreksi_AddNewRow_txtKodeItem" runat="server"
                                                                            Display="dynamic" ErrorMessage="Kode Item" ControlToValidate="Koreksi_AddNewRow_txtKodeItem">** 
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                        Nama Item
                                                                    </td>
                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                        <asp:Label ID="Koreksi_AddNewRow_lblNamaItem" runat="server" MaxLength="25" Width="100%"></asp:Label>
                                                                    </td>
                                                                    <td class="rBodyAddNewFld" style="display: none">
                                                                        <asp:TextBox ID="txtNoPage" runat="server" MaxLength="25" Width="100%"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                        Qty
                                                                    </td>
                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                        <asp:TextBox ID="Koreksi_AddNewRow_txtQty" runat="server" MaxLength="10" AutoPostBack="False"
                                                                            Width="100%"></asp:TextBox>
                                                                    </td>
                                                                    <td class="rBodyAddNewFld">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                        Satuan
                                                                    </td>
                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                        <asp:TextBox ID="Koreksi_AddNewRow_txtSatuan" runat="server" MaxLength="50" Width="100%"
                                                                            ReadOnly="true"></asp:TextBox>
                                                                    </td>
                                                                    <td class="rBodyAddNewFld">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                        No Stock Opname
                                                                    </td>
                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                        <asp:TextBox ID="Koreksi_AddNewRow_NoStockOpnameDT" runat="server" MaxLength="30"
                                                                            AutoPostBack="False" Width="100%"></asp:TextBox>
                                                                    </td>
                                                                    <td class="rBodyAddNewFld">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <table width="100%">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Button ID="Koreksi_btnAddNewRow" runat="server" Text="Save" CausesValidation="False"
                                                                            Width="100" CssClass="sbttn"></asp:Button>
                                                                        <asp:Button ID="Koreksi_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                            Width="100" CssClass="sbttn"></asp:Button>
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
                                <!-- END ADDNEW KOREKSI -->
                                <!-- START DATAGRID -->
                                <asp:Panel ID="pnlGrid" runat="server">
                                    <table width="100%" cellpadding="1" cellspacing="0">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="center">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridCheckItem" runat="server" Width="100%" CellPadding="0" ShowFooter="True"
                                                                DataKeyField="kdBarang" PageSize="20" AllowPaging="false" GridLines="none" BorderWidth="1"
                                                                EnableViewState="True" BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False"
                                                                AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:BoundColumn DataField="nobukti" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn runat="server" HeaderText="Page No" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Page") %>'
                                                                                ID="_lblPageNo" Visible="False" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="kdbarang" runat="server" HeaderText="Kode Item"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="175">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td colspan="2" style="color: #000000;">
                                                                                        <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKodeItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" style="text-align: right; font-style: italic; width: 50px;">
                                                                                        No. Stock
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "NoStockOpname") %>'
                                                                                            ID="_lblNoStock" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NmBarang" runat="server" HeaderText="Nama" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="350">
                                                                        <ItemTemplate>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td style="color: #000000;" colspan="3">
                                                                                        <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "NmBarang") %>'
                                                                                            ID="_lblNamaBarang" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" style="width: 80px;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "KdBarang") %>'
                                                                                            ID="_lblKdBarang" />
                                                                                    </td>
                                                                                    <td class="txtweak" style="text-align: right; font-style: italic; width: 80px;">
                                                                                        No. Katalog
                                                                                    </td>
                                                                                    <td class="txtweak" style="width: 100px;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nokatalog") %>'
                                                                                            ID="_lblNoKatalog" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_AddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Koreksi" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan Obat"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                ID="_lblSatuanObat" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="true">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                ID="_lblnmSatuanObat" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Qty Fisik Opname"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:TextBox ID="__txtQtyFisik" AutoPostBack="False" runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>'
                                                                                Width="50" Style="text-align: right;" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle Width="100px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="bso" runat="server" HeaderText="BSO" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "bso"), "#,##0.00") %>'
                                                                                ID="_lblBSO" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle Width="100px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qty" runat="server" HeaderText="Qty Selisih"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:TextBox ID="__txtQtySelisih" AutoPostBack="False" runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtySelisih"), "#,##0.00") %>'
                                                                                Width="50" Style="text-align: right;" Visible="false" />
                                                                            <asp:Label ID="__lblQtySelisih" runat="server" Text='<%# format((DataBinder.Eval(Container.DataItem, "qty") - DataBinder.Eval(Container.DataItem, "bso")), "#,##0.00") %>'
                                                                                Style="text-align: right;" Visible="false" />
                                                                            <%# format(DataBinder.Eval(Container.DataItem, "qtySelisih"), "#,##0.00") %>
                                                                        </ItemTemplate>
                                                                        <ItemStyle Width="100px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="QtySaldoAkhir" runat="server" HeaderText="Qty Saldo"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# DataBinder.Eval(Container.DataItem, "QtySaldoAkhir") %>'
                                                                                ID="_lblQtyObatSkrg" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle Width="100px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="typeStockOpname" runat="server" HeaderText="Tipe Adjust"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "typeStockOpname") %>'
                                                                                ID="_lblType" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="posting" runat="server" HeaderText="Posting"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="50px">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "posting") %>'
                                                                                ID="_chkPosting" Enabled="False" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="koreksi" runat="server" HeaderText="Koreksi"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="50px">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "koreksi") %>'
                                                                                ID="_chkKoreksi" Enabled="False" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    <table cellspacing="0" cellpadding="5" width="100%">
                        <tr>
                            <td align="left">
                                <p>
                                    <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi.">
                                    </asp:ValidationSummary>
                                </p>
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
            <asp:Button ID="btnCetakFormSO" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Formulir Opname Persediaan</div>
            <div class='qmdescription'>Cetak Formulir Opname Persediaan.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server"  >
            <asp:ListItem Value="ctkCetakFormSO" Text="Cetak Formulir Opname Persediaan"  Selected="True"></asp:ListItem>
            <asp:ListItem Value="ctkCetakFormSOAfter" Text="Cetak Formulir Hasil Opname Persediaan" groupname="Print" Selected="False"></asp:ListItem>
        </asp:RadioButtonList>
         
        <br />
        <div id="divJmlLabel" style="display: none">
            Banyak Label :
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
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
                var kdgudang;
                kdgudang = ditrim(document.getElementById('txtKodeGudang').value);

                if (kdgudang == '') {
                    document.getElementById('lbtnGudang').focus();
                }
                else {
                    //document.getElementById('gridInisialisasi__ctl2__btnAddNewRow').focus();  		
                }

                if (typeof (document.getElementById('txtFldKdBarang')) !== 'undefined') {
                    var kdbarang;
                    kdbarang = ditrim(document.getElementById('txtFldKdBarang').value);

                    if (kdbarang == '') {
                        document.getElementById('lblFldKdBarang').focus();
                        document.getElementById('lblFldKdBarang').select();
                    }
                    else {
                        document.getElementById('txtFldQtyDist').focus();
                        document.getElementById('txtFldQtyDist').select();
                    }
                }
            }
            catch (e) {
            }
        }	
    </script>
</body>
</html>
