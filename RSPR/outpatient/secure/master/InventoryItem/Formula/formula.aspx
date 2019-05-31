<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="formula.aspx.vb" Inherits="QIS.Web.secure.master.InventoryItem.Formula.Formula" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../Incl/calendarModule.ascx" %>
<html>
<head>
    <title>Template Produksi</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout" onload="fokus();">
    <form id="frmFormula" runat="server">
    <table cellspacing="2" cellpadding="0" width="100%" border="0" height="100%">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left" valign="top" width="100%" height="100%">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Template Produksi
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td>
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        <asp:LinkButton ID="lbtnKodeBarang" runat="server" Text="Kode Item" CausesValidation="False" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKodeBarang" runat="server" AutoPostBack="true" Width="95%" MaxLength="10" />
                                                                        <asp:RequiredFieldValidator ID="rfvKode" runat="server" ControlToValidate="txtKodeBarang"
                                                                            ErrorMessage="Kode Item" Display="dynamic">
																				**
                                                                        </asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Keterangan
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtKeterangan" runat="server" Width="95%" MaxLength="50" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Nama Item
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNmItem" runat="server" Width="95%" MaxLength="50" ReadOnly="True" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Satuan Kecil
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtSatuanKecil" runat="server" Width="95%" MaxLength="50" ReadOnly="True" />
                                                                    </td>
                                                                </tr>
                                                                <tr style="display:none">
                                                                    <td width="30%">
                                                                        Satuan Besar
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtSatuanBesar" runat="server" Width="95%" MaxLength="50" ReadOnly="True" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="30%">
                                                                        Fixed Cost
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtFCost" runat="server" Width="95%" />
                                                                        <asp:CompareValidator ID="cvHarga" runat="server" ControlToValidate="txtFCost" Operator="DataTypeCheck"
                                                                            Type="Currency" ErrorMessage="Fixed Cost" Display="Dynamic">** Harus diisi dengan angka **
                                                                        </asp:CompareValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkPersen" runat="server" Text="Dalam persentase" />
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
                                                <!-- BEGIN ADDNEW BAHAN BAKU -->
                                                <asp:Panel ID="panelFormulaAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr class="rbody">
                                                            <td>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Bahan Baku Produksi
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lblFldKdBarang" runat="server" Text="Kode Item" CausesValidation="False" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldKdBarang" runat="server" AutoPostBack="true" Width="100%"
                                                                                            MaxLength="10" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:RequiredFieldValidator ID="rfvFldKdBarang" runat="server" ControlToValidate="txtFldKdBarang"
                                                                                            ErrorMessage="Kode Item" Display="dynamic">
																							**
                                                                                        </asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Nama Item
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldNmItem" runat="server" Width="100%" MaxLength="50" ReadOnly="True" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Qty Pakai
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldQtyPakai" runat="server" MaxLength="10" Width="50%" />
                                                                                        <asp:TextBox ID="txtFldSatuanKecil" runat="server" Width="49%" MaxLength="50" ReadOnly="True" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:RequiredFieldValidator ID="rfvFldQtyPakai" runat="server" ControlToValidate="txtFldQtyPakai"
                                                                                            ErrorMessage="Qty Pakai" Display="dynamic">
																							**
                                                                                        </asp:RequiredFieldValidator>
                                                                                        <asp:CompareValidator runat="server" ID="cvFld" Type="Double" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtFldQtyPakai" Display="Dynamic" ErrorMessage="Qty Pakai harus integer" />**
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="FormulaDt_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn"
                                                                                            Width="10%" />
                                                                                        <asp:Button ID="FormulaDt_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                            CssClass="sbttn" Width="10%" />
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
                                                <!-- START DATAGRID BAHAN BAKU -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridFormulaDt" runat="server" Width="100%" CellPadding="0" ShowFooter="True"
                                                                DataKeyField="kdFormula" Height="100%" GridLines="none" BorderWidth="1"
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
                                                                    <asp:BoundColumn DataField="kdFormula" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdbarang" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="kdbarang" runat="server" HeaderText="Kode Item">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                ID="_lblKodeBarang" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NmDesc1" runat="server" HeaderText="Nama Item">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "NmDesc1") %>'
                                                                                ID="_lblNmItem" />
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Data" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NmDesc2" runat="server" HeaderText="Catalog No.">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc2") %>'
                                                                                ID="_lblCatalogNo" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="QtyPakai" runat="server" HeaderText="Qty Pakai">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "QtyPakai") %>'
                                                                                ID="_lblQtyPakai" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuankc" runat="server" HeaderText="Satuan">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID BAHAN BAKU -->
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

<script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
			End Function			
</script>

<script language="javascript">
    function fokus() {
        try {
            var kdbarangp;
            kdbarangp = ditrim(document.getElementById('txtKodeBarang').value);
            if (kdbarangp == '') {
                document.getElementById('lbtnKodeBarang').focus();
            }
            else {
                var kdbarang;
                kdbarang = ditrim(document.getElementById('txtFldKdBarang').value);
                if (kdbarang == '') {
                    document.getElementById('lblFldKdBarang').focus();
                }
                else {
                    document.getElementById('txtFldQtyPakai').focus();
                    document.getElementById('txtFldQtyPakai').select();
                }
            }

        }
        catch (e) {
        }
    }
		    
</script>

