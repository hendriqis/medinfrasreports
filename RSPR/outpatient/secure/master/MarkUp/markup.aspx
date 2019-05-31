<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MarkUp.aspx.vb" Inherits="QIS.Web.secure.master.MarkUp.markup" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../Incl/calendarModule.ascx" %>
<html>
<head>
    <title>Pengaturan Margin Penjualan Item - Berdasarkan Batasan Harga Jual</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmMarkUp" runat="server">
    <table cellspacing="0" cellpadding="2" width="100%" height="100%" border="0">
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
            <td valign="top" width="100%" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Pengaturan Margin Penjualan Item - Berdasarkan Batasan Harga Jual
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:LinkButton ID="lbtnKodeMarkUp" CausesValidation="False" Text="Kode Mark Up"
                                                                            runat="server" />
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtKodeMarkUp" runat="server" AutoPostBack="true" Width="100%" MaxLength="5"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvKodeMarkUp" runat="server" ControlToValidate="txtKodeMarkUp"
                                                                            ErrorMessage="Kode Mark Up" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Nama Mark Up
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtNmMarkUp" runat="server" Width="100%" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvNmMarkUp" runat="server" ControlToValidate="txtNmMarkUp"
                                                                            ErrorMessage="Nama Mark Up" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- BEGIN ADDNEW MARK UP -->
                                                <asp:Panel ID="panelMarkUpAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Mark Up Item Berdasarkan Batasan Harga Jual
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Batas Minimum
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldMinimum" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvFldMinimum" runat="server" ControlToValidate="txtFldMinimum"
                                                                                            ErrorMessage="Batas Minimum" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator runat="server" ID="cvFldMinimum" Type="Currency" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtFldMinimum" Display="Dynamic" ErrorMessage="Batas Minimum harus angka" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Batas Maximum
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldMaximum" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvFldMaximum" runat="server" ControlToValidate="txtFldMaximum"
                                                                                            ErrorMessage="Batas Maximum" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator runat="server" ID="cvFldMaximum" Type="Currency" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtFldMaximum" Display="Dynamic" ErrorMessage="Batas Maximum harus angka" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Mark Up (%)
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldPersen" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvFldPersen" runat="server" ControlToValidate="txtFldPersen"
                                                                                            ErrorMessage="Mark Up" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CompareValidator runat="server" ID="cvFldPersen" Type="Currency" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtFldPersen" Display="Dynamic" ErrorMessage="Persentase harus angka" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="MarkUpDt_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn"
                                                                                            Width="100"></asp:Button>
                                                                                        <asp:Button ID="MarkUpDt_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                            CssClass="sbttn" Width="100"></asp:Button>
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
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <!-- END ADDNEW BAHAN BAKU -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- START DATAGRID BAHAN BAKU -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridMarkUp" runat="server" Width="100%" CellPadding="0" ShowFooter="True"
                                                                DataKeyField="kdMarkUp" Height="100%" GridLines="none" BorderWidth="1"
                                                                BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False" AllowSorting="True">
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
                                                                                AlternateText="Delete this item" CommandName="__delete" style="margin-top:2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="kdMarkUp" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="min_" runat="server" HeaderText="Minimum">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "min_"), "#,##0.00") %>'
                                                                                ID="_lblMinimum" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="Max_" runat="server" HeaderText="Maximum">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "Max_"), "#,##0.00") %>'
                                                                                ID="_lblMaximum" />
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Batasan Harga..." />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="Markup" runat="server" HeaderText="Mark Up (%)">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Markup") %>'
                                                                                ID="_lblPersen" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID BAHAN BAKU -->
                                            </td>
                                        </tr>
                                    </table>
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
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

</body>
</html>
