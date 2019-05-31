<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule2.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="KontrakPembelianSupplier.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.MasterItem.KontrakSupplierItem" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title>Kontrak Pembelian Supplier</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <script type="text/javascript">
        function center() {
            var xcenter = (screen.availWidth - 800) / 2;
            var ycenter = (screen.availHeight - 600) / 2;
            self.resizeTo(800, 600);
            self.moveTo(xcenter, ycenter);
        }

        function moneyInString(money) {
            var DecimalSeparator = Number("1.2").toLocaleString().substr(1, 1);

            var AmountWithCommas = money.toLocaleString();
            var arParts = String(AmountWithCommas).split(DecimalSeparator);
            var intPart = arParts[0];
            var decPart = (arParts.length > 1 ? arParts[1] : '');
            decPart = (decPart + '00').substr(0, 2);

            return intPart + DecimalSeparator + decPart;
        }

        function convertMoneyFormat(sender) {
            var value = parseInt(sender.value.replace(/[^0-9-.]/g, ''), 10);
            if (isNaN(value) == true) value = 0;
            sender.value = moneyInString(value);
        }
    </script>
</head>
<body ms_positioning="GridLayout" onload="center()">
    <form id="frmKontrakPembelian" runat="server">
        <table cellspacing="2" cellpadding="0" width="100%" border="0">
            <tr>
                <td align="left">
                    <div style="width: 100%; height: 100%; overflow: auto;">
                        <table cellspacing="0" cellpadding="5" width="100%">
                            <tr class="rheader">
                                <td class="rheadercol" align="left" height="25">
                                    Kontrak Pembelian Supplier
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
                                        <tr class="rbody">
                                            <td colspan="2">
                                                <!-- BEGIN ADDNEW PEMESANAN -->
                                                <asp:Panel ID="panelPemesananAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Kontrak Pembelian Supplier
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <colgroup>
                                                                                    <col width="15%" />
                                                                                    <col width="55%" />
                                                                                    <col />
                                                                                </colgroup>
                                                                                <tr>
                                                                                    <td>
                                                                                        Tanggal Mulai
                                                                                    </td>
                                                                                    <td>
                                                                                        <Module:webcal ID="calTglMulai" runat="server" DontResetDate="True" />
                                                                                        &nbsp;&nbsp;
                                                                                        Tanggal Akhir
                                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                        <Module:webcal ID="calTglAkhir" runat="server" DontResetDate="True" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label runat="server" ID="lblID" Visible="false"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:LinkButton runat="server" ID="lbtnSupplier" Text="Supplier"></asp:LinkButton>
                                                                                        <font color="red">*</font>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:TextBox runat="server" ID="txtKodeSupplier" Width="100px" AutoPostBack="true"></asp:TextBox>
                                                                                        <asp:TextBox runat="server" ID="txtNamaSupplier" Width="70%" ReadOnly="true" CssClass="txtsummary"></asp:TextBox>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:RequiredFieldValidator ID="rfvKontrakPembelian_AddNewRow_txtKodeSupplier" runat="server"
                                                                                            ControlToValidate="txtKodeSupplier" ErrorMessage="Supplier"
                                                                                            Display="dynamic">
																								        ** 
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        Nilai Kontrak
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox runat="server" ID="txtNilaiKontrak" Width="150px" CssClass="right" Text="0.00" onchange="convertMoneyFormat(this)"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        Diskon Tunai
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:TextBox runat="server" ID="txtDiskonTunai" Width="150px" CssClass="right" Text="0.00" onchange="convertMoneyFormat(this)"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="2">
                                                                                        <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                                                        </asp:ValidationSummary>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr><td colspan="3">&nbsp;</td></tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="btnSave" AccessKey="V" runat="server" Text="Save"
                                                                                            Width="100" CssClass="sbttn" />
                                                                                        <asp:Button ID="btnCancel" AccessKey="D" runat="server" CausesValidation="False"
                                                                                            Text="Close" Width="100" CssClass="sbttn" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <!-- END ADDNEW PEMESANAN -->
                                            </td>
                                        </tr>
                                        <tr valign="bottom" bgcolor="white">
                                            <td align="left" colspan="2">
                                                <p align="right">
                                                    Data yang sudah ada...
                                                </p>
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td colspan="2">
                                                <!-- START DATAGRID PEMESANAN -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridKontrakPembelian" runat="server" Width="100%" AllowSorting="True"
                                                                CellPadding="0" ShowFooter="True" DataKeyField="ID" Height="100%" GridLines="none"
                                                                BorderWidth="1" BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnEdit" CausesValidation="False" ImageUrl="/qislib/images/edit.png"
                                                                                AlternateText="Edit this item" CommandName="__edit" Style="margin-top: 4" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 4" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="TglMulai" runat="server" HeaderText="Tgl Mulai"
                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "TglMulai"),"dd-MM-yyyy") %>'
                                                                                ID="_tglMulai" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="TglAkhir" runat="server" HeaderText="Tgl Akhir"
                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "TglAkhir"),"dd-MM-yyyy") %>'
                                                                                ID="_tglAkhir" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NmSupplier" runat="server" HeaderText="Supplier" ItemStyle-HorizontalAlign="Left"
                                                                        HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NmSupplier") %>'
                                                                                ID="_lblNamaSupplier" />
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="True" CommandName="_AddNewRow"
                                                                                onmouseover="window.status='Click here to add new record.';return true" onmouseout="window.status='';return true;"
                                                                                title="Click here to add new record." Text="Tambah Data" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NilaiKontrak" runat="server" HeaderText="Nilai Kontrak" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "NilaiKontrak"),"#,##0.00") %>'
                                                                                ID="_lblNilaiKontrak" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="DiskonTunai" runat="server" HeaderText="Diskon Tunai" ItemStyle-HorizontalAlign="Right"
                                                                        HeaderStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "DiskonTunai"),"#,##0.00") %>'
                                                                                ID="_lblDiskonTunai" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID PEMESANAN -->
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
</body>
</html>
