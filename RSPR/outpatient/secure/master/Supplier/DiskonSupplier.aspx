<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DiskonSupplier.aspx.vb"
    Inherits="QIS.Web.secure.master.Supplier.DiskonSupplier" %>

<html>
<head>
    <title>Matriks Pemasok - Diskon Pembelian Item</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">

    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>

    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>

    <script language="javascript" src="/qislib/scripts/common/util.js"></script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

</head>
<body ms_positioning="GridLayout">
    <div id="loadingmsg" style="border-right: 1px ridge; border-top: 1px ridge; z-index: 3;
        left: 240px; border-left: 1px ridge; width: 200px; border-bottom: 1px ridge;
        position: absolute; top: 200px; height: 60px; background-color: #eeeeee; display: none;">
        <center>
            <br />
            <br />
            <font face="Verdana" size="1"><b>Loading, Please wait ...</b></font><br />
            <br />
        </center>
    </div>
    <form id="frmCoverageObat" runat="server">
    <table cellspacing="0" cellpadding="5" width="100%" border="0" height="100%">
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
                    <table cellspacing="0" cellpadding="2" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="pnlHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Matriks Pemasok - Diskon Pembelian Item
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <!--BEGIN PERUSAHAAN PANEL-->
                                                            <asp:Panel ID="panelSupplier" runat="server">
                                                                <table width="100%">
                                                                    <tr class="rbody">
                                                                        <td width="20%">
                                                                            <asp:LinkButton ID="lbtnSupplier" runat="server" CausesValidation="False" Text="Perusahaan">Supplier</asp:LinkButton>
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtSupplier" runat="server" AutoPostBack="True"></asp:TextBox>
                                                                            <asp:Label ID="Desc_txtSupplier" runat="server" Font-Bold="True"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RequiredFieldValidator ID="rfvSupplier" runat="server" ControlToValidate="txtSupplier"
                                                                                ErrorMessage="Kode Perusahaan" Display="Dynamic">**
                                                                            </asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="20%">
                                                                            Alamat
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtAlamat" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="20%">
                                                                            Telepon
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtTelepon" runat="server" ReadOnly="True"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="20%">
                                                                            <asp:Button ID="btnAddAll" runat="server" Text="Reset" Width="100" Visible="False">
                                                                            </asp:Button>
                                                                        </td>
                                                                        <td width="20%">
                                                                            <asp:Button ID="btnInsert" runat="server" Text="Update" Width="100" Visible="False">
                                                                            </asp:Button>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Button ID="btnRemove" runat="server" Text="Remove" Width="100" Visible="False">
                                                                            </asp:Button>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <!--END PERUSAHAAN PANEL-->
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- BEGIN ADDNEW OBAT -->
                                                <asp:Panel ID="panelDiskonAddNewRow" runat="server">
                                                    <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                        width="100%">
                                                        <tr class="rheader">
                                                            <td class="rheadercol" align="left" height="25">
                                                                Edit atau Tambah Item Diskon Pembelian
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table cellspacing="1" cellpadding="1" width="100%">
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            <asp:LinkButton ID="lbtnKodeBarang" runat="server" CausesValidation="False" Text="Kode Item"></asp:LinkButton>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtKdBarang" runat="server" AutoPostBack="true" Width="100%" MaxLength="10"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RequiredFieldValidator ID="rfvKdBarang" runat="server" ControlToValidate="txtKdBarang"
                                                                                ErrorMessage="Kode Item" Display="dynamic">**
                                                                            </asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Nama Item
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:Label ID="lblNmItem" runat="server" Width="100%"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="rBodyAddNewFld" width="20%">
                                                                            Diskon
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" width="40%">
                                                                            <asp:TextBox ID="txtDiskon" runat="server" Width="100%" MaxLength="10"></asp:TextBox>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RequiredFieldValidator ID="rfvDiskon" runat="server" ControlToValidate="txtDiskon"
                                                                                ErrorMessage="Diskon" Display="dynamic">** 
                                                                            </asp:RequiredFieldValidator>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RangeValidator ID="rvDiskon" runat="server" ControlToValidate="txtDiskon" ErrorMessage="Diskon"
                                                                                Display="Dynamic" MaximumValue="100.00" MinimumValue="0.00" Type="Double">** Angka melewati batas **
                                                                            </asp:RangeValidator>
                                                                            <asp:CompareValidator ID="cvDiskon" runat="server" ControlToValidate="txtDiskon"
                                                                                ErrorMessage="Diskon" Display="Dynamic" Type="Double" Operator="DataTypeCheck">** Harus diisi dengan angka **
                                                                            </asp:CompareValidator>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="5%">
                                                                            <asp:Button ID="btnAddNewRow" runat="server" Text="Save" CssClass="sbttn" Width="100">
                                                                            </asp:Button>
                                                                            <asp:Button ID="btnDone" runat="server" CausesValidation="False" Text="Close" CssClass="sbttn"
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
                                                <table width="100%" height="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridDiskonSupplier" runat="server" Width="100%" CellPadding="0"
                                                                ShowFooter="True" DataKeyField="kdbarang" Height="100%" GridLines="none"
                                                                BorderWidth="1" BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False">
                                                                <SelectedItemStyle BackColor="CornflowerBlue"></SelectedItemStyle>
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="&lt;img src=/qislib/images/ok.png border=0 align=absmiddle alt='Save changes'&gt;"
                                                                        CancelText="&lt;img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'&gt;"
                                                                        EditText="&lt;img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'&gt;">
                                                                        <ItemStyle HorizontalAlign="Center" Width="26px"></ItemStyle>
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn Visible="False" DataField="kdbarang"></asp:BoundColumn>
                                                                    <asp:TemplateColumn HeaderText="Kode Item">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                ID="_lblKodeBarang" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="Nama Item">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                ID="_lblNmItem" />
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Item" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="Diskon (%)">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "diskon") %>'
                                                                                ID="_lblDiskon" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                                <PagerStyle HorizontalAlign="Right" Mode="NumericPages"></PagerStyle>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID BAHAN BAKU -->
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <table width="100%">
                                    <tr>
                                        <td align="right">
                                            <asp:DataList ID="listSearch" runat="server" RepeatDirection="Horizontal" OnItemCommand="HandleItemSearchCommand">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="linkSearch" CausesValidation="True" runat="server" CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
                                                        Text='<%# DataBinder.Eval(Container.DataItem, "list") %>' />&nbsp;&nbsp;&nbsp;
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                </table>
                                <asp:Panel ID="pnlCheckList" runat="server">
                                    <table width="100%">
                                        <tr>
                                            <td align="right">
                                                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="sbttn" Width="100">
                                                </asp:Button>
                                                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Batal" CssClass="sbttn"
                                                    Width="100"></asp:Button>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- START DATAGRID CHECKLIST ROP -->
                                    <table width="100%">
                                        <tr class="rbody">
                                            <td width="100%" height="100%">
                                                <div style="overflow: auto; width: 100%; height: 400px">
                                                    <asp:DataGrid ID="gridCheckList" runat="server" Width="100%" CellPadding="0" ShowFooter="True"
                                                        DataKeyField="kdbarang" GridLines="none" BorderWidth="1" BorderColor="Gainsboro"
                                                        CellSpacing="0" AutoGenerateColumns="False" EnableViewState="True" AllowPaging="false"
                                                        PageSize="20" AllowSorting="True">
                                                        <HeaderStyle CssClass="gridHeaderStyle" />
                                                        <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                        <EditItemStyle Font-Bold="false" />
                                                        <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                        <Columns>
                                                            <asp:TemplateColumn RUNAT="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkPesan" />
                                                                </ItemTemplate>
                                                                <HeaderTemplate>
                                                                    <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                                </HeaderTemplate>
                                                            </asp:TemplateColumn>
                                                            <asp:TemplateColumn SortExpression="kdBarang" RUNAT="server" HeaderText="Kode Item">
                                                                <ItemTemplate>
                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>'
                                                                        ID="_lblKodeBarang2" />
                                                                </ItemTemplate>
                                                            </asp:TemplateColumn>
                                                            <asp:TemplateColumn SortExpression="nmdesc1" RUNAT="server" HeaderText="Nama Item">
                                                                <ItemTemplate>
                                                                    <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                        ID="_lblNamaBarang" />
                                                                </ItemTemplate>
                                                            </asp:TemplateColumn>
                                                            <asp:TemplateColumn SortExpression="diskon" RUNAT="server" HeaderText="Diskon" HeaderStyle-HorizontalAlign="Center"
                                                                ItemStyle-HorizontalAlign="Right">
                                                                <ItemTemplate>
                                                                    <asp:TextBox runat="server" Style="margin-left: 5; margin-right: 5" BackColor="Transparent"
                                                                        Text='<%# DataBinder.Eval(Container.DataItem, "diskon") %>' ID="_txtDiskon" />
                                                                </ItemTemplate>
                                                            </asp:TemplateColumn>
                                                            <asp:TemplateColumn RUNAT="server" HeaderText="" ItemStyle-HorizontalAlign="Right"
                                                                HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                <ItemTemplate>
                                                                    <asp:RangeValidator ID="rvDiskonList" runat="server" ControlToValidate="_txtDiskon"
                                                                        MaximumValue="100.00" MinimumValue="0.00" Type="Double" ErrorMessage='<%# "Diskon melebihi batas - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                        Display="Dynamic">** 
                                                                    </asp:RangeValidator>
                                                                    <asp:CompareValidator ID="cvDiskonList" runat="server" ControlToValidate="_txtDiskon"
                                                                        Operator="DataTypeCheck" Type="Double" ErrorMessage='<%# "Diskon harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                        Display="Dynamic">** 
                                                                    </asp:CompareValidator>
                                                                </ItemTemplate>
                                                            </asp:TemplateColumn>
                                                        </Columns>
                                                    </asp:DataGrid>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
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
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
