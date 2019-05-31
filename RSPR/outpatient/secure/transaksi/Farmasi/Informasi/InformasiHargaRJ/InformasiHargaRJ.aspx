<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InformasiHargaRJ.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Informasi.InformasiHargaRJ.InformasiHargaRJ" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Harga Jual Persediaan di Rawat Jalan</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

</head>
<body>
    <form id="frmInformasiHarga" runat="server">
    <table border="0" width="100%" cellspacing="0" cellpadding="2" style="height: 100%;">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top" style="height: 100%;">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="0" cellpadding="5" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table width="100%" cellpadding="2" cellspacing="0">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="32" colspan="2">
                                            Informasi Harga Jual Persediaan di Rawat Jalan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td width="50%" valign="top" style="background-color: #DEE3E7">
                                            <table width="100%">
                                                <tr>
                                                    <td width="30%">
                                                        Kelas
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList runat="server" ID="ddlKelas" AutoPostBack="false" Width="150" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="30%">
                                                        <asp:LinkButton runat="server" ID="lbtnKodeItem" Text="Item" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtKodeItem" AutoPostBack="true" />
                                                        <asp:Label runat="server" ID="txtNamaItem" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="30%">
                                                        Satuan
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtSatuan" ReadOnly="true" CssClass="txtsummary" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="50%" valign="top" style="background-color: #DEE3E7">
                                            <table width="100%">
                                                <tr>
                                                    <td width="30%">
                                                        HNA + PPN
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtHna" ReadOnly="true" CssClass="txtsummary" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="30%">
                                                        Harga Jual Obat
                                                    </td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtRJ" ReadOnly="true" CssClass="txtsummary" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%">
                                    <tr class="rbody">
                                        <td align="right">
                                            <asp:DataList ID="listSearch" runat="server" RepeatDirection="Horizontal" OnItemCommand="HandleItemSearchCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="linkSearch" CausesValidation="False" runat="server" CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "list") %>' />&nbsp;&nbsp;&nbsp;
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                    <tr class="rbody" style="display: none">
                                        <td align="right">
                                            <asp:Button ID="btnCountHpr" runat="server" Text="CountHpr" />
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td width="100%" height="100%">
                                            <div style="overflow: auto; width: 100%; height: 400px">
                                                <asp:DataGrid ID="gridInformasiHarga" runat="server" Width="100%" BorderWidth="1px"
                                                    GridLines="None" PageSize="20" ShowFooter="True" CellPadding="2" BorderColor="Gainsboro"
                                                    AutoGenerateColumns="False" AllowSorting="True">
                                                    <SelectedItemStyle ForeColor="GhostWhite" BackColor="CornflowerBlue"></SelectedItemStyle>
                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                    <EditItemStyle Font-Bold="false" />
                                                    <FooterStyle BackColor="#DEE3E7"></FooterStyle>
                                                    <PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="#ffd27a">
                                                    </PagerStyle>
                                                    <Columns>
                                                        <asp:TemplateColumn SortExpression="Kode" runat="server" HeaderText="Kode" ItemStyle-HorizontalAlign="Left"
                                                            HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="10%" HeaderStyle-Width="10%"
                                                            Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 1" Text='<%# DataBinder.Eval(Container.DataItem, "Kode") %>'
                                                                    ID="_lblKdBarang" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="Nama" runat="server" HeaderText="Nama" ItemStyle-HorizontalAlign="Left"
                                                            HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="35%" HeaderStyle-Width="35%"
                                                            Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Nama") %>'
                                                                    ID="_lblNamaBarang" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="Nama2" runat="server" HeaderText="Catalog No."
                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="35%"
                                                            HeaderStyle-Width="35%" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Nama2") %>'
                                                                    ID="_lblCatalogNo" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuankc" runat="server" HeaderText="Satuan"
                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="10%"
                                                            HeaderStyle-Width="10%" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>'
                                                                    ID="_lblSatuan" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmsatuankc" runat="server" HeaderText="Satuan"
                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="10%"
                                                            HeaderStyle-Width="10%" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuankc") %>'
                                                                    ID="_lblnmSatuan" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="HNA+PPN" runat="server" HeaderText="HNA + PPn"
                                                            ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" ItemStyle-Width="20%"
                                                            HeaderStyle-Width="20%" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "HNA+PPN"),"#,##0.00") %>'
                                                                    ID="_lblHnaPpn" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="Rawat Jalan" runat="server" HeaderText="Harga Jual"
                                                            ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" ItemStyle-Width="20%"
                                                            HeaderStyle-Width="20%" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "Rawat Jalan"),"#,##0.00") %>'
                                                                    ID="_lblRJalan" />
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
                </div>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>
