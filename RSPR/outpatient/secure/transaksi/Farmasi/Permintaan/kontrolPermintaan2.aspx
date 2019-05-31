<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="kontrolPermintaan2.aspx.vb"
    Inherits="QIS.Web.kontrolPermintaan2" %>

<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Daftar Permintaan Barang</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">
    <meta http-equiv="refresh" content="600">

    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>

    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>

</head>
<body ms_positioning="GridLayout" width="100%">
    <form id="frmMaintaintSP" runat="server" width="100%">
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
            <td width="100%" style="height: 100%;" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left" width="100%">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Daftar Permintaan Barang
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
                                                            Bagian:
                                                            <br />
                                                            <asp:DropDownList ID="ddlBagian" runat="server" Width="354" AutoPostBack="True" Enabled="true" />
                                                        </td>
                                                        <td width="10%" align="right">
                                                            <br />
                                                            <asp:Button ID="btnProses" runat="server" Text="Proses" CssClass="sbttn" Width="100">
                                                            </asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="50%" align="left">
                                                            Halaman ini akan
                                                            <asp:LinkButton ID="lbtnRefresh" runat="server" CausesValidation="False" Text="[refresh]" />
                                                            setiap 10 menit
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
                                                <asp:Button ID="btnDone" runat="server" Text="Done" Width="100" CssClass="sbttn"
                                                    CausesValidation="False"></asp:Button>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                </table>
                                <table width="100%">
                                    <tr class="rbody">
                                        <td width="100%" height="100%">
                                            <div style="overflow: auto; width: 100%; height: 400">
                                                <asp:DataGrid ID="gridPermintaan" runat="server" Width="100%" CellPadding="2" ShowFooter="False"
                                                    DataKeyField="counter" GridLines="Both" BorderWidth="1" BorderColor="Gainsboro"
                                                    CellSpacing="0" AutoGenerateColumns="False" AllowSorting="True">
                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                    <EditItemStyle Font-Bold="false" />
                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                    <SelectedItemStyle BackColor="CornflowerBlue" />
                                                    <Columns>
                                                        <asp:TemplateColumn SortExpression="nominta" Runat="server" HeaderText="Informasi Permintaan Barang"
                                                            Visible="True">
                                                            <ItemTemplate>
                                                                <table style="width: 150px">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:LinkButton runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nominta") %>'
                                                                                ToolTip='<%# DataBinder.Eval(Container.DataItem, "keterangan") %>' CausesValidation="False"
                                                                                CommandName="__InfoKeterangan" ID="_lblNoMinta">
                                                                            </asp:LinkButton>
                                                                            &nbsp;|&nbsp;
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdeskripsi") %>'
                                                                                ID="_lblDeskripsi">
                                                                            </asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmpemakai") %>'
                                                                                ID="_lblBagian">
                                                                            </asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak">
                                                                            <font style="font-style: italic; text-align: right;">by</font> <font style="color: #000000;
                                                                                text-align: left;">
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "usrinsert") %>'
                                                                                    ID="_lblUserMinta" /></font>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak">
                                                                            <font style="font-style: italic; text-align: right;">approved by</font> <font style="color: #000000;
                                                                                text-align: left;">
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "usrApproval") %>'
                                                                                    ID="_lblUserApproval">
                                                                                </asp:Label></font>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Item">
                                                            <ItemTemplate>
                                                                <table style="width: 250px;">
                                                                    <tr>
                                                                        <td style="color: #000000;">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang1") %>'
                                                                                Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "nmbarang2") %>'
                                                                                ID="_lblNmItem">
                                                                            </asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                ID="_lblKodeBarang">
                                                                            </asp:Label>
                                                                            &nbsp;&nbsp;
                                                                            <font style="font-style: italic; text-align: right;">Catalog No.</font>
                                                                            &nbsp;
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang2") %>'
                                                                                ID="_lblCatalogNo">
                                                                            </asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "itemgroup") %>'
                                                                                ID="_lblGrItem">
                                                                            </asp:Label>
                                                                            &nbsp;|&nbsp;
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "jenisitem") %>'
                                                                                ID="_lbljenisitem">
                                                                            </asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="txtweak">
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Keterangan") %>'
                                                                                ID="_lblKeterangan">
                                                                            </asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="qty" Runat="server" HeaderText="Qty Minta" ItemStyle-Width="100"
                                                            ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>'
                                                                    ID="_lblQtyMinta">
                                                                </asp:Label>                                                                
                                                                <%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="stockGdLksMnt" Runat="server" HeaderText="Stock Gd. Minta"
                                                            Visible="True" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "stockGdLksMnt"), "#,##0.00") %>'
                                                                    ID="_lblStockGdMnt">
                                                                </asp:Label>
                                                                <%# DataBinder.Eval(Container.DataItem, "nmsatuankcGdLkMnt") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="stock" Runat="server" HeaderText="Stock Gd. Umum"
                                                            Visible="True" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "stock"), "#,##0.00") %>'
                                                                    ID="_lblStock">
                                                                </asp:Label>
                                                                <%# DataBinder.Eval(Container.DataItem, "nmsatuankcGdLkMnt") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Pakai" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="50">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkPakai"></asp:CheckBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Distribusi" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkDistribusi">
                                                                </asp:CheckBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="qty" Runat="server" HeaderText="Qty Proses" ItemStyle-HorizontalAlign="Left"
                                                            HeaderStyle-HorizontalAlign="Center" Visible="True" ItemStyle-Width="150">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtQtyKirim" runat="server" Style="margin-left: 5; margin-right: 5"
                                                                    Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>'
                                                                    Width="50">
                                                                </asp:TextBox>
                                                                <%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Minta Beli" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkBeli"></asp:CheckBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Pesan" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkPesan"></asp:CheckBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="qtyPesan" Runat="server" HeaderText="Qty Minta Beli dan Supplier"
                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="250">
                                                            <ItemTemplate>
                                                                <table cellspacing="0" width="100%">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:TextBox ID="txtQtyPesan" runat="server" Style="margin-left: 5; margin-right: 5"
                                                                                Text='<%# Format(DataBinder.Eval(Container.DataItem, "qtyPesan"), "#,##0.00") %>'
                                                                                Width="50">
                                                                            </asp:TextBox>
                                                                            <%# DataBinder.Eval(Container.DataItem, "nmsatuanBs") %>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:TextBox ID="txtPBF" runat="server" Text='<%# Trim(DataBinder.Eval(Container.DataItem, "namaSupplier")) + " [" + Trim(DataBinder.Eval(Container.DataItem, "kdsupplier ")) + "]" %>'
                                                                                BorderStyle="None" Style="cursor: hand" Width="100%" ForeColor="#FF6600"
                                                                                BackColor="Transparent" ReadOnly="False">
                                                                            </asp:TextBox>
                                                                        </td>
                                                                    </tr>
                                                                </table>                                                                
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Tutup" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-HorizontalAlign="Center">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkBatal"></asp:CheckBox>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Gudang" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdgudang") %>'
                                                                    ID="_lblKdGudang">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Gudang" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmGudang") %>'
                                                                    ID="_lblNmBagian">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Lokasi" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>'
                                                                    ID="_lblKdLokasi">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="counter" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                    ID="_lblCounter">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuan" Runat="server" HeaderText="Satuan" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                    ID="_lblSatuan">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="SatuanKc" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>'
                                                                    ID="_lblSatuanKc">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuankcGdLkMnt" Runat="server" HeaderText="Satuan Minta."
                                                            Visible="False" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuankcGdLkMnt") %>'
                                                                    ID="_lblSatuanGdMnt">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuankcGdLkMnt" Runat="server" HeaderText="Satuan"
                                                            Visible="False" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuankcGdLkMnt") %>'
                                                                    ID="_lblSatuanGdUmum">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuanBs" Runat="server" Visible="false" HeaderText="Satuan">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuanBs") %>'
                                                                    ID="_lblSatuanBs">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Faktor" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "faktorbs") %>'
                                                                    ID="_lblFaktorBs">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn Runat="server" HeaderText="Faktor" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>'
                                                                    ID="_lblFaktor">
                                                                </asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="satuan" Runat="server" Visible="false" HeaderText="Satuan">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                    ID="_lblSatuanKirim">
                                                                </asp:Label>
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
