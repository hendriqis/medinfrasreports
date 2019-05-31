<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="QIS.Web.secure.InformasiHargaBeliItem" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Harga Beli Barang per Pemasok</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body>
    <form id="frmInformasiHarga" runat="server">

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td width="100%" valign="top">
                <table cellspacing="10" cellpadding="0" width="100%" border="0">
                    <tr>
                        <td align="left">
                            <table cellspacing="0" cellpadding="5" width="100%">
                                <tr class="rheader">
                                    <td class="rheadercol" align="left" height="25">
                                        Informasi Harga Beli Barang per Pemasok
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" class="rbody">
                                <tr>
                                    <td width="100%" valign="top">
                                        <table width="100%">
                                            <tr>
                                                <td width="5%">
                                                    <asp:LinkButton runat="server" ID="lbtnKodeItem" Text="Kode Item" />
                                                </td>
                                                <td width="60%">
                                                    <asp:TextBox runat="server" ID="txtKodeItem" AutoPostBack="true" />
                                                    <asp:Label runat="server" ID="txtNamaItem" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" class="rbody">
                                <tr>
                                    <td width="100%" height="100%">
                                        <div style="overflow: auto; height: 768px">
                                            <asp:DataGrid ID="gridInformasiHarga" runat="server" Width="100%" BorderWidth="1px"
                                                GridLines="None" PageSize="20" ShowFooter="True" CellPadding="2" BorderColor="Gainsboro"
                                                AutoGenerateColumns="False" AllowSorting="True">
                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                <EditItemStyle Font-Bold="false" />
                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                <Columns>
                                                    <asp:TemplateColumn SortExpression="SatuanAlt" runat="server" HeaderText="Satuan"
                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="10%"
                                                        HeaderStyle-Width="10%" Visible="True">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Style="margin-left: 1; margin-right: 1" Text='<%# DataBinder.Eval(Container.DataItem, "SatuanAlt") %>'
                                                                ID="_lblSatuanAlt" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn SortExpression="KdSupplier" runat="server" HeaderText="Kode Supplier"
                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="35%"
                                                        HeaderStyle-Width="35%" Visible="True">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "KdSupplier") %>'
                                                                ID="_lblKdSupplier" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn SortExpression="NamaSupplier" runat="server" HeaderText="Nama Supplier"
                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="35%"
                                                        HeaderStyle-Width="35%" Visible="True">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "NamaSupplier") %>'
                                                                ID="_lblNmSupplier" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn SortExpression="Harga" runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-Width="10%" HeaderStyle-Width="10%"
                                                        Visible="true">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "Harga"), "#,##0.00") %>'
                                                                ID="_lblHarga" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn SortExpression="Diskon" runat="server" HeaderText="Diskon [%]"
                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%"
                                                        HeaderStyle-Width="10%" Visible="True">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Diskon") %>'
                                                                ID="_lblDiskon" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn runat="server" HeaderText="PPN" ItemStyle-HorizontalAlign="Center"
                                                        HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%" HeaderStyle-Width="20%"
                                                        Visible="True">
                                                        <ItemTemplate>
                                                            <asp:CheckBox runat="server" Style="margin-left: 5; margin-right: 5" Enabled="False"
                                                                Checked='<%# DataBinder.Eval(Container.DataItem, "fPPN") %>' ID="_chkPPN" />
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
                </table>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>
