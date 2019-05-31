<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="po.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.ApprovalPemesanan" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Approval Pemesanan</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
</head>
<body ms_positioning="GridLayout">
    <form id="frmMaintaintSP" runat="server">
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <asp:Panel runat="server" ID="pnlApprovalList">
        <tr width="100%" valign="top">
            <td>
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
                                            Approval Pemesanan
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <asp:LinkButton ID="lbtnKodeSupplier" CausesValidation="False" Text="Kode Supplier"
                                                runat="server" />&nbsp&nbsp&nbsp
                                            <asp:TextBox ID="txtkodeSupplier" CausesValidation="False" runat="server" />
                                            <asp:TextBox ID="txtnmSupplier" CausesValidation="False" runat="server" />
                                            <asp:CheckBox ID="chkALL" CausesValidation="False" Text="Semua Supplier" runat="server" />&nbsp&nbsp&nbsp
                                            <asp:Button ID="btnPreview" CausesValidation="False" Text="Preview" runat="server" />
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td>
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%" height="100%">
                                                        <div style="overflow: auto; width: 100%; height: 400">
                                                            <asp:DataGrid ID="gridMaintSP" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                GridLines="Both" AllowPaging="false" PageSize="20" DataKeyField="counterterima"
                                                                ShowFooter="False" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                                                                        ItemStyle-Width="1%" HeaderStyle-Width="1%">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkPesan" />
                                                                        </ItemTemplate>
                                                                        <HeaderTemplate>
                                                                            <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                                        </HeaderTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="tanggal" runat="server" HeaderText="Info Pemesanan"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="True"
                                                                        ItemStyle-Width="5%" HeaderStyle-Width="5%">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "tglpesan") %>'
                                                                                            ID="_lblTanggal" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>'
                                                                                            ID="_lblNoTerima" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Counter Terima" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "counterterima") %>'
                                                                                ID="_lblCounterTerima" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                                ID="_lblCounter" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="namasupplier" runat="server" HeaderText="Supplier"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="True"
                                                                        ItemStyle-Width="15%" HeaderStyle-Width="15%">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "namasupplier") %>'
                                                                                ID="_lblKdSupplier" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="left" Visible="True" ItemStyle-Width="15%" HeaderStyle-Width="15%">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color: #000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                            ID="_lblNmItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKdBarang" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" Visible="True" HeaderStyle-Width="210px" ItemStyle-Width="210px">
                                                                        <HeaderTemplate>
                                                                            <table style="width: 210px" cellspacing="0">
                                                                                <tr>
                                                                                    <td colspan="5" style="text-align: center;">
                                                                                        Qty
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="5" style="height: 1px; background-color: #999999; width: 100%;">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: center; width: 70px">
                                                                                        Pesan
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 70px">
                                                                                        Terima
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 70px">
                                                                                        Faktor
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <table style="width: 210px" cellspacing="0">
                                                                                <tr>
                                                                                    <td style="text-align: right; width: 70px">
                                                                                        <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtypesan"), "##0.00") %>'
                                                                                            ID="_lblQtyPesan" />
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 70px">
                                                                                        <asp:TextBox runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtypesan"), "##0.00") %>'
                                                                                            ID="_lblQtyTerima" Width="70" Style="text-align: right;" />
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: right; width: 70px">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "faktortr") %>'
                                                                                            ID="_lblFaktor" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" Visible="True" HeaderStyle-Width="160px" ItemStyle-Width="160px">
                                                                        <HeaderTemplate>
                                                                            <table style="width: 160px" cellspacing="0">
                                                                                <tr>
                                                                                    <td colspan="3" style="text-align: center;">
                                                                                        Diskon Persen 1
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="3" style="height: 1px; background-color: #999999; width: 100%;">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: center; width: 80px">
                                                                                        Pesan
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 80px">
                                                                                        Terima
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <table style="width: 160px;" cellspacing="0">
                                                                                <tr>
                                                                                    <td style="text-align: right; width: 80px">
                                                                                        <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc"), "##0.00") %>'
                                                                                            ID="_lblDiskonPesan1" />
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 80px">
                                                                                        <asp:TextBox runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc"), "##0.00") %>'
                                                                                            ID="_lblDiskonTerima1" Width="70" Style="text-align: right;" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" Visible="True" HeaderStyle-Width="160px" ItemStyle-Width="160px">
                                                                        <HeaderTemplate>
                                                                            <table style="width: 160px" cellspacing="0">
                                                                                <tr>
                                                                                    <td colspan="3" style="text-align: center;">
                                                                                        Diskon Persen 2
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="3" style="height: 1px; background-color: #999999; width: 100%;">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: center; width: 80px">
                                                                                        Pesan
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 80px">
                                                                                        Terima
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <table style="width: 160px;" cellspacing="0">
                                                                                <tr>
                                                                                    <td style="text-align: right; width: 80px">
                                                                                        <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc2"), "##0.00") %>'
                                                                                            ID="_lblDiskonPesan2" />
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 80px">
                                                                                        <asp:TextBox runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc2"), "##0.00") %>'
                                                                                            ID="_lblDiskonTerima2" Width="70" Style="text-align: right;" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" Visible="True" HeaderStyle-Width="200px" ItemStyle-Width="200px">
                                                                        <HeaderTemplate>
                                                                            <table style="width: 200px" cellspacing="0">
                                                                                <tr>
                                                                                    <td colspan="3" style="text-align: center;">
                                                                                        Harga
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="3" style="height: 1px; background-color: #999999; width: 100%;">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: center; width: 100px">
                                                                                        Pesan
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 100px">
                                                                                        Terima
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <table style="width: 200px" cellspacing="0">
                                                                                <tr>
                                                                                    <td style="text-align: right; width: 100px">
                                                                                        <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "hargaPesan"), "##0.00") %>'
                                                                                            ID="_lblHargaPesan" />
                                                                                    </td>
                                                                                    <td style="height: 100%; background-color: #999999; width: 1px;">
                                                                                    </td>
                                                                                    <td style="text-align: center; width: 100px">
                                                                                        <asp:TextBox runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "hargaPesan"), "##0.00") %>'
                                                                                            ID="_lblHargaTerima" Style="text-align: right;" Width="100" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" ItemStyle-Width="10"
                                                                        HeaderText="Satuan" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                                                                        Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                ID="_lblNmSatuan" Width="50" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nopesan" runat="server" HeaderText="No Pesan"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>'
                                                                                ID="_lblNoPesan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </div>
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
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        </asp:Panel>
        <asp:Panel runat="server" ID="pnlApprovalConfirmation">
        <tr>
            <td width="100%" height="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Approval Pemesanan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td>
                                            <table width="100%">
                                                <tr>
                                                    <td>
                                                        Approval telah dilakukan untuk pemesanan :
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:DataGrid ID="grdApprovalConfirmation" runat="server" Width="100%" AutoGenerateColumns="False"
                                                            CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                            GridLines="Both" AllowPaging="false" PageSize="20" DataKeyField="nopesan"
                                                            ShowFooter="False" CellPadding="0" AllowSorting="True">
                                                            <HeaderStyle CssClass="gridHeaderStyle" />
                                                            <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                            <EditItemStyle Font-Bold="false" />
                                                            <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                            <Columns>
                                                                <asp:TemplateColumn HeaderText="No Pemesanan" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="_lblNoPesan" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>'></asp:Label>
                                                                        <asp:Label ID="_lblCounters" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "counters") %>' Visible="false"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Tgl Pemesanan" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "tglpesan") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Supplier" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="_lblSupplier" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmsupplier") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Nilai Pemesanan" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="_lblNilaiPO" runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "nilai"),"#,##0.00") %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Cetak PO" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Button runat="server" ID="_btnCetakPODenganHarga" Text="Dengan Harga" CssClass="sbttn" CommandName="_cetakDenganHarga" />
                                                                        <asp:Button runat="server" ID="_btnCetakPOTanpaHarga" Text="Tanpa Harga" CssClass="sbttn" CommandName="_cetakTanpaHarga"/>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button runat="server" ID="btnDoneConfirmation" Text="Done" CssClass="sbttn" Width="80px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        </asp:Panel>
    </table>
    </form>
    <script src='/qislib/scripts/common/util.js' language="javascript"></script>
    <script language="javascript" src="/qislib/scripts/common/common.js"></script>
    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>
</body>
</html>
