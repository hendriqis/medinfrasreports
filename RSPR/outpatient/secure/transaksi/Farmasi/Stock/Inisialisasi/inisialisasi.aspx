<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="inisialisasi.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Farmasi.Stock.Inisialisasi.inisialisasi" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../incl/CSSToolbar.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Inisialisasi Persediaan</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body onload="fokus();">
    <form id="frmPenyesuaianRj" runat="server">
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
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Inisialisasi Persediaan
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td align="left" height="25">
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%">
                                                        Tanggal Hari ini:
                                                        <br />
                                                        <asp:Label ID="lblTgl" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <table width="100%">
                                                <tr>
                                                    <td width="30%" valign="middle">
                                                        <asp:LinkButton ID="lbtnGudang" runat="server" Text="Gudang : " CausesValidation="False" /><br />
                                                        <asp:TextBox ID="txtKodeGudang" runat="server" AutoPostBack="True" />
                                                        <asp:Label ID="lblNamaGudang" runat="server" />
                                                        <asp:RequiredFieldValidator ID="rfvGudang" runat="server" ControlToValidate="txtKodeGudang"
                                                            ErrorMessage="Kode Gudang" Display="Dynamic">**
                                                        </asp:RequiredFieldValidator>
                                                    </td>
                                                    <td width="30%" valign="middle">
                                                        Lokasi&nbsp;:&nbsp;<br />
                                                        <asp:DropDownList ID="ddlLokasi" runat="server" Width="354" AutoPostBack="True" />
                                                    </td>
                                                    <td width="10%" valign="middle" align="right">
                                                        <asp:Button ID="btnItemStock" runat="server" Text="Barang Belum diposting" CssClass="bttntext"
                                                            Visible="False"></asp:Button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td align="right" style="display: 'none'">
                                            <asp:DataList ID="listSearch" runat="server" RepeatDirection="Horizontal" OnItemCommand="HandleItemSearchCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="linkSearch" CausesValidation="False" runat="server" CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "list") %>' />&nbsp;&nbsp;&nbsp;
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                    <asp:Panel ID="pnlCheckItem" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <!--#Include File="inisialisasi_grid.incl.aspx"-->
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="panelAddNewRow" runat="server">
                                        <tr class="rbody">
                                            <td>
                                                <table width="100%">
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtFldCounter" runat="Server" Visible="False"></asp:TextBox>
                                                            <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                width="100%">
                                                                <tr class="rheader">
                                                                    <td class="rheadercol" align="left" height="25">
                                                                        Edit atau Tambah Item Inisialisasi Persediaan
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <table cellspacing="1" cellpadding="1" width="100%">
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    <asp:LinkButton ID="lblFldKdBarang" runat="server" Text="Kode Item" CausesValidation="False"></asp:LinkButton>
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="txtFldKdBarang" runat="server" AutoPostBack="true" Width="100%"
                                                                                        MaxLength="10"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="rfvFldKdBarang" runat="server" ControlToValidate="txtFldKdBarang"
                                                                                        ErrorMessage="KODE" Display="dynamic">** REQUIRED FIELD **</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Nama Item
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="txtFldNmItem" runat="server" Width="100%" MaxLength="50" ReadOnly="True"></asp:TextBox>
                                                                                    <asp:CheckBox ID="chkNonStock" runat="server" Text="NonStock" Enabled="False" Visible="False" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Qty
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="txtFldQtyDist" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="rfvFldQtyDist" runat="server" ControlToValidate="txtFldQtyDist"
                                                                                        ErrorMessage="Qty Distribusi" Display="dynamic">** REQUIRED FIELD **</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Satuan
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="txtSatuan" runat="server" ReadOnly="True" Width="100%" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="rBodyAddNewFld" width="20%">
                                                                                    Faktor
                                                                                </td>
                                                                                <td class="rBodyAddNewFld" width="40%">
                                                                                    <asp:TextBox ID="txtFldFaktor" runat="server" Width="100%" MaxLength="50" ReadOnly="True"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Button ID="btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100"
                                                                                        AccessKey="V"></asp:Button>
                                                                                    <asp:Button ID="btnDone" runat="server" Text="Close" CausesValidation="False" CssClass="sbttn"
                                                                                        Width="100" AccessKey="D"></asp:Button>
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
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <!-- END ADDNEW INISIALISASI -->
                                    <asp:Panel ID="pnlGrid" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="middle" height="25">
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <div style="overflow: auto; width: 100%; height: 350">
                                                                <asp:DataGrid ID="gridInisialisasi" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                    CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                    GridLines="none" AllowPaging="false" PageSize="20" DataKeyField="kdgudang"
                                                                    ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                    <EditItemStyle Font-Bold="false" />
                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                    <Columns>
                                                                        <asp:TemplateColumn>
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                    AlternateText="Delete this item" CommandName="__delete" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn runat="server" HeaderText="Kode Gudang" ItemStyle-HorizontalAlign="Left"
                                                                            HeaderStyle-HorizontalAlign="Left" Visible="False">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdgudang") %>'
                                                                                    ID="_lblKdGudang" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn runat="server" HeaderText="Kode Lokasi" ItemStyle-HorizontalAlign="Left"
                                                                            HeaderStyle-HorizontalAlign="Left" Visible="False">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdlokasi") %>'
                                                                                    ID="_lblKdLokasi" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="kdbarang" runat="server" HeaderText="Kode Item"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                    ID="_lblKdBarang" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama" ItemStyle-HorizontalAlign="Left"
                                                                            HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                    ID="_lblNamaBarang" />
                                                                            </ItemTemplate>
                                                                            <FooterTemplate>
                                                                                <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                    Text="Tambah Data" AccessKey="A" />
                                                                            </FooterTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="qty" runat="server" HeaderText="Qty Inisialisasi"
                                                                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="_lblQty" autopostback="False" runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "qty"),"#,##0.00") %>'
                                                                                    Width="50" />
                                                                            </ItemTemplate>
                                                                            <ItemStyle Width="150px" />
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" ItemStyle-HorizontalAlign="Left"
                                                                            HeaderStyle-HorizontalAlign="Left" Visible="false">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                    ID="_lblSatuan" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan"
                                                                            ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                    ID="_lblnmSatuan" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn SortExpression="posting" runat="server" HeaderText="Posting"
                                                                            ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "posting") %>'
                                                                                    ID="_chkPosting" Enabled="False" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                    </Columns>
                                                                </asp:DataGrid>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlMesage" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol" align="left" height="25">
                                                <asp:Label ID="lblMessage" runat="server" />
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                </table>
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr>
                                        <td align="left">
                                            <p>
                                                <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi.">
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

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

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
            var kdgudang;
            kdgudang = ditrim(document.getElementById('txtKodeGudang').value);

            if (kdgudang == '') {
                document.getElementById('lbtnGudang').focus();
            }
            else {
                //document.getElementById('gridInisialisasi__ctl2__btnAddNewRow').focus();  		
            }

            if (typeof (document.getElementById('txtFldKdBarang')) !== 'undefined') {
                var kdbarang;
                kdbarang = ditrim(document.getElementById('txtFldKdBarang').value);

                if (kdbarang == '') {
                    document.getElementById('lblFldKdBarang').focus();
                    document.getElementById('lblFldKdBarang').select();
                }
                else {
                    document.getElementById('txtFldQtyDist').focus();
                    document.getElementById('txtFldQtyDist').select();
                }
            }
        }
        catch (e) {
        }
    }	
</script>

