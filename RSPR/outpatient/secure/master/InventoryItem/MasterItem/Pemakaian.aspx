<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Pemakaian.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.MasterItem.Pemakaian" %>

<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>
<html>
<head>
    <title>Pemakaian Rata-rata</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <script language="javascript">
        function center() {
            var xcenter = (screen.availWidth - 800) / 2;
            var ycenter = (screen.availHeight - 600) / 2;
            self.resizeTo(800, 600);
            self.moveTo(xcenter, ycenter);
        }
    </script>

</head>
<body ms_positioning="GridLayout" onload="center()">
    <form id="frmPemakaian" runat="server">
    <table cellspacing="2" cellpadding="0" width="100%" border="0">
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td align="left">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="0" cellpadding="5" width="100%">
                        <tr class="rheader">
                            <td class="rheadercol" align="left" height="25">
                                Pemakaian Rata-rata
                            </td>
                        </tr>
                        <tr class="rbody">
                            <td width="50%" valign="top">
                                <table width="100%">
                                    <tr>
                                        <td width="10%">
                                            Kode Item
                                        </td>
                                        <td width="40%">
                                            <asp:TextBox runat="server" ID="lblKodeBarang" Width="15%" ReadOnly="True"></asp:TextBox>
                                            <asp:Label runat="server" ID="lblNamaBarang"></asp:Label>
                                            <asp:RequiredFieldValidator ID="rfvBarang" runat="server" Display="dynamic" ErrorMessage="Barang"
                                                ControlToValidate="lblKodeBarang">** 
                                            </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%">
                                            <asp:LinkButton ID="lbtnGudang" Text="Gudang" runat="server" CausesValidation="False">
                                            </asp:LinkButton>
                                        </td>
                                        <td width="40%">
                                            <asp:TextBox ID="txtGudang" runat="server" AutoPostBack="True" MaxLength="5" Width="15%">
                                            </asp:TextBox>
                                            <asp:Label ID="lblNamaGudang" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvGudang" runat="server" Display="dynamic" ErrorMessage="Gudang"
                                                ControlToValidate="txtGudang">** 
                                            </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%">
                                            <asp:Label ID="lblLokasi" Text="Lokasi" runat="server">
                                            </asp:Label>
                                        </td>
                                        <td width="40%">
                                            <asp:DropDownList ID="ddlLokasi" runat="server" Width="40%" AutoPostBack="True">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvLokasi" ControlToValidate="ddlLokasi"
                                                ErrorMessage="Lokasi">**
                                            </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="10%">
                                            <asp:Button ID="btnQuery" runat="server" CausesValidation="True" Text="Query" Visible="False" />
                                        </td>
                                        <td width="60%">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%">
                                    <tr class="rbody">
                                        <td width="100%">
                                            <div style="overflow: auto; width: 100%; height: 300px">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%">
                                                            <!-- BEGIN ADDNEW ACTIVE SUBSTANCE -->
                                                            <asp:Panel ID="panelPemakaian" runat="server">
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Pemakaian Rata-rata
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="30%">
                                                                                        Bulan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="5%">
                                                                                        <asp:DropDownList ID="ddlBulan" runat="server">
                                                                                            <asp:ListItem Value="01" Text="Januari" />
                                                                                            <asp:ListItem Value="02" Text="Februari" />
                                                                                            <asp:ListItem Value="03" Text="Maret" />
                                                                                            <asp:ListItem Value="04" Text="April" />
                                                                                            <asp:ListItem Value="05" Text="Mei" />
                                                                                            <asp:ListItem Value="06" Text="Juni" />
                                                                                            <asp:ListItem Value="07" Text="Juli" />
                                                                                            <asp:ListItem Value="08" Text="Agustus" />
                                                                                            <asp:ListItem Value="09" Text="September" />
                                                                                            <asp:ListItem Value="10" Text="Oktober" />
                                                                                            <asp:ListItem Value="11" Text="November" />
                                                                                            <asp:ListItem Value="12" Text="Desember" />
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:DropDownList ID="ddlTahun" runat="server">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="30%">
                                                                                        Jumlah Rata-rata pemakaian
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="5%">
                                                                                        <asp:TextBox ID="txtPemakaian" runat="server" Width="100%">
                                                                                        </asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100">
                                                                                        </asp:Button>
                                                                                        <asp:Button ID="btnDone" runat="server" Text="Close" CausesValidation="False" CssClass="sbttn"
                                                                                            Width="100"></asp:Button>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr valign="bottom" bgcolor="white">
                                                                        <td align="left" height="25">
                                                                            <p align="right">
                                                                                Data yang sudah ada...</p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <!-- END ADDNEW ACTIVE SUBSTANCE-->
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="100%">
                                                            <asp:DataGrid ID="dgPemakaian" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                                Width="100%" AllowPaging="False" PageSize="20" DataKeyField="kdBarang" ShowFooter="True"
                                                                CellPadding="0">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn RUNAT="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn>
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                ALT="Delete this item" CommandName="__delete" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="bulan" Visible="False"></asp:BoundColumn>
                                                                    <asp:BoundColumn DataField="tahun" Visible="False"></asp:BoundColumn>
                                                                    <asp:BoundColumn DataField="pemakaian" Visible="False"></asp:BoundColumn>
                                                                    <asp:TemplateColumn RUNAT="server" HeaderText="Gudang">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdgudang") %>'
                                                                                ID="_lblGudang">
                                                                            </asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn RUNAT="server" HeaderText="Lokasi">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>'
                                                                                ID="_lblLokasi">
                                                                            </asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn RUNAT="server" HeaderText="Bulan">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "bulan") %>'
                                                                                ID="_lblBulan">
                                                                            </asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn RUNAT="server" HeaderText="Tahun">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "tahun") %>'
                                                                                ID="_lblTahun">
                                                                            </asp:Label>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Data" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn RUNAT="server" HeaderText="Pemakaian">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "pemakaian") %>'
                                                                                ID="_lblPemakaian">
                                                                            </asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <table cellspacing="0" cellpadding="5" width="100%">
                                                <tr>
                                                    <td align="left">
                                                        <p>
                                                            <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td align="right">
                                            <input type="button" value="Close" onclick="window.close();" class="sbttn">
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

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    </form>
</body>
</html>
