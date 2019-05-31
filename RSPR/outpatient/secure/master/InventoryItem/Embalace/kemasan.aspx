<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="kemasan.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.Embalace.kemasan" %>

<html>
<head>
    <title>Embalace</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmGudang" runat="server">
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
            <td width="100%" valign="top" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="pnlHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Embalace
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="50%" valign="top">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodeKemasan" CausesValidation="False" Text="Kode Kemasan"
                                                                            runat="server" />
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtKodeKemasan" runat="server" MaxLength="5" Width="100%" AutoPostBack="true" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvKodeKemasan" runat="server" Display="dynamic"
                                                                            ErrorMessage="Kode Kemasan" ControlToValidate="txtKodeKemasan">**</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Nama Kemasan
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtNamaKemasan" runat="server" MaxLength="25" Width="100%" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvNama" runat="server" Display="dynamic" ErrorMessage="Nama Kemasan"
                                                                            ControlToValidate="txtNamaKemasan">**</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Insial
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtInisial" runat="server" MaxLength="3" Width="100%" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td width="50%" valign="top">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodebarang" CausesValidation="False" Text="Kode Item" runat="server" />
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtKodeBarang" runat="server" MaxLength="10" Width="100%" AutoPostBack="true" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblNamaBarang" runat="Server" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Jenis Harga
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:DropDownList runat="server" ID="ddlJenisHarga" AutoPostBack="True" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <asp:Panel ID="pnlHargaSatuan" runat="server">
                                                                    <tr>
                                                                        <td width="30%">
                                                                            Harga Satuan
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtHargaSatuan" runat="server" Width="100%" />
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </asp:Panel>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- BEGIN ADDNEW KEMASAN -->
                                                <asp:Panel ID="pnlAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table cellspacing="0" cellpadding="5" width="100%" class="rBodyAddNew" bordercolordark="#98AAB1">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Data Kemasan
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table width="100%" cellpadding="1" cellspacing="1">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Jumlah Minimum
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtJmlMinimum" runat="server" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvJmlMinimum" runat="server" ControlToValidate="txtJmlMinimum"
                                                                                            ErrorMessage="Jumlah Minimum" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator runat="server" ID="cvJmlMinimum" Type="Double" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtJmlMinimum" Display="Dynamic" ErrorMessage="Jumlah Minimum harus angka" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Jumlah Maximum
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtJmlMaximum" runat="server" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvJmlMaximum" runat="server" ControlToValidate="txtJmlMaximum"
                                                                                            ErrorMessage="Jumlah Maximum" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator runat="server" ID="cvJmlMaximum" Type="Double" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtJmlMaximum" Display="Dynamic" ErrorMessage="Jumlah Maximum harus angka" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Harga
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtHarga" runat="server" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvHarga" runat="server" ControlToValidate="txtHarga"
                                                                                            ErrorMessage="Harga" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator runat="server" ID="cvHarga" Type="Currency" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtHarga" Display="Dynamic" ErrorMessage="Harga harus angka" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" CausesValidation="True"
                                                                                            Width="10%"></asp:Button>
                                                                                        <asp:Button ID="btnDone" runat="server" Text="Close" CausesValidation="False" CssClass="sbttn"
                                                                                            Width="10%"></asp:Button>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr bgcolor="White" valign="bottom">
                                                                        <td align="left" height="25">
                                                                            <p align="right">
                                                                                Data yang sudah ada...</p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <!-- BEGIN ADDNEW KEMASAN -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- START DATAGRID KEMASAN -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridKemasan" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                                Width="100%" DataKeyField="kdkemas" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="_delete" style="margin-top:2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="kdkemas" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="jumlah1" runat="server" HeaderText="Jumlah Minimum">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "jumlah1") %>'
                                                                                ID="_lblJmlMinimum" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="jumlah2" runat="server" HeaderText="Jumlah Maximum">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "jumlah2") %>'
                                                                                ID="_lblJmlMaximum" />
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Data" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Harga">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"),"#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID KEMASAN -->
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
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>

</body>
</html>
