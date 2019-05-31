<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RekalkulasiRI.aspx.vb"
    Inherits="QIS.Web.secure.utilities.Rekalkulasi.RekalkulasiRI" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<html>
<head>
    <title>Rekalkulasi Penjualan Resep Pasien Rawat Inap</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body>
    <form id="frmHistoryBulanan" runat="server">
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
                                            Rekalkulasi Penjualan Resep Pasien Rawat Inap
                                        </td>
                                    </tr>
                                    <asp:Panel ID="pnlGrid" runat="server">
                                        <tr class="rbody">
                                            <td align="left" height="25">
                                                <table width="100%">
                                                    <tr valign="top">
                                                        <td width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lBtnNoRegistrasi" runat="server" Text="No. Registrasi" CausesValidation="False" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoRegistrasi" runat="server" Width="95%" AutoPostBack="True"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        No. Rekam Medis
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNoRekamMedis" runat="server" ReadOnly="true" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Nama Pasien
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNamaPasien" runat="server" ReadOnly="true" Width="77%" />
                                                                        <asp:TextBox ID="txtJenisKelamin" runat="server" ReadOnly="true" Style="text-align: center;"
                                                                            Width="8%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal Lahir
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggalLahir" runat="server" ReadOnly="true" Width="40%" />
                                                                        &nbsp; Umur (thn)
                                                                        <asp:TextBox ID="txtUmur" runat="server" ReadOnly="true" Style="text-align: center;"
                                                                            Width="15%" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td>
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        Tanggal / Jam Masuk
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggalMasuk" runat="server" ReadOnly="true" Width="70%" />
                                                                        <asp:TextBox ID="txtJamMasuk" runat="server" ReadOnly="true" Style="text-align: center;"
                                                                            Width="24%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Ruang Rawat
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeRuangRawat" runat="server" MaxLength="10" Width="24%" />
                                                                        <asp:TextBox ID="txtNamaRuangRawat" runat="server" ReadOnly="true" Width="70%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Kelas
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeKelas" runat="server" MaxLength="10" Width="24%" />
                                                                        <asp:TextBox ID="txtNamaKelas" runat="server" ReadOnly="true" Width="70%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Nomor Tempat Tidur
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNomorTempatTidur" runat="server" MaxLength="10" Width="95%" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Penjamin Bayar
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKdJMBayar" runat="server" MaxLength="10" Width="24%" />
                                                                        <asp:TextBox ID="txtNamaPenjaminBayar" runat="server" ReadOnly="true" Width="70%" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table>
                                                    <tr>
                                                        <td width="30%" align="left">
                                                            <asp:Button ID="btnProses" runat="server" Width="100" Text="Rekalkulasi..." CssClass="sbttn">
                                                            </asp:Button>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblKeterangan" runat="server" Text="Proses Rekalkulasi Selesai....."
                                                                Font-Bold="True" ForeColor="Red" Font-Size="12pt">
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                </table>
                                <table width="100%">
                                    <tr class="rbody">
                                        <td width="100%" height="100%">
                                            <div style="overflow: auto; width: 100%; height: 400">
                                                <asp:DataGrid ID="gridResep" runat="server" Width="100%" AutoGenerateColumns="False"
                                                    CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                    GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="noresep"
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
                                                        <asp:TemplateColumn runat="server" HeaderText="App" HeaderStyle-HorizontalAlign="Center"
                                                            ItemStyle-HorizontalAlign="Center" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:CheckBox runat="server" Style="margin-left: 0; margin-right: 5" Enabled="false"
                                                                    Checked='<%# DataBinder.Eval(Container.DataItem, "posting") %>' ID="_chkApproval" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="noresep" runat="server" HeaderText="No. Resep"
                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "noresep") %>'
                                                                    ID="_lblNoResep" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="tglresep" runat="server" HeaderText="Tgl. Resep"
                                                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "tglresep"), "dd-MM-yyyy") %>'
                                                                    ID="_lblTanggal" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn runat="server" HeaderText="Total" ItemStyle-HorizontalAlign="Right"
                                                            HeaderStyle-HorizontalAlign="Right" Visible="True">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "total"), "#,##0.00") %>'
                                                                    ID="_lblTotal" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn SortExpression="updater" runat="server" HeaderText="Petugas"
                                                            HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                            <ItemTemplate>
                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "updater") %>'
                                                                    ID="_lblPetugas" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn ItemStyle-HorizontalAlign="Right">
                                                            <ItemTemplate>
                                                                <asp:LinkButton runat="server" ID="__lbtnResepDt" Style="margin-left: 0; margin-right: 5"
                                                                    CausesValidation="False" Text="Detil Resep.. " CommandName="__ResepDt" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                    </Columns>
                                                </asp:DataGrid>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
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

</body>
</html>
