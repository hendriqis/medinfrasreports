<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="KonfirmasiKenaikanDiskon.aspx.vb"
    Inherits="QIS.Web.secure.utilities.KonfirmKenaikanDiskon.KonfirmasiKenaikanDiskon" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Konfirmasi Diskon Penerimaan Barang</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet" />

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmMaintaintSP" runat="server">
    <table border="0" width="100%" height="100%" cellspacing="2" cellpadding="1">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr width="100%" valign="top">
            <td>
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Konfirmasi Diskon Penerimaan Barang
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%">
                                    <tr class="rbody">
                                        <td width="100%" height="100%">
                                            <div style="overflow: auto; width: 100%;">
                                                <asp:DataGrid ID="gridMaintSP" runat="server" Width="100%" AutoGenerateColumns="False"
                                                    CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                    GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="kdbarang"
                                                    ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                    <EditItemStyle Font-Bold="false" />
                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                    <Columns>
                                                        <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkPesan" />
                                                            </ItemTemplate>
                                                            <HeaderTemplate>
                                                                <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                            </HeaderTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="tgterima" runat="server" HeaderText="Tgl. Terima"
                                                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "tgterima"), "dd-MM-yyyy") %>'
                                                                    ID="_lblTanggal" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="noterima" runat="server" HeaderText="No Terima"
                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "noterima") %>'
                                                                    ID="_lblNoTerima" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn runat="server" HeaderText="Kode Supplier" ItemStyle-HorizontalAlign="Left"
                                                            HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdsupplier") %>'
                                                                    ID="_lblKdSupplier" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="namasupplier" runat="server" HeaderText="Supplier"
                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "namasupplier") %>'
                                                                    ID="_lblNmSupplier" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="kdbarang" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                            HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                            <ItemTemplate>
                                                                <table>
                                                                    <tr>
                                                                        <td style="color: #000000;">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
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
                                                        <asp:TemplateColumn runat="server" HeaderText="Diskon Pemesanan" ItemStyle-HorizontalAlign="Right"
                                                            HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskon"), "##0.00") %>'
                                                                    ID="_lblDiskonNow" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn runat="server" HeaderText="Diskon Penerimaan" ItemStyle-HorizontalAlign="Right"
                                                            HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "diskonterima"), "##0.00") %>'
                                                                    ID="_lblDiskonTerima" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuankc" runat="server" HeaderText="Satuan"
                                                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>'
                                                                    ID="_lblSatuan" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmsatuankc" runat="server" HeaderText="Satuan"
                                                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuankc") %>'
                                                                    ID="_lblnmSatuan" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                    </Columns>
                                                </asp:DataGrid>
                                            </div>
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
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>
