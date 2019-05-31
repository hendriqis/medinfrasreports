<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="distribusi.aspx.vb" Inherits="QIS.Web.secure.transaksi.Farmasi.DistribusiBarang.Distribusi" %>

<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../incl/calendarModule2.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<html>
<head>
    <title>Distribusi Barang</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR" />
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE" />
    <meta content="JavaScript" name="vs_defaultClientScript" />
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <link href="/qislib/calendar/calWebStyles_V40.css" rel="stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <style type="text/css">
        .transparent
        {
            filter: alpha(opacity=20);
            background-color: Transparent;
            display: none;
            width: 170;
            height: 100;
            position: absolute;
            color: white; /*border: 1 green solid;*/
        }
    </style>
</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="frmDistribusi" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
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
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Distribusi Barang
                                        </td>
                                    </tr>
                                    <asp:Panel ID="panelHeader" runat="server">
                                        <tr class="rbody">
                                            <td class="rbodycol">
                                                <table width="100%">
                                                    <tr>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:LinkButton ID="lbtnNodistribusi" runat="server" Text="No. Distribusi" CausesValidation="False"></asp:LinkButton>
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtNodistribusi" runat="server" AutoPostBack="true" Width="95%" CssClass="txtautogenerate"
                                                                            MaxLength="10"></asp:TextBox>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        Tanggal
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTanggal" runat="server" ReadOnly="true" Width="95%"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="20%">
                                                                        Tipe Distribusi
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtTipe" runat="server" Width="95%" ReadOnly="True" Visible="False"></asp:TextBox>
                                                                        <asp:DropDownList ID="ddlTipe" runat="server" Width="95%" ReadOnly="True" Enabled="False" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="20%">
                                                                        <asp:CheckBox ID="chkPosting" runat="server" Text="Posting" Enabled="False" Visible="False">
                                                                        </asp:CheckBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <table border="0" width="100%" cellspacing="1" cellpadding="1">
                                                    <tr>
                                                        <td class="rBodyInfo" width="99%" valign="top">
                                                            <table width="100%" bgcolor="#EDF4FA" cellspacing="1" cellpadding="0">
                                                                <tr>
                                                                    <td valign="top" width="50%">
                                                                        <table width="100%" cellspacing="0">
                                                                            <tr>
                                                                                <td colspan="2" class="rheaderexpable" style="text-align: center; height: 34px; font-size: 12pt;">
                                                                                    Sumber
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="20%">
                                                                                    <asp:LinkButton ID="lBtnGudang1" runat="server" Text="Gudang" CausesValidation="False"></asp:LinkButton>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtGudang1" runat="server" AutoPostBack="true" Width="24%" MaxLength="5"></asp:TextBox>
                                                                                    <asp:TextBox ID="lblGudang1" runat="server" Width="70%" ReadOnly="true" />
                                                                                    <asp:RequiredFieldValidator ID="rfvGudang1" runat="server" Display="dynamic" ErrorMessage="Gudang Asal"
                                                                                        ControlToValidate="txtGudang1">**</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="20%">
                                                                                    <asp:Label ID="lblLokasi1" Text="Lokasi" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:DropDownList ID="ddlLokasi1" runat="server" Width="95%" AutoPostBack="False">
                                                                                    </asp:DropDownList>
                                                                                    <asp:RequiredFieldValidator ID="rfvLokasi1" runat="server" Display="dynamic" ErrorMessage="Lokasi Asal"
                                                                                        ControlToValidate="ddlLokasi1">**</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="20%">
                                                                                    Keterangan
                                                                                </td>
                                                                                <td>
                                                                                    <asp:DropDownList ID="ddlKeterangan" runat="server" Width="95%">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                    <td valign="top">
                                                                        <table width="100%" cellspacing="0">
                                                                            <tr>
                                                                                <td colspan="2" class="rheaderexpable" style="text-align: center; height: 34px;">
                                                                                    <img src="/qislib/images/right.png" border="0" align="absmiddle" />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                    <td valign="top" width="50%">
                                                                        <table width="100%" cellspacing="0">
                                                                            <tr>
                                                                                <td colspan="2" class="rheaderexpable" style="text-align: center; height: 34px; font-size: 12pt;">
                                                                                    Tujuan
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="20%">
                                                                                    <asp:LinkButton ID="lBtnGudang2" runat="server" Text="Gudang" CausesValidation="False"></asp:LinkButton>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txtGudang2" runat="server" AutoPostBack="true" Width="24%" MaxLength="5"></asp:TextBox>
                                                                                    <asp:TextBox ID="lblGudang2" runat="server" Width="70%" ReadOnly="true" />
                                                                                    <asp:RequiredFieldValidator ID="rfvGudang2" runat="server" Display="dynamic" ErrorMessage="Gudang Tujuan"
                                                                                        ControlToValidate="txtGudang2">**</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="20%">
                                                                                    <asp:Label ID="lblLokasi2" Text="Lokasi" runat="server"></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:DropDownList ID="ddlLokasi2" runat="server" Width="95%">
                                                                                    </asp:DropDownList>
                                                                                    <asp:RequiredFieldValidator ID="rfvLokasi2" runat="server" Display="dynamic" ErrorMessage="Lokasi Tujuan"
                                                                                        ControlToValidate="ddlLokasi2">**</asp:RequiredFieldValidator>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- BEGIN ADDNEW DISTRIBUSI -->
                                                <asp:Panel ID="panelDistribusiAddNewRow" runat="server">
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="txtFldCounter" runat="Server" Visible="False"></asp:TextBox>
                                                                <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                                                    width="100%">
                                                                    <tr class="rheader">
                                                                        <td class="rheadercol" align="left" height="25">
                                                                            Edit atau Tambah Item Distribusi Barang
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lblFldKdBarang" runat="server" Text="Kode Item"></asp:LinkButton>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldKdBarang" runat="server" AutoPostBack="true" Width="100%"
                                                                                            MaxLength="10"></asp:TextBox>
                                                                                    </td>
                                                                                    <td>
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
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Qty Distribusi
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldQtyDist" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="AddNewRow_QtyStock" runat="server" Width="100%" Text="0.00" Visible="False" />
                                                                                        <asp:Label class="error" ID="lblError" runat="server" Width="100%" />
                                                                                        <asp:RequiredFieldValidator ID="rfvFldQtyDist" runat="server" ControlToValidate="txtFldQtyDist"
                                                                                            ErrorMessage="Qty Distribusi" Display="dynamic">** REQUIRED FIELD **</asp:RequiredFieldValidator>
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:CompareValidator runat="server" ID="cvFld" Type="Double" Operator="DataTypeCheck"
                                                                                            ControlToValidate="txtFldQtyDist" Display="Dynamic" ErrorMessage="Qty Distribusi harus angka" />**
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        Satuan
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:DropDownList ID="ddlSatuan" runat="server" Width="100%" AutoPostBack="True" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
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
                                                                                <tr>
                                                                                    <td class="rBodyAddNewFld" width="20%">
                                                                                        <asp:LinkButton ID="lbtnExpired" runat="server" Text="Expired" />
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld" width="40%">
                                                                                        <asp:TextBox ID="txtFldExpired" runat="server" MaxLength="10" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                    <td class="rBodyAddNewFld">
                                                                                        &nbsp;
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <table width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="DistribusiDt_btnAddNewRow" runat="server" Text="Save" CssClass="sbttn"
                                                                                            Width="100" Height="24" AccessKey="V"></asp:Button>
                                                                                        <asp:Button ID="DistribusiDt_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                            CssClass="sbttn" Width="100" Height="24" AccessKey="D"></asp:Button>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr valign="bottom" bgcolor="white">
                                                                        <td align="left" height="25">
                                                                            <p align="right">
                                                                                Data yang sudah ada</p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                                <!-- END ADDNEW DISTRIBUSI -->
                                                <!-- START DATAGRID DISTRIBUSI -->
                                                <table width="100%">
                                                    <tr class="rbody">
                                                        <td width="100%" height="100%">
                                                            <asp:DataGrid ID="gridDistribusiDt" runat="server" Width="100%" CellPadding="0" ShowFooter="True"
                                                                DataKeyField="counter" Height="100%" GridLines="none" BorderWidth="1" BorderColor="Gainsboro"
                                                                CellSpacing="0" AutoGenerateColumns="False" AllowSorting="True">
                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                <EditItemStyle Font-Bold="false" />
                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                <Columns>
                                                                    <asp:EditCommandColumn runat="server" EditText="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>"
                                                                        UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                    </asp:EditCommandColumn>
                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                AlternateText="Delete this item" CommandName="__delete" Style="margin-top: 2" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:BoundColumn DataField="nodistribusi" Visible="False" />
                                                                    <asp:BoundColumn DataField="counter" Visible="False" />
                                                                    <asp:TemplateColumn runat="server" HeaderText="nodistribusi" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nodistribusi") %>'
                                                                                ID="_lblNodistribusi" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="counter" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>'
                                                                                ID="_lblCounter" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="reorder" runat="server" HeaderText="ReOrder"
                                                                        Visible="True">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "reorder") %>'
                                                                                Enabled="False" ID="_chkReorder" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="NmDesc1" runat="server" HeaderText="Item">
                                                                        <ItemTemplate>
                                                                            <table>
                                                                                <tr>
                                                                                    <td colspan="3" style="color: #000000;">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "NmDesc1") %>'
                                                                                            ID="_lblNmItem" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="txtweak">
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>'
                                                                                            ID="_lblKodeBarang" />
                                                                                    </td>
                                                                                    <td class="txtweak" style="font-style: italic; text-align: right; width: 60px;">
                                                                                        Catalog No.
                                                                                    </td>
                                                                                    <td class="txtweak">
                                                                                        <%# DataBinder.Eval(Container.DataItem, "NmDesc2") %>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnAddNewRow" CausesValidation="False" CommandName="_AddNewRow"
                                                                                Text="Tambah Data" AccessKey="A" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="QtyMinta" runat="server" HeaderText="Qty Minta">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "QtyMinta") %>'
                                                                                ID="_lblQtyMinta" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="Qty" runat="server" HeaderText="Qty Distribusi">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>'
                                                                                ID="_lblQtyDist" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="satuan" runat="server" HeaderText="Satuan" Visible="false">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>'
                                                                                ID="_lblSatuan" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="nmsatuan" runat="server" HeaderText="Satuan">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>'
                                                                                ID="_lblnmSatuan" />
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:LinkButton runat="server" ID="_btnQuickPicks" CausesValidation="False" CommandName="_QuickPicks"
                                                                                Text="Quick Picks" AccessKey="Q" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Faktor" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>'
                                                                                ID="_lblFaktor" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn SortExpression="usrupdate" runat="server" HeaderText="Petugas"
                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "usrupdate") %>'
                                                                                ID="_lblPetugas" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn runat="server" HeaderText="Expired" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "expired") %>'
                                                                                ID="_lblExpired" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="txtweakinfo">
                                                            Tombol Pintas: [Alt+A]=Tambah Data | [Alt+Q]=Quick Picks | [Alt+V]=Save | [Alt+D]=Close
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- END DATAGRID DISTRIBUSI -->
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
                                                <!-- Begin Related Links -->
                                                <table border="0" width="100%" cellspacing="0" cellpadding="1" style="display: none;">
                                                    <tr>
                                                        <td class="rBodyInfo" width="99%" valign="top">
                                                            <table width="100%">
                                                                <tr class="rheaderexpable">
                                                                    <td align="left" height="10" valign="middle">
                                                                        <img style="cursor: hand" onclick="javascript:if (RelatedLinkDiv.style.display == '') {RelatedLinkDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { RelatedLinkDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                                            alt="Collapse/Expand" src="/qislib/images/collapse.png" align="absmiddle" />
                                                                        Quick Menu:
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <div id="RelatedLinkDiv" style="overflow: auto; width: 100%;">
                                                                <table width="100%" bgcolor="MintCream" bgcolor="#b0c7cb" cellspacing="10" cellpadding="0">
                                                                    <tr>
                                                                        <td width="50%" id="rbikd">
                                                                            <p>
                                                                                <font class="txtstrong">Get Distribusi Item</font>
                                                                                <br />
                                                                                Input Data Distribusi item antar gudang.
                                                                            </p>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Button ID="btnCLDistribusi" runat="server" onmouseover="rbikd.style.backgroundColor='#ffd27a'"
                                                                                onmouseout="rbikd.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                                                CausesValidation="False" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr valign="top" style="display: none">
                                                                        <td width="50%" id="rbiks">
                                                                            <p>
                                                                                <font class="txtstrong">Gudang & Lokasi</font>
                                                                                <br />
                                                                                Input Data Gudang & Lokasi Penyimpanan barang.
                                                                            </p>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Button ID="btnGudang" runat="server" onmouseover="rbiks.style.backgroundColor='#ffd27a'"
                                                                                onmouseout="rbiks.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn"
                                                                                CausesValidation="False" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr valign="top" style="display: none">
                                                                        <td width="50%" id="rbisf">
                                                                            <p>
                                                                                <font class="txtstrong">Standard Field</font>
                                                                                <br />
                                                                                Update Data Standar; yang dapat di-update: GROUP, KELOMPOK, TYPE, SATUAN
                                                                            </p>
                                                                        </td>
                                                                        <td align="left">
                                                                            <asp:Button ID="btnStandardField" onmouseover="rbisf.style.backgroundColor='#ffd27a'"
                                                                                onmouseout="rbisf.style.backgroundColor='MintCream'" runat="server" Text="Go..."
                                                                                CssClass="sbttn" CausesValidation="False" />
                                                                        </td>
                                                                    </tr>                                                                    
                                                                </table>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <!-- End Related Links -->
                                            </td>
                                        </tr>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelCLDistribusi" runat="server">
                                        <!--#include file="Distribusi_CheckList_Grid.incl.aspx" -->

                                        <script language="javascript">
                                            function ShowPosting() {
                                                if (typeof (Popup) !== 'undefined') {
                                                    /*x = event.clientX + document.body.scrollLeft; */
                                                    var lebar;
                                                    var tinggi;
                                                    tinggi = delpx(Popup.currentStyle.height);
                                                    lebar = delpx(Popup.currentStyle.width);
                                                    var x = (screen.availWidth - lebar) / 2;
                                                    var y = (screen.availHeight - tinggi) / 2;
                                                    /* get the mouse left position */
                                                    /*y = event.clientY + document.body.scrollTop + 10; */
                                                    /* get the mouse top position  */
                                                    Popup.style.display = "block";
                                                    /* display the pop-up */
                                                    Popup.style.left = x;
                                                    /* set the pop-up's left */
                                                    Popup.style.top = y;
                                                    /* set the pop-up's top */
                                                }
                                            }	
                                        </script>

                                        <script src='/qislib/scripts/common/util.js' language="javascript"></script>

                                    </asp:Panel>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakDistribusiBarang" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>Cetak Bukti Distribusi Barang</div>
            <div class='qmdescription'>Cetak Bukti Distribusi Barang.</div>
        </div>
    </div>--%>
    <div id="divRightPanelTasksContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCLDistribusi2" runat="server" Text ="Go" CssClass="sbttn" CausesValidation="false" />
            <div class='qmtitle'>Get Distribusi Item</div>
            <div class='qmdescription'>Input data distribusi item</div>
        </div>
    </div>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkRincianTransaksi" Text="Cetak Bukti Distribusi Barang" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>

    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>

    <script language="javascript" src="/qislib/scripts/common/common.js"></script>

</body>
</html>
<!--
<script>
	if (document.all) document.all.loadingmsg.style.visibility='hidden';
</script>
<script>
	if (document.layers) document.loadingmsg.visibility='hidden'
</script>
<script>
	if (document.getElementById) document.getElementById('loadingmsg').style.visibility='hidden'
</script>
<script language="vbscript">
Public Function ditrim(ByVal x)
	ditrim = Trim(x)			
End Function			
</script>
-->

<script language="javascript">
    function fokus() {
        try {
            var kdbarang;
            kdbarang = document.getElementById('txtFldKdBarang').value;
            kdbarang = ditrim(kdbarang);
            if (kdbarang == '') {
                document.getElementById('lblFldKdBarang').focus();
                document.getElementById('lblFldKdBarang').select();
            }
            else {
                document.getElementById('txtFldQtyDist').focus();
                document.getElementById('txtFldQtyDist').select();
            }
        }
        catch (e) {
        }
    }
</script>

