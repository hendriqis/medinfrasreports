<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule2.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="konvsat.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.MasterItem.konvsat" %>

<html>
<head>
    <title>Konversi Satuan</title>
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
                                Konversi Satuan
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
                                                            <asp:Panel ID="panelKonvSatAddNewRow" runat="server">
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Satuan Alternatif per Barang
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lbtnKodeSatuan" runat="server" Text="Satuan Alternatif" CausesValidation="False"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="AddNewRow_txtKodeSatuan" runat="server" Width="100%" AutoPostBack="True"
                                                                                            MaxLength="10"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtKodeSatuan" runat="server" Display="dynamic"
                                                                                            ErrorMessage="Kode Satuan" ControlToValidate="AddNewRow_txtKodeSatuan">** </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Satuan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="AddNewRow_txtNamaSatuan" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtNamaSatuan" runat="server" Display="dynamic"
                                                                                            ErrorMessage="Nama Satuan" ControlToValidate="AddNewRow_txtNamaSatuan">** </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:CheckBox ID="chk_AddNewRow_isActive" runat="server" AutoPostBack="False" Text="Active"
                                                                                            Checked="True" Enabled="True"></asp:CheckBox>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Faktor
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="AddNewRow_txtFaktor" runat="server" Text="0" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfv_AddNewRow_txtFaktor" runat="server" Display="dynamic"
                                                                                            ErrorMessage="Faktor" ControlToValidate="AddNewRow_txtFaktor">** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <asp:CompareValidator ID="cv_AddNewRow_txtFaktor" runat="server" Display="dynamic"
                                                                                            ControlToValidate="AddNewRow_txtFaktor" ValueToCompare="0.00" Type="Double" Operator="GreaterThan"
                                                                                            ErrorMessage="Faktor harus lebih besar dari 0">** 
                                                                                        </asp:CompareValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Kode Produksi
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="AddNewRow_txtKdProduksi" runat="server" Text="0" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
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
                                                            <asp:DataGrid ID="gridKonvSat" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                                Width="100%" AllowPaging="False" PageSize="20" DataKeyField="satuanalt" ShowFooter="True"
                                                                CellPadding="0">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:ButtonColumn ItemStyle-HorizontalAlign="Right" CommandName="select" Visible="False"
                                                                        Text="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>">
                                                                    </asp:ButtonColumn>
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
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:BoundColumn DataField="satuanalt" Visible="False" />
                                                                    <asp:TemplateColumn runat="server" HeaderText="Satuan Alternatif" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuanalt") %>'
                                                                                ID="_lblSatuanAlt" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Satuan Alternatif">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuanalt") %>'
                                                                                ID="_lblnmSatuanAlt" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Kode Produksi" HeaderStyle-HorizontalAlign="Center"
                                                                        ItemStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "KdProduksi") %>'
                                                                                ID="_lblKdProduksi" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Faktor" HeaderStyle-HorizontalAlign="Right"
                                                                        ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "Faktor") %>'
                                                                                ID="_lblFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Active" HeaderStyle-HorizontalAlign="Right"
                                                                        ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <!--Text='<%# DataBinder.Eval(Container.DataItem, "isActive") %>' -->
                                                                            <asp:CheckBox ID="_chkisActive" runat="server" Enabled="False" Style="margin-left: 5;
                                                                                margin-right: 5" Checked='<%# DataBinder.Eval(Container.DataItem, "isActive") %>'>
                                                                            </asp:CheckBox>
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
