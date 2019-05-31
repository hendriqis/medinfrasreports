<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="QIS.Web.secure.master.MatriksSupplierItem" %>

<html>
<head>
    <title>Matriks Pemasok - Item</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">

    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>

    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>
    
    <script language="javascript" src="/qislib/scripts/common/util.js"></script>

    <script>
        if (document.all) document.all.loadingmsg.style.visibility = 'hidden';
    </script>

    <script>
        if (document.layers) document.loadingmsg.visibility = 'hidden'
    </script>

    <script>
        if (document.getElementById) document.getElementById('loadingmsg').style.visibility = 'hidden'
    </script>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

    <script src='/qislib/scripts/common/common.vbs' language="vbscript"></script>
</head>
<body>
    <form id="frmCoverageObat" runat="server">
    <table cellspacing="0" cellpadding="2" width="100%" height="100%" border="0">
        <div id="loadingmsg" style="border-right: 1px ridge; border-top: 1px ridge; z-index: 3;
            left: 240px; border-left: 1px ridge; width: 200px; border-bottom: 1px ridge;
            position: absolute; top: 200px; height: 60px; background-color: #eeeeee">
            <center>
                <font face="Verdana" size="1"><b>Loading, Please wait ...</b> </font>
            </center>
        </div>
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
                                <table cellspacing="0" cellpadding="2" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Matriks Pemasok - Item
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol">
                                            <asp:Panel ID="pnlHeader" runat="server">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <!--BEGIN PERUSAHAAN PANEL-->
                                                            <asp:Panel ID="panelSupplier" runat="server">
                                                                <table width="100%">
                                                                    <tr class="rbody">
                                                                        <td width="20%">
                                                                            <asp:LinkButton ID="lbtnSupplier" runat="server" CausesValidation="False" Text="Perusahaan">
																						Supplier
                                                                            </asp:LinkButton>
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtSupplier" runat="server" AutoPostBack="True" />
                                                                            <asp:Label ID="Desc_txtSupplier" runat="server" Font-Bold="True" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:RequiredFieldValidator ID="rfvSupplier" runat="server" ControlToValidate="txtSupplier"
                                                                                ErrorMessage="Kode Perusahaan" Display="Dynamic">
																						**
                                                                            </asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="20%">
                                                                            Alamat
                                                                        </td>
                                                                        <td width="40%">
                                                                            <asp:TextBox ID="txtAlamat" runat="server" Width="100%" ReadOnly="True" />
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
                                                                            <asp:TextBox ID="txtTelepon" runat="server" Width="100%" ReadOnly="True" />
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="20%">
                                                                            <asp:Button ID="btnAddAll" runat="server" Text="Reset" Width="100" Visible="False" />
                                                                        </td>
                                                                        <td width="20%">
                                                                            <asp:Button ID="btnInsert" runat="server" Text="Update" Width="100" Visible="False" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Button ID="btnRemove" runat="server" Text="Remove" Width="100" Visible="False" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <!--END PERUSAHAAN PANEL-->
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <!-- START DATAGRID OBAT -->
                                            <table width="100%">
                                                <tr>
                                                    <td width="100%" height="100%">
                                                        <asp:Panel ID="pnlMatriksSupplier" runat="server">
                                                            <asp:DataGrid ID="gridMatriksSupplier" runat="server" Width="100%" CellPadding="0"
                                                                ShowFooter="True" DataKeyField="kdBarang" Height="100%" GridLines="none"
                                                                BorderWidth="1" BorderColor="Gainsboro" CellSpacing="0" AutoGenerateColumns="False">
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
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
                                                                    <asp:BoundColumn Visible="False" DataField="kdBarang" />
                                                                    <asp:TemplateColumn HeaderText="Kode Item">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>'
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
                                                                                Text="Tambah Item / Obat..." AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="Satuan">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "SatuanAlt") %>'
                                                                                ID="_lblSatuanAlt" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="Harga" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"), "#,##0.00") %>'
                                                                                ID="_lblHarga" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="Diskon [%]" HeaderStyle-HorizontalAlign="Center"
                                                                        ItemStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "diskon") %>'
                                                                                ID="_lblDiskon" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="PPN" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Style="margin-left: 5; margin-right: 5" Enabled="False"
                                                                                Checked='<%# DataBinder.Eval(Container.DataItem, "fPPN") %>' ID="_chkPPN" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="Updater">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "UsrUpdate") %>'
                                                                                ID="_lblUsrUpdate" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="Tgl. Update">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# Format(DataBinder.Eval(Container.DataItem, "tglupdate"), "dd-MM-yyyy") %>'
                                                                                ID="_lblTglUpdate" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                                <PagerStyle HorizontalAlign="Right" Mode="NumericPages"></PagerStyle>
                                                            </asp:DataGrid>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                            <!-- END DATAGRID BAHAN BAKU -->
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td>
                                            <asp:Panel ID="pnlCheckList" runat="server">
                                                <table width="100%">
                                                    <tr>
                                                        <td align="right">
                                                            <asp:DataList ID="listSearch" runat="server" RepeatDirection="Horizontal" OnItemCommand="HandleItemSearchCommand">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="linkSearch" CausesValidation="True" runat="server" CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
                                                                        Text='<%# DataBinder.Eval(Container.DataItem, "list") %>' />&nbsp;&nbsp;&nbsp;
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                            <asp:Label ID="lblSelectedSearchList" runat="server" ReadOnly="True" Visible="false" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table width="100%">
                                                    <tr>
                                                        <td align="right" width="10%">
                                                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="sbttn" Width="100" />
                                                            <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Close" Width="100" CssClass="sbttn" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- START DATAGRID CHECKLIST ROP -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <div style="overflow: auto; width: 100%; height: 400px">
                                                                <asp:DataGrid ID="gridCheckList" runat="server" Width="100%" CellPadding="0" ShowFooter="True"
                                                                    DataKeyField="kdBarang" GridLines="none" BorderWidth="1" BorderColor="Gainsboro"
                                                                    CellSpacing="0" AutoGenerateColumns="False" EnableViewState="True" AllowPaging="True"
                                                                    PageSize="20">
                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                    <EditItemStyle Font-Bold="false" />
                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" Position="TopAndBottom" />
                                                                    <Columns>
                                                                        <asp:TemplateColumn RUNAT="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkPesan" />
                                                                            </ItemTemplate>
                                                                            <HeaderTemplate>
                                                                                <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                                            </HeaderTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn RUNAT="server" HeaderText="Kode Item">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>'
                                                                                    ID="_lblKodeBarang2" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn RUNAT="server" HeaderText="Nama Item">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                    ID="_lblNamaBarang" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="Satuan">
                                                                            <ItemTemplate>
                                                                                <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "SatuanAlt") %>'
                                                                                    ID="_lblSatuanAlt" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="Harga">
                                                                            <ItemTemplate>
                                                                                <asp:TextBox runat="server" Style="margin-left: 5; margin-right: 5; text-align: right"
                                                                                    Text="0.00" ID="_txtHarga" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="Diskon [%]">
                                                                            <ItemTemplate>
                                                                                <asp:TextBox runat="server" Style="margin-left: 5; margin-right: 5; text-align: right"
                                                                                    Text="0" ID="_txtDiskon" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="PPN">
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox runat="server" Style="margin-left: 5; margin-right: 5" Checked="False"
                                                                                    ID="_chkPPN" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                    </Columns>
                                                                </asp:DataGrid>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td>
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
