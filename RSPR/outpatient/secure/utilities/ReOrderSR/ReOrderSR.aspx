<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReOrderSR.aspx.vb" Inherits="QIS.Web.secure.utilities.ReOrderSR.ReOrderSR" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Re-Order Permintaan Barang</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
</head>
<div id="loadingmsg" style="position: absolute; z-index: 3; left: 240; top: 200;
    width: 200; height: 60; border-width: 1; border-style: ridge; background-color: #eeeeee">
    <center>
        <br />
        <br />
        <img src="/qislib/images/cursor_hourglas.gif"><font face='Verdana' size="1"><b>Loading,
            Please wait ...</b></font><br />
        <br />
    </center>
</div>
<body ms_positioning="GridLayout">
    <form id="frmResepRj" runat="server">
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
                                        <td class="rheadercol" align="left" height="25">
                                            Re-Order Permintaan Barang
                                        </td>
                                    </tr>
                                    <asp:Panel ID="pnlGrid" runat="server">
                                        <tr class="rbody">
                                            <td align="left" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="25%">
                                                            Tanggal Hari ini:
                                                            <br />
                                                            <asp:Label ID="lblTgl" runat="server" />
                                                        </td>
                                                        <td width="25%">
                                                            Proses R.O.P.:
                                                            <br />
                                                            <asp:DropDownList ID="ddlprosesROP" runat="server" Width="100%" AutoPostBack="False">
                                                                <asp:ListItem Value="Statis" Text="Statis"></asp:ListItem>
                                                                <asp:ListItem Value="Dinamis" Text="Dinamis"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td width="25%">
                                                            Pemakai
                                                            <br />
                                                            <asp:DropDownList ID="ddlPemakai" runat="server" Width="100%" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Gudang:
                                                            <br />
                                                            <asp:DropDownList ID="ddlGudang" runat="server" Width="100%" AutoPostBack="True" />
                                                        </td>
                                                        <td>
                                                            Lokasi:
                                                            <br />
                                                            <asp:DropDownList ID="ddlLokasi" runat="server" Width="100%" AutoPostBack="False" />
                                                        </td>
                                                        <td>
                                                            Deskripsi
                                                            <br />
                                                            <asp:DropDownList ID="ddlDeskripsi" runat="server" Width="100%" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="3">
                                                            <br />
                                                            <asp:Button ID="btnHitungReorder" runat="server" Text="Hitung Re-Order" CssClass="sbttn">
                                                            </asp:Button>
                                                            <asp:Button ID="btnGenSR" runat="server" Text="Proses" CssClass="sbttn" Width="100">
                                                            </asp:Button>
                                                            <asp:Button ID="btnCetak" runat="server" Text="Cetak" CssClass="sbttn" Visible="false"
                                                                Width="100"></asp:Button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <asp:Panel ID="List" runat="server">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tr>
                                                            <td>
                                                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                    <tr>
                                                                        <td style="padding-left: 25px">
                                                                            <asp:Label ID="SectionFooterCaption" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-left: 5px">
                                                                <br />
                                                                <asp:Panel ID="SectionPanel" runat="server">
                                                                    <asp:DataGrid ID="grdROP" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                        CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                        GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="kdBarang" ShowFooter="True"
                                                                        CellPadding="0" AllowSorting="True">
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
                                                                            <asp:TemplateColumn SortExpression="kdBarang" runat="server" HeaderText="Kode" ItemStyle-HorizontalAlign="Left"
                                                                                HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>'
                                                                                        ID="_lblKdBarang" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="nmbarang" runat="server" HeaderText="Nama Barang"
                                                                                ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 1; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang") %>'
                                                                                        ID="_lblNmItem" CssClass="txtlessstrong" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="saldoGd" runat="server" HeaderText="Saldo" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "saldoGd"), "#,##0.00") %>'
                                                                                        ID="_lblSaldoGd" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="saldoGdLain" runat="server" HeaderText="Saldo Gdg. Lain"
                                                                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "saldoGdLain"), "#,##0.00") %>'
                                                                                        ID="_lblSaldoGdLain" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="Jenis" runat="server" HeaderText="Jenis" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# DataBinder.Eval(Container.DataItem, "jenisitem") %>'
                                                                                        ID="_lbljnsitem" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="average" runat="server" HeaderText="AVG" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "average"), "#,##0.00") %>'
                                                                                        ID="_lblavg" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="ropmin" runat="server" HeaderText="Min" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "ropmin"), "#,##0.00") %>'
                                                                                        ID="_lblRopmin" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="ropmax" runat="server" HeaderText="Max" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "ropmax"), "#,##0.00") %>'
                                                                                        ID="_lblRopmax" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="rop" runat="server" HeaderText="ROP" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="False">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 0" Text='<%# format(DataBinder.Eval(Container.DataItem, "rop"), "#,##0.00") %>'
                                                                                        ID="_lblRop" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Unit" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="false">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 15; margin-right: 15" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                        ID="_lblSatuanKcl" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                                ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:Label runat="server" Style="margin-left: 15; margin-right: 15" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                        ID="_lblnmSatuanKcl" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                            <asp:TemplateColumn SortExpression="Minta" runat="server" HeaderText="Minta" ItemStyle-HorizontalAlign="Center"
                                                                                HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="_txtQtyMinta" AutoPostBack="False" runat="server" Style="margin-left: 5;
                                                                                        margin-right: 5" BackColor="Transparent" Text='<%# format(DataBinder.Eval(Container.DataItem, "Minta"), "#,##0.00") %>'
                                                                                        Width="75" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateColumn>
                                                                        </Columns>
                                                                    </asp:DataGrid>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlMesage" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="left" height="25">
                                                <asp:Label ID="lblMessage" runat="server" />
                                                <br />
                                                <br />
                                                <asp:Button ID="btnDone" runat="server" Text="Done" CssClass="sbttn" Width="100"
                                                    CausesValidation="False"></asp:Button>
                                            </td>
                                        </tr>
                                    </asp:Panel>
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
</body>
</html>
<script>
    if (document.all) document.all.loadingmsg.style.visibility = 'hidden';
</script>
<script>
    if (document.layers) document.loadingmsg.visibility = 'hidden'
</script>
<script>
    if (document.getElementById) document.getElementById('loadingmsg').style.visibility = 'hidden'
</script>
