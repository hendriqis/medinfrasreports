<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../incl/copyRightModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="maintsp.aspx.vb" Inherits="QIS.Web.secure.utilities.KontrolSuratPesanan.maintsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Daftar Pemesanan Barang</title>
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
                                            Daftar Pemesanan Barang Farmasi
                                        </td>
                                    </tr>
                                    <asp:Panel ID="pnlGrid" runat="server">
                                        <tr class="rbody">
                                            <td align="left" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td>
                                                                        Tanggal Hari ini:<br />
                                                                        <asp:Label ID="lblTgl" runat="server" Height="20" />
                                                                    </td>
                                                                    <td>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="25%">
                                                                        <asp:Panel ID="pnlFilterUmurPO" runat="server">
                                                                            Filter by: Umur PO<br />
                                                                            <asp:TextBox ID="txtUmurPO" runat="server" Width="70%" Style="text-align: right" />
                                                                            &nbsp; Hari
                                                                        </asp:Panel>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Panel ID="pnlFilterStatusPO" runat="server">
                                                                            Filter by: Status PO<br />
                                                                            <asp:DropDownList ID="ddlStatusPO" runat="server" Width="30%" />
                                                                            &nbsp;<asp:Button ID="btnUmurPO" Text="Apply" runat="server" class="sbttn" Width="100" />
                                                                        </asp:Panel>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td align="right" valign="bottom">
                                                            <br />
                                                            <asp:Button ID="btnClosePO" runat="server" Text="Batal PO" CssClass="sbttn" Width="100">
                                                            </asp:Button>
                                                            <asp:Button ID="btnGeneratedPO" runat="server" Text="Proses PO Baru" CssClass="sbttn"
                                                                Width="100"></asp:Button>
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
                                    <tr class="rbody">
                                        <td>
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%" height="100%">
                                                        <div style="overflow: auto; width: 100%; height: 400">
                                                            <asp:DataGrid ID="gridMaintSP" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                GridLines="Both" AllowPaging="false" PageSize="20" DataKeyField="counter"
                                                                ShowFooter="False" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:TemplateColumn SortExpression="checkbox" runat="server" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="True" Checked='<%# DataBinder.Eval(Container.DataItem, "checkbox") %>'
                                                                                ID="_chkPesan" />
                                                                        </ItemTemplate>
                                                                        <HeaderTemplate>
                                                                            <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                                        </HeaderTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="tanggal" runat="server" HeaderText="Informasi Pemesanan"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color:#000000" colspan="2">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "tanggal") %>'
                                                                                            ID="_lblTanggal" />
                                                                                        &nbsp;|&nbsp;
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>'
                                                                                            ID="_lblNoPesan" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" style="width:50px; font-style:italic; text-align:right">
                                                                                        Status PO
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmstatuspo") %>'
                                                                                            ID="_lblStatusPO" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                                ID="_lblCounter" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Kode Supplier" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdsupplier") %>'
                                                                                ID="_lblkdsupplier" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="namasupplier" runat="server" HeaderText="Supplier"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:TextBox ID="TxtSupplier" runat="server" Text='<%# Trim(DataBinder.Eval(Container.DataItem, "namasupplier")) + " [" + Trim(DataBinder.Eval(Container.DataItem, "kdsupplier")) + "]" %>'
                                                                                BorderStyle="None" Style="cursor: hand" Width="100%" ForeColor="#FF6600"
                                                                                BackColor="Transparent" ReadOnly="False" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="namaItem" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="color:#000000;" colspan="3">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "namaItem") %>'
                                                                                            Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "namaitem2") %>'
                                                                                            ID="_lblNmItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" style="width:60px;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kodeitem") %>'
                                                                                            ID="_lblKdBarang" />
                                                                                    </td>
                                                                                    <td class="txtweak" style="width:60px; font-style:italic; text-align:right">
                                                                                        Catalog No.
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "namaItem2") %>'
                                                                                            ID="_lblCatalogNo" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>                                                                            
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" Visible="True" HeaderStyle-Width="240px" ItemStyle-Width="240px">
                                                                        <HeaderTemplate>
                                                                            <table style="width: 240px;" cellspacing="0">
                                                                                <tr>
                                                                                    <td colspan="5" style="text-align:center">
                                                                                        Qty
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="5" style="height: 1px; background-color: #999999;"></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="width: 80px; text-align: center;">
                                                                                        Pesan
                                                                                    </td>
                                                                                    <td style="width: 1px; background-color: #999999; height: 100%"></td>
                                                                                    <td style="width: 80px; text-align: center;">
                                                                                        Terima
                                                                                    </td>
                                                                                    <td style="width: 1px; background-color: #999999; height: 100%"></td>
                                                                                    <td style="width: 80px; text-align: center;">
                                                                                        Sisa
                                                                                    </td>
                                                                                </tr>                                                                                
                                                                            </table>  
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <table style="width: 240px;" cellspacing="0">
                                                                                <tr>
                                                                                    <td style="width: 80px; text-align: center;">                                                                                        
                                                                                        <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtypesan"), "##0.00") %>'
                                                                                            ID="_lblQtyPesan" />
                                                                                    </td>
                                                                                    <td style="width: 1px; background-color: #999999; height: 100%"></td>
                                                                                    <td style="width: 80px; text-align: center;">
                                                                                        <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtytrm"), "##0.00") %>'
                                                                                            ID="_lblQtyTerima" />
                                                                                    </td>
                                                                                    <td style="width: 1px; background-color: #999999; height: 100%"></td>
                                                                                    <td style="width: 80px; text-align: center;">
                                                                                        <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "QtySisaBs"), "##0.00") %>'
                                                                                            ID="_lblQtySisaBs" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>                                                                            
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Qty Sisa" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtysisa"), "##0.00") %>'
                                                                                ID="_lblQtySisa" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                ID="_lblNmSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="faktor" runat="server" HeaderText="Faktor" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "faktor"), "##0.00") %>'
                                                                                ID="_lblfaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# format(DataBinder.Eval(Container.DataItem, "harga"), "#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Diskon %" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Width="40" Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc"), "##0.00") %>'
                                                                                ID="_txtDiskonPc" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="bonus" runat="server" HeaderText="Bonus" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "bonus") %>'
                                                                                ID="_chkBonus" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nominta" runat="server" HeaderText="No. Minta"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nominta") %>'
                                                                                ID="_lblNoMinta" />
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
    </table>
    </form>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

    <script language="JavaScript">
        function konfirmasi() {
            if (!confirm('Anda yakin akan proses PO ini ?')) {
                return false;
            }
            else {
                return true;
            }
        }
    </script>

</body>
</html>
