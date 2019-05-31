<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Therapi.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.KelTherapi.Therapi" %>

<html>
<head>
    <title>Master Therapi</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmMasterTherapi" runat="server">
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
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Kelompok Terapi
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="20%">
                                                            <asp:LinkButton ID="lbtnKodeTherapi" runat="server" Text="Kode Therapi" CausesValidation="False"></asp:LinkButton>
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtKodeTherapi" runat="server" AutoPostBack="True" MaxLength="10"
                                                                Width="100%">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="rfldKodeTherapi" runat="server" Display="dynamic"
                                                                ErrorMessage="Kode Therapi" ControlToValidate="txtKodeTherapi">** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                            Nama Therapi
                                                        </td>
                                                        <td width="40%">
                                                            <asp:TextBox ID="txtNamaTherapi" runat="server" MaxLength="100" Width="100%">
                                                            </asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RequiredFieldValidator ID="rfldNamaTherapi" runat="server" Display="dynamic"
                                                                ErrorMessage="Nama Therapi" ControlToValidate="txtNamaTherapi">** 
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20%">
                                                        </td>
                                                        <td width="40%">
                                                            <asp:CheckBox ID="chkStatusAktif" runat="server" Text="Aktif" AutoPostBack="False"
                                                                Checked="False"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <asp:Panel ID="pnlTherapiAddNewRow" runat="server" Visible="False">
                                                    <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                        width="100%">
                                                        <tr class="rheader">
                                                            <td class="rheadercol" align="left" height="25">
                                                                Edit atau Tambah Data Kelompok Therapi Detail
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table cellspacing="1" cellpadding="1" width="100%">
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Kode Therapi Detail
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtKodeTherapiDetail" runat="server" MaxLength="10" Width="100%" />
                                                                        </td>
                                                                        <td class="rBodyAddNewFld">
                                                                            <asp:RequiredFieldValidator ID="rfvKodeTherapiDetail" runat="server" Display="dynamic"
                                                                                ErrorMessage="Kode Therapi Detail" ControlToValidate="txtKodeTherapiDetail">**</asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Nama Therapi Detail
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtNamaTherapiDetail" runat="server" Width="100%" />
                                                                        </td>
                                                                        <td class="rBodyAddNewFld">
                                                                            <asp:RequiredFieldValidator ID="rfvNamaTherapiDetail" runat="server" Display="dynamic"
                                                                                ErrorMessage="Nama Therapi Detail" ControlToValidate="txtNamaTherapiDetail">**</asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="5%">
                                                                            <asp:Button ID="btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100">
                                                                            </asp:Button>
                                                                        </td>
                                                                        <td>
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
                                                <!-- END ADDNEW OBAT -->
                                                <!-- START DATAGRID OBAT -->
                                                <table width="100%">
                                                    <tr class="rbody">
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridTherapi" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                CellSpacing="0" BorderColor="Gainsboro" BorderWidth="1" GridLines="none"
                                                                Height="100%" DataKeyField="kdDTTherapi" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="&lt;img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'&gt;"
                                                                        CancelText="&lt;img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'&gt;"
                                                                        EditText="&lt;img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'&gt;">
                                                                        <ItemStyle HorizontalAlign="Center" Width="26px"></ItemStyle>
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" style="margin-top:2"></asp:ImageButton>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn Visible="False" DataField="kdDTTherapi"></asp:BoundColumn>
                                                                    <asp:TemplateColumn SortExpression="kdDTTherapi" HeaderText="Kode Therapi Detail">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdDTTherapi") %>'
                                                                                ID="_lblKodeTherapiDetail">
                                                                            </asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmDTTherapi" HeaderText="Nama Therapi Detail">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmDTTherapi") %>'
                                                                                ID="_lblNamaTherapiDetail">
                                                                            </asp:Label>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Data" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                                <PagerStyle HorizontalAlign="Right" Mode="NumericPages"></PagerStyle>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID BAHAN BAKU -->
                                                <table cellspacing="0" cellpadding="5" width="100%">
                                                    <tr class="rbody">
                                                        <td align="left">
                                                            <p>
                                                                <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki." />
                                                            </p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
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
