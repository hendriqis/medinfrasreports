<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SubstitusiObat.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.MasterItem.SubstitusiObat" %>

<html>
<head>
    <title>Generik</title>
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
    <form id="frmKonvSat" runat="server">
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
                                Item Generik
                            </td>
                        </tr>
                        <tr class="rbody">
                            <td width="50%" valign="top">
                                <table width="100%">
                                    <tr>
                                        <td width="20%">
                                            Kode Item:
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblKodeBarang" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            Nama Item:
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblNamaBarang" />
                                        </td>
                                    </tr>
                                </table>
                                <table width="100%">
                                    <tr>
                                        <td width="100%">
                                            <div style="overflow: auto; width: 100%;">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%">
                                                            <!-- BEGIN ADDNEW ROP -->
                                                            <asp:Panel ID="panelGenerikAddNewRow" runat="server">
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Barang Generik
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lbtnKodeBrgGen" runat="server" Text="Kode Barang" CausesValidation="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="AddNewRow_txtKodeBrgGen" runat="server" Width="100%" AutoPostBack="True"
                                                                                            MaxLength="10"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtKodeBrgGen" runat="server" Display="dynamic"
                                                                                            ErrorMessage="Kode Satuan" ControlToValidate="AddNewRow_txtKodeBrgGen">** </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Barang
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="AddNewRow_txtNamaBrgGen" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtNamaBrgGen" runat="server" Display="dynamic"
                                                                                            ErrorMessage="Nama Satuan" ControlToValidate="AddNewRow_txtNamaBrgGen">** </asp:RequiredFieldValidator>
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
                                                            <!-- END ADDNEW ROP -->
                                                        </td>
                                                    </tr>
                                                    <tr class="rbody">
                                                        <td width="100%">
                                                            <asp:DataGrid ID="gridGenerik" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                                Width="100%" AllowPaging="False" PageSize="20" DataKeyField="kdbrgGenerik" ShowFooter="True"
                                                                CellPadding="0">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn>
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                alt="Delete this item" CommandName="__delete" Visible="False" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Kode Barang">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbrgGenerik") %>'
                                                                                ID="_lblKdBarang" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Nama Barang">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                ID="_lblNmBarang" />
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
