<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../Incl/calendarModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="gudang.aspx.vb" Inherits="QIS.Web.secure.master.GudangLokasi.gudang" %>

<html>
<head>
    <title>Gudang dan Lokasi</title>
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
    <table border="0" width="100%" cellspacing="0" cellpadding="2" height="100%">
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
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Gudang dan Lokasi
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
                                                                        <asp:LinkButton ID="lbtnKodeGudang" CausesValidation="False" Text="Kode Gudang" runat="server" />
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtKodeGudang" runat="server" MaxLength="5" Width="100%" AutoPostBack="true" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvKode" runat="server" Display="dynamic" ErrorMessage="Kode Gudang"
                                                                            ControlToValidate="txtKodeGudang">**</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Nama Gudang
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtNamaGudang" runat="server" MaxLength="50" Width="100%" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:RequiredFieldValidator ID="rfvNama" runat="server" Display="dynamic" ErrorMessage="Nama Gudang"
                                                                            ControlToValidate="txtNamaGudang">**</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                        Alamat
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtAlamat" runat="server" MaxLength="100" Width="100%" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="30%">
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:CheckBox runat="server" ID="chkDiscontinue" Text="Discontinue" />
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
                                                                    <td width="20%">
                                                                        Telepon
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtTelepon" runat="server" MaxLength="20" Width="100%" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr style="display:none">
                                                                    <td width="20%">
                                                                        Kode Account
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtKodeAccount" runat="server" MaxLength="10" Width="100%" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr style="display:none" >
                                                                    <td width="20%">
                                                                        Amount Gudang
                                                                    </td>
                                                                    <td width="40%">
                                                                        <asp:TextBox ID="txtAmmGudang" runat="server" MaxLength="10" Width="100%" />
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
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
                                                <!-- BEGIN ADDNEW LOKASI -->
                                                <asp:Panel ID="panelLokasiAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table cellspacing="0" cellpadding="5" width="100%" class="rBodyAddNew" bordercolordark="#98AAB1">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Lokasi
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table width="100%" cellpadding="1" cellspacing="1">
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Kode Lokasi
                                                                                    </td>
                                                                                    <td width="40%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Lokasi_AddNewRow_txtKodeLokasi" runat="server" MaxLength="5" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvLokasi_AddNewRow_txtKodeLokasi" runat="server"
                                                                                            ControlToValidate="Lokasi_AddNewRow_txtKodeLokasi" ErrorMessage="Kode Lokasi"
                                                                                            Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Nama Lokasi
                                                                                    </td>
                                                                                    <td width="40%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Lokasi_AddNewRow_txtNamaLokasi" runat="server" MaxLength="25" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        <asp:RequiredFieldValidator ID="rfvLokasi_AddNewRow_txtNamaLokasi" runat="server"
                                                                                            ControlToValidate="Lokasi_AddNewRow_txtNamaLokasi" ErrorMessage="Nama Lokasi"
                                                                                            Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Lead Time ROD Min
                                                                                    </td>
                                                                                    <td width="40%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Lokasi_AddNewRow_txtLeadtime" runat="server" MaxLength="25" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Lead Time ROD Max
                                                                                    </td>
                                                                                    <td width="40%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Lokasi_AddNewRow_txtLeadtimeMax" runat="server" MaxLength="25" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Tgl Mulai
                                                                                    </td>
                                                                                    <td width="40%" class="rBodyAddNewFld">
                                                                                        <asp:TextBox ID="Lokasi_AddNewRow_txtTglMulai" runat="server" MaxLength="10" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                        Status Lokasi
                                                                                    </td>
                                                                                    <td width="40%" class="rBodyAddNewFld">
                                                                                        <asp:DropDownList ID="Lokasi_AddNewRow_ddlStatusLokasi" runat="server" Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="20%" class="rBodyAddNewFld">
                                                                                    </td>
                                                                                    <td width="40%" class="rBodyAddNewFld">
                                                                                        <asp:CheckBox ID="Lokasi_AddNewRow_chkKonsinyasi" runat="server" Text="Konsinyasi"
                                                                                            Width="100%" Visible="False" />
                                                                                        <asp:CheckBox ID="Lokasi_AddNewRow_chkTemporari" runat="server" Text="Temporary"
                                                                                            Width="100%" Visible="False" />
                                                                                        <asp:CheckBox ID="Lokasi_AddNewRow_chkDiscontinue" runat="server" Text="Discontinue"
                                                                                            Width="100%" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="Lokasi_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn"
                                                                                            Width="100" />
                                                                                        <asp:Button ID="Lokasi_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                            CssClass="sbttn" Width="100" />
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
                                                <!-- BEGIN ADDNEW LOKASI -->
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td>
                                                <!-- START DATAGRID LOKASI -->
                                                <table width="100%">
                                                    <tr>
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridLokasi" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                                Width="100%" DataKeyField="kdlokasi" ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                alt="Delete this item" CommandName="__delete" style="margin-top:2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <input type="button" onclick="javascript:hwnd=window.open('../ROP/rop.aspx?g=<%# DataBinder.Eval(Container.DataItem, "kdGudang") %>&l=<%# DataBinder.Eval(Container.DataItem, "kdLokasi") %>','_ROP', 'height=550,width=800, status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=yes');hwnd.focus();"
                                                                                value="R.O.P" class="sbttn" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="kdgudang" Visible="False" />
                                                                    <asp:BoundColumn DataField="kdlokasi" Visible="False" />
                                                                    <asp:TemplateColumn SortExpression="kdLokasi" runat="server" HeaderText="Kode Lokasi">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdLokasi") %>'
                                                                                ID="_lblKodeLokasi" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmLokasi" runat="server" HeaderText="Nama Lokasi">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmLokasi") %>'
                                                                                ID="_lblNamaLokasi" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox runat="server" ID="__txtNmLokasi" TabIndex="0" BorderWidth="1" BorderColor="DarkGray"
                                                                                Width="100%" Text='<%# trim(DataBinder.Eval(Container.DataItem, "nmLokasi")) %>' />
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" Enabled='<%# IsLastPageDataGrid() %>'
                                                                                CommandName="__AddNewRow" Text="Tambah Lokasi" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="tglMulai" runat="server" HeaderText="Tgl Mulai"
                                                                        HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# format(DataBinder.Eval(Container.DataItem, "tglMulai"), "dd-MM-yyyy") %>'
                                                                                ID="_lblTglMulai" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox runat="server" ID="__txtTglMulai" TabIndex="0" BorderWidth="1" BorderColor="DarkGray"
                                                                                Width="100%" Text='<%# DataBinder.Eval(Container.DataItem, "tglMulai") %>' />
                                                                        </EditItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Status" HeaderStyle-HorizontalAlign="Left"
                                                                        Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdstatus") %>'
                                                                                ID="_lblKodeStatus" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox runat="server" ID="__txtKodeStatus" TabIndex="0" BorderWidth="1" BorderColor="DarkGray"
                                                                                Width="100%" Text='<%# DataBinder.Eval(Container.DataItem, "kdstatus") %>' />
                                                                        </EditItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmstatus" runat="server" HeaderText="Status"
                                                                        HeaderStyle-HorizontalAlign="Left">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmstatus") %>'
                                                                                ID="_lblNamaStatus" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="KonSny" HeaderStyle-HorizontalAlign="Center"
                                                                        Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "konsinyasi") %>'
                                                                                ID="_chkKonsinyasi" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "konsinyasi") %>'
                                                                                ID="__chkKonsinyasi" />
                                                                        </EditItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Temp" HeaderStyle-HorizontalAlign="Center"
                                                                        Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "temporari") %>'
                                                                                ID="_chkTemporary" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "temporari") %>'
                                                                                ID="__chkTemporary" />
                                                                        </EditItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="leadtime" runat="server" HeaderText="Lead Time ROD Min">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "leadtime") %>'
                                                                                ID="_lblleadtime" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox runat="server" ID="__txtleadtime" TabIndex="0" BorderWidth="1" BorderColor="DarkGray"
                                                                                Width="100%" Text='<%# trim(DataBinder.Eval(Container.DataItem, "leadtime")) %>' />
                                                                        </EditItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="leadtimemax" runat="server" HeaderText="Lead Time ROD Max">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "leadtimemax") %>'
                                                                                ID="_lblleadtimemax" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox runat="server" ID="__txtleadtimemax" TabIndex="0" BorderWidth="1" BorderColor="DarkGray"
                                                                                Width="100%" Text='<%# trim(DataBinder.Eval(Container.DataItem, "leadtimemax")) %>' />
                                                                        </EditItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="discontinue" runat="server" HeaderText="Discontinue"
                                                                        HeaderStyle-HorizontalAlign="Center">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Enabled="false" Checked='<%# DataBinder.Eval(Container.DataItem, "discontinue") %>'
                                                                                ID="_chkDiscontinue" />
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "discontinue") %>'
                                                                                ID="__chkDiscontinue" />
                                                                        </EditItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID LOKASI -->
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
