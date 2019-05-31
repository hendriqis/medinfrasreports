<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ApprovalPermintaanBarang.aspx.vb"
    Inherits="QIS.Web.ApprovalPermintaanBarang" %>

<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../incl/copyRightModule.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Approval Permintaan Barang</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>

    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmMaintaintSP" runat="server">
    <table border="0" width="100%" style="height:100%;" cellspacing="0" cellpadding="2">
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
            <td width="100%" style="height:100%;" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="2" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Approval Permintaan Barang
                                        </td>
                                    </tr>
                                    <asp:Panel ID="pnlGrid" runat="server">
                                        <tr class="rbody">
                                            <td align="left" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            Tanggal Hari ini:
                                                            <br />
                                                            <asp:Label ID="lblTgl" runat="server" />
                                                        </td>
                                                        <td width="30%">
                                                            BAGIAN:
                                                            <br />
                                                            <asp:DropDownList ID="ddlBagian" runat="server" Width="100%" AutoPostBack="True"
                                                                Enabled="true" />
                                                        </td>
                                                        <td width="10%" align="right">
                                                            <br />
                                                            <asp:Button ID="btnProses" runat="server" Text="Proses" CssClass="sbttn" Width="100"></asp:Button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlMessage" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="left" height="25">
                                                <asp:Label ID="lblMessage" runat="server" />
                                                <br />
                                                <br />
                                                <asp:Button ID="btnDone" runat="server" Text="Done" CssClass="sbttn" Width="100" CausesValidation="False">
                                                </asp:Button>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                </table>
                                <table width="100%">
                                    <tr class="rbody">
                                        <td width="100%" height="100%">
                                            <div style="overflow: auto; width: 100%;">
                                                <asp:DataGrid ID="gridPermintaan" runat="server" Width="100%" CellPadding="2" ShowFooter="false"
                                                    DataKeyField="counter" GridLines="none" BorderWidth="1" BorderColor="Gainsboro"
                                                    CellSpacing="0" AutoGenerateColumns="False" AllowSorting="True">
                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                    <EditItemStyle Font-Bold="false" />
                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                    <SelectedItemStyle BackColor="CornflowerBlue" />
                                                    <Columns>
                                                        <asp:TemplateColumn SortExpression="nominta" Runat="server" HeaderText="No. Minta"
                                                            Visible="True">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nominta") %>'
                                                                    ToolTip='<%# DataBinder.Eval(Container.DataItem, "Keterangan") %>' ID="_lblNoMinta"
                                                                    CausesValidation="false" CommandName="__InfoKeterangan">
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="counter" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                    ID="_lblCounter">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmpemakai" Runat="server" HeaderText="Bagian"
                                                            Visible="true">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmpemakai") %>'
                                                                    ID="_lblBagian">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmdeskripsi" Runat="server" HeaderText="Deskripsi"
                                                            Visible="true">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdeskripsi") %>'
                                                                    ID="_lblDeskripsi">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="jenisitem" Runat="server" HeaderText="Jenis Item"
                                                            Visible="true">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "jenisitem") %>'
                                                                    ID="_lbljenisitem">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="kdbarang" Runat="server" HeaderText="Kode Item"
                                                            Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                    ID="_lblKodeBarang">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmbarang1" Runat="server" HeaderText="Nama Item">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang1") %>'
                                                                    ID="_lblNmItem">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmbarang2" Runat="server" HeaderText="Catalog No.">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang2") %>'
                                                                    ID="_lblCatalogNo">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="qty" Runat="server" HeaderText="Minta">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>'
                                                                    ID="_lblQtyMinta">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuan" Runat="server" HeaderText="Satuan" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                    ID="_lblSatuan">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="nmsatuan" Runat="server" HeaderText="Satuan"
                                                            Visible="true">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                    ID="_lblnmSatuan">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="QtySaldoAkhir" Runat="server" HeaderText="Saldo"
                                                            Visible="true">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "QtySaldoAkhir") %>'
                                                                    ID="_lblQty">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="SatuanKc" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>'
                                                                    ID="_lblSatuanKc">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Faktor" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>'
                                                                    ID="_lblFaktor">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="usrinsert" Runat="server" HeaderText="User Minta"
                                                            Visible="true">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "usrinsert") %>'
                                                                    ID="_lblUserMinta">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Approval" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkApproval"></asp:CheckBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Tutup" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkBatal"></asp:CheckBox>
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

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

    <script language="JavaScript">
        function konfirmasi() {
            if (!confirm('Anda yakin akan proses permintaan ini ?')) {
                return false;
            }
            else {
                return true;
            }
        }
    </script>

</body>
</html>
