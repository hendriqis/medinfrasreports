<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InformasiItem.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Informasi.InformasiItem.InformasiItem" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Saldo Persediaan</title>
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
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
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
                                        <td class="rheadercol" align="left" height="25" colspan="2">
                                            Informasi Saldo Persediaan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td valign="top" style="width: 50%;">
                                            <table width="100%">
                                                <tr>
                                                    <td align="left" width="20%">
                                                        <asp:LinkButton ID="lbtnGudangA" Text="Gudang Awal" runat="server" />
                                                    </td>
                                                    <td align="left" width="50%">
                                                        <asp:TextBox ID="txtKdGudangA" runat="server" AutoPostBack="true" Width="100" />
                                                        <asp:TextBox ID="lblKdGudangA" runat="server" Width="250" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" width="20%">
                                                        Lokasi Awal
                                                    </td>
                                                    <td align="left" width="50%">
                                                        <asp:DropDownList ID="ddlLokasiA" runat="server" Width="354" AutoPostBack="true" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" width="20%">
                                                        <asp:LinkButton ID="lbtnBarangA" Text="Barang Awal" runat="server" />
                                                    </td>
                                                    <td align="left" width="50%">
                                                        <asp:TextBox ID="txtKdBarangA" runat="server" AutoPostBack="true" Width="100" />
                                                        <asp:TextBox ID="lblKdBarangA" runat="server" Width="250" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:LinkButton ID="lbtnTherapi" CausesValidation="False" Text="Kelompok Therapi"
                                                            runat="server"></asp:LinkButton>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtKodeTherapi" runat="server" Width="100" AutoPostBack="true"></asp:TextBox>
                                                        <asp:TextBox runat="server" ID="lblNamaTherapi" Width="250" ReadOnly="True" CssClass="txtsummary"></asp:TextBox>
                                                    </td>
                                                </tr>                                   
                                            </table>
                                        </td>
                                        <td valign="top" style="width: 50%;">
                                            <table width="100%">
                                                <tr>
                                                    <td align="left" width="20%">
                                                        <asp:LinkButton ID="lbtnGudangB" Text="Gudang Akhir" runat="server" />
                                                    </td>
                                                    <td align="left" width="50%">
                                                        <asp:TextBox ID="txtKdGudangB" runat="server" AutoPostBack="true" Width="100" />
                                                        <asp:TextBox ID="lblKdGudangB" runat="server" Width="250" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" width="20%">
                                                        Lokasi Akhir
                                                    </td>
                                                    <td align="left" width="50%">
                                                        <asp:DropDownList ID="ddlLokasiB" runat="server" Width="354" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" width="20%">
                                                        <asp:LinkButton ID="lbtnBarangB" Text="Barang Akhir" runat="server" />
                                                    </td>
                                                    <td align="left" width="50%">
                                                        <asp:TextBox ID="txtKdBarangB" runat="server" AutoPostBack="true" Width="100" />
                                                        <asp:TextBox ID="lblKdBarangB" runat="server" Width="250" />
                                                    </td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnKodeZatAktif" CausesValidation="False" Text="Kode Zat Aktif"
                                                                runat="server" />
                                                        </td>
                                                        <td width="50%">
                                                            <asp:TextBox ID="txtKodeZatAktif" Width="100" MaxLength="10" AutoPostBack="True"
                                                                runat="server" />
                                                            <asp:TextBox ID="txtNamaZatAktif" Width="250" runat="server" ReadOnly="True" CssClass="txtsummary" />
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td colspan="2">
                                            <asp:Button ID="btnQuery" runat="server" Text="View" class="sbttn" Width="100" />
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td colspan="2">
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%" height="100%">
                                                        <!--<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400px">-->
                                                        <asp:DataGrid ID="gridInformasiItem" runat="server" Width="100%" BorderWidth="1px"
                                                            GridLines="None" PageSize="20" ShowFooter="True" CellPadding="2" BorderColor="Gainsboro"
                                                            AutoGenerateColumns="False" AllowSorting="True">
                                                            <SelectedItemStyle ForeColor="GhostWhite" BackColor="CornflowerBlue"></SelectedItemStyle>
                                                            <HeaderStyle CssClass="gridHeaderStyle" />
                                                            <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                            <EditItemStyle Font-Bold="false" />
                                                            <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                            <FooterStyle BackColor="#DEE3E7"></FooterStyle>
                                                            <Columns>
                                                                <asp:TemplateColumn SortExpression="Gudang" runat="server" HeaderText="Gudang" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Left">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Gudang") %>'
                                                                            ID="_lblGudang" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="Lokasi" runat="server" HeaderText="Lokasi" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Left">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Lokasi") %>'
                                                                            ID="_lblLokasi" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="Kode" runat="server" HeaderText="Kode" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Left">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Kode") %>'
                                                                            ID="_lblKode" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="Nama" runat="server" HeaderText="Nama" ItemStyle-HorizontalAlign="Left"
                                                                    HeaderStyle-HorizontalAlign="Left">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Nama") %>'
                                                                            ID="_lblNama" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="nama2" runat="server" HeaderText="Catalog No."
                                                                    ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nama2") %>'
                                                                            ID="_lblCatalogNo" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="saldo" runat="server" HeaderText="Saldo" ItemStyle-HorizontalAlign="Right"
                                                                    HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "saldo") %>'
                                                                            ID="_lblSaldo" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="satuankc" runat="server" HeaderText="Satuan"
                                                                    ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>'
                                                                            ID="_lblSatuan" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="nmsatuankc" runat="server" HeaderText="Satuan"
                                                                    ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuankc") %>'
                                                                            ID="_lblnmSatuan" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="stokmin" runat="server" HeaderText="ROP Min"
                                                                    ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "stokmin") %>'
                                                                            ID="_lblROPMin" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn SortExpression="stokmax" runat="server" HeaderText="ROP Max"
                                                                    ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
                                                                    <ItemTemplate>
                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "stokmax") %>'
                                                                            ID="_lblROPMax" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                        <!--</DIV>-->
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
    </table>
    </form>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>
