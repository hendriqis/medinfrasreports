<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>


<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PermintaanPembelian.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Pembelian.PurchaseRequest.PermintaanPembelian" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Daftar Permintaan Pembelian</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
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
                                            Daftar Permintaan Pembelian
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
                                                            Gudang:
                                                            <br />
                                                            <asp:DropDownList ID="ddlGudang" runat="server" Width="354" AutoPostBack="True"
                                                                Enabled="true" />
                                                        </td>
                                                        <td width="10%" align="right">
                                                            <br />
                                                            <asp:Button ID="btnGeneratedPO" runat="server" Text="Proses" Width="100" CssClass="sbttn">
                                                            </asp:Button>
                                                            <asp:Button ID="btnCetak" runat="server" Text="Cetak" Width="100" CssClass="sbttn" Visible="false">
                                                            </asp:Button>
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
                                                <asp:Button ID="btnDone" runat="server" Text="Done" Width="100" CssClass="sbttn" CausesValidation="False">
                                                </asp:Button>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <tr class="rbody">
                                        <td>
                                            <table width="100%">
                                                <tr class="rbody">
                                                    <td width="100%" height="100%">
                                                        <div style="overflow: auto; width: 100%; height: 400">
                                                            <asp:DataGrid ID="gridPermintaanPembelian" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="counter"
                                                                ShowFooter="False" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="True" Checked="false" AutoPostBack="False"
                                                                                ID="_chkPO" />
                                                                        </ItemTemplate>
                                                                        <HeaderTemplate>
                                                                            <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPO');">
                                                                        </HeaderTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Lokasi" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>'
                                                                                ID="_lbllokasi" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="tanggalminta" runat="server" HeaderText="Tgl Minta"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "tglminta") %>'
                                                                                ID="_lbltglminta" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="jamminta" runat="server" HeaderText="Jam Minta"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "jamminta") %>'
                                                                                ID="_lbljamminta" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="TglApproval" runat="server" HeaderText="Tanggal Approval"
                                                                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <table style="width:100px">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TglApproval") %>'
                                                                                            ID="_lbltglapproval" />
                                                                                        &nbsp;
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "jamapproval") %>'
                                                                                            ID="_lbljamapproval" />   
                                                                                    </td>
                                                                                </tr>
                                                                            </table>                                                                            
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nominta" runat="server" HeaderText="No. PR" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td colspan="2" style="color:#000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nominta") %>'
                                                                                            ID="_lblNoMinta" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" style="font-style:italic; text-align:right; width: 50px;">
                                                                                        Keterangan
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "keterangan") %>'
                                                                                            ID="_lblketerangan" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>                                                                            
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Kode Supplier" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdsupplier") %>'
                                                                                ID="_lblkdsupplier" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Supplier" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:TextBox ID="TxtSupplier" runat="server" Text='<%# Trim(DataBinder.Eval(Container.DataItem, "namasupplier")) + " [" + Trim(DataBinder.Eval(Container.DataItem, "kdsupplier")) + "]" %>'
                                                                                BorderStyle="None" Style="cursor: hand" Width="150" ForeColor="#FF6600"
                                                                                BackColor="Transparent" ReadOnly="false" />                                                                                                                                                       
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Counter" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                                ID="_lblCounter" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Item" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td colspan="2" style="color:#000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                            ID="_lblNmItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" colspan="2">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKdBarang" />
                                                                                        &nbsp;|&nbsp;
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "jenisitem") %>'
                                                                                            ID="_lblJenisItem" /> 
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak" style="font-style:italic; text-align:right; width: 60px;">
                                                                                        Catalog No.
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                            ID="_lblCatalogNo" />
                                                                                        &nbsp;|&nbsp;
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "groupfm") %>'
                                                                                            ID="_lblgroup" />
                                                                                    </td>
                                                                                </tr>                                                                               
                                                                            </table>                                                                            
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="stokmin" runat="server" HeaderText="ROP Min"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "stokmin") %>'
                                                                                ID="_lblROPMin" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="stokmax" runat="server" HeaderText="ROP Max"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "stokmax") %>'
                                                                                ID="_lblROPMax" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="qtyminta" runat="server" HeaderText="Qty. Pesan"
                                                                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:TextBox ID="txtQtyMinta" AutoPostBack="False" runat="server" Style="text-align:right;" BackColor="Transparent" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyminta"), "#,##0.00") %>'
                                                                                Width="75" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Qty. Proses" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:TextBox ID="txtQtyProses" AutoPostBack="False" runat="server" Style="margin-left: 5;
                                                                                margin-right: 5" BackColor="Transparent" Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyproses"), "#,##0.00") %>'
                                                                                Width="75" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Center"
                                                                        HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
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
                                                                                ID="_lblDiskonPc" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="deactivate" runat="server" HeaderText="Tutup"
                                                                        ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="true" Checked='<%# DataBinder.Eval(Container.DataItem, "deactivate") %>'
                                                                                ID="_chkTutup" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Tender" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 0; margin-right: 15" Text='<%# DataBinder.Eval(Container.DataItem, "tender") %>'
                                                                                ID="_lbltender" />
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
