<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="rop.aspx.vb" Inherits="QIS.Web.secure.master.ROP.rop" %>

<html>
<head>
    <title>Re-Order Point [ROP]</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

    <script language="javascript">
        function center() {
            var x = (screen.availWidth - 800) / 2;
            var y = (screen.availHeight - 600) / 2;
            self.resizeTo(800, 600);
            self.moveTo(x, y);
        }

        if (document.all) {
            document.onkeydown = function() {
                var key_f5 = 116; // 116 = F5          
                if (key_f5 == event.keyCode) {
                    event.keyCode = 0;
                    return false;
                    // alert ("To refresh this page, please click open or save button.");
                }
                else {
                    return true;
                }

            }
        }

        function dlgDeleteRecordInGrid() {
            if (!confirm('Anda yakin hapus data ini ?')) return false;
            return true
        }		
    </script>

</head>
<div id="loadingmsg" style="position: absolute; z-index: 3; left: 240; top: 200;
    width: 200; height: 60; border-width: 1; border-style: ridge; background-color: #eeeeee">
    <center>
        <br />
        <br />
        <img src="/qislib/images/cursor_hourglas.gif"><font face='Verdana' size="1">Loading,
            Please wait ...</font><br />
        <br />
    </center>
</div>
<body onload="center()">
    <form id="frmROP" runat="server">
    <table cellspacing="5" cellpadding="0" width="100%" border="0">
        <tr>
            <td align="left">
                <table cellspacing="0" cellpadding="5" width="100%">
                    <tr class="rheader">
                        <td class="rheadercol" align="left" height="25">
                            Re-Order Point [ROP]
                        </td>
                    </tr>
                    <tr class="rbody">
                        <td class="rbodycol">
                            <table width="100%">
                                <tr>
                                    <td width="50%" valign="top">
                                        <table width="100%">
                                            <tr>
                                                <td width="20%">
                                                    Gudang:
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblGudang" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="20%">
                                                    Lokasi:
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblLokasi" />
                                                </td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr class="rheader">
                                                <td class="rheadercol" align="left" height="25">
                                                    Edit atau Tambah Data ROP per Gudang dan Lokasi
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:DataList ID="listSearch" runat="server" RepeatDirection="Horizontal" OnItemCommand="HandleItemSearchCommand">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="linkSearch" CausesValidation="False" runat="server" CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
                                                                Text='<%# DataBinder.Eval(Container.DataItem, "list") %>' />&nbsp;&nbsp;&nbsp;
                                                            </asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                    <asp:Label ID="lblSelectedSearchList" runat="server" ReadOnly="True" Visible="false" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="100%">
                                                    <asp:Panel ID="pnlHeader" runat="server">
                                                        <div style="overflow: auto; width: 100%; height: 365">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="100%">
                                                                        <!-- BEGIN ADDNEW ROP -->
                                                                        <asp:Panel ID="panelROPAddNewRow" runat="server">
                                                                            <table cellspacing="0" cellpadding="5" width="100%" class="rBodyAddNew" bordercolordark="#98AAB1">
                                                                                <tr>
                                                                                    <td>
                                                                                        <table width="100%" cellpadding="1" cellspacing="1">
                                                                                            <tr>
                                                                                                <td width="20%" class="rBodyAddNewFld">
                                                                                                    <asp:LinkButton ID="lbtnKodeBarang" CausesValidation="False" Text="Kode Item" runat="server" />
                                                                                                </td>
                                                                                                <td width="40%" class="rBodyAddNewFld">
                                                                                                    <asp:TextBox ID="ROP_AddNewRow_txtKodeBarang" runat="server" MaxLength="10" AutoPostBack="True"
                                                                                                        Width="100%" />
                                                                                                </td>
                                                                                                <td class="rBodyAddNewFld">
                                                                                                    <asp:RequiredFieldValidator ID="rfvROP_AddNewRow_txtKodeBarang" runat="server" ControlToValidate="ROP_AddNewRow_txtKodeBarang"
                                                                                                        ErrorMessage="Kode Item" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="20%" class="rBodyAddNewFld">
                                                                                                    Nama Item
                                                                                                </td>
                                                                                                <td width="40%" class="rBodyAddNewFld">
                                                                                                    <asp:TextBox ID="ROP_AddNewRow_txtNamaBarang" runat="server" MaxLength="25" ReadOnly="True"
                                                                                                        BackColor="Transparent" BorderStyle="None" Width="100%" />
                                                                                                </td>
                                                                                                <td class="rBodyAddNewFld">
                                                                                                    <asp:RequiredFieldValidator ID="rfvLokasi_AddNewRow_txtNamaBarang" runat="server"
                                                                                                        ControlToValidate="ROP_AddNewRow_txtNamaBarang" ErrorMessage="Nama Item" Display="dynamic">**</asp:RequiredFieldValidator>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="20%" class="rBodyAddNewFld">
                                                                                                    Stock Minimum
                                                                                                </td>
                                                                                                <td width="40%" class="rBodyAddNewFld">
                                                                                                    <asp:TextBox ID="ROP_AddNewRow_txtStockMin" runat="server" Text="0" Width="100%" />
                                                                                                </td>
                                                                                                <td class="rBodyAddNewFld">
                                                                                                    <asp:CompareValidator ID="cvStockMin1" runat="server" ControlToValidate="ROP_AddNewRow_txtStockMin"
                                                                                                        Operator="DataTypeCheck" Type="Double" ErrorMessage="Stock Minimum harus diisi dengan angka"
                                                                                                        Display="Dynamic">** 
                                                                                                    </asp:CompareValidator>
                                                                                                    <asp:CompareValidator ID="cvStockRange" runat="server" ControlToValidate="ROP_AddNewRow_txtStockMin"
                                                                                                        ControlToCompare="ROP_AddNewRow_txtStockMax" Type="Double" Display="Dynamic"
                                                                                                        Operator="LessThanEqual" ErrorMessage="Stock Minimum Harus lebih kecil dari stock maksimum">**
                                                                                                    </asp:CompareValidator>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td width="20%" class="rBodyAddNewFld">
                                                                                                    Stock Maximum
                                                                                                </td>
                                                                                                <td width="40%" class="rBodyAddNewFld">
                                                                                                    <asp:TextBox ID="ROP_AddNewRow_txtStockMax" runat="server" Text="0" Width="100%" />
                                                                                                </td>
                                                                                                <td class="rBodyAddNewFld">
                                                                                                    <asp:CompareValidator ID="cvStockMax" runat="server" ControlToValidate="ROP_AddNewRow_txtStockMax"
                                                                                                        ValueToCompare="0" Type="Double" Display="Dynamic" Operator="GreaterThan" ErrorMessage="Stock Maksimum Harus lebih besar dari 0">**
                                                                                                    </asp:CompareValidator>
                                                                                                    <asp:CompareValidator ID="cvStockMax1" runat="server" ControlToValidate="ROP_AddNewRow_txtStockMax"
                                                                                                        Operator="DataTypeCheck" Type="Double" ErrorMessage="Stock Maksimum harus diisi dengan angka"
                                                                                                        Display="Dynamic">** 
                                                                                                    </asp:CompareValidator>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                        <table width="100%">
                                                                                            <tr>
                                                                                                <td width="5%">
                                                                                                    <asp:Button ID="ROP_btnAddNewRow" runat="server" Text="Save" Width="100" CssClass="sbttn"></asp:Button>
                                                                                                    <asp:Button ID="ROP_btnDone" runat="server" Text="Close" CausesValidation="False"
                                                                                                        CssClass="sbttn" Width="100"></asp:Button>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr bgcolor="White" valign="bottom">
                                                                                    <td align="left" height="25" style="display: none">
                                                                                        <p align="right">
                                                                                            Data yang sudah ada...</p>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                        <!-- END ADDNEW ROP -->
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td width="35%">
                                                                                    <asp:LinkButton ID="lBtnAddNewRow" runat="server" CausesValidation="False" Text="[Tambah Data]" />
                                                                                </td>
                                                                                <td width="35%">
                                                                                    <asp:LinkButton ID="lBtnLihatData" runat="server" CausesValidation="False" Text="[Show List Data]" />
                                                                                    <asp:LinkButton ID="lBtnLihatDataHide" runat="server" CausesValidation="False" Text="[Hide List Data]" />
                                                                                </td>
                                                                                <td align="right">
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <asp:Panel ID="pnlgridROP" runat="server">
                                                                    <tr>
                                                                        <td width="100%">
                                                                            <asp:DataGrid ID="gridROP" runat="server" AutoGenerateColumns="False" CellSpacing="0"
                                                                                BorderColor="Gainsboro" BorderWidth="1" GridLines="none" Height="100%"
                                                                                Width="100%" AllowPaging="True" PageSize="20" DataKeyField="kdBarang" ShowFooter="True"
                                                                                CellPadding="0" AllowSorting="True">
                                                                                <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                <EditItemStyle Font-Bold="false" />
                                                                                <PagerStyle Mode="NumericPages" HorizontalAlign="right" Position="TopAndBottom" />
                                                                                <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                                <Columns>
                                                                                    <asp:ButtonColumn ItemStyle-HorizontalAlign="Right" ItemStyle-Width="26px" CommandName="select" Text="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>">
                                                                                    </asp:ButtonColumn>
                                                                                    <asp:EditCommandColumn runat="server" UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
                                                                                        CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
                                                                                        <ItemStyle HorizontalAlign="center" Width="26px" />
                                                                                    </asp:EditCommandColumn>
                                                                                    <asp:TemplateColumn ItemStyle-Width="26px">
                                                                                        <ItemTemplate>
                                                                                            <asp:ImageButton runat="server" ID="__ibtnDelete" CausesValidation="False" ImageUrl="/qislib/images/delete.png"
                                                                                                alt="Delete this item" CommandName="__delete" style="margin-top:2" />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:BoundColumn DataField="kdgudang" Visible="False" />
                                                                                    <asp:BoundColumn DataField="kdlokasi" Visible="False" />
                                                                                    <asp:TemplateColumn SortExpression="kdBarang" runat="server" HeaderText="Kode Item">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>'
                                                                                                ID="_lblKodeBarang" />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama Item">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                                ID="_lblNamaBarang" />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn SortExpression="stokMin" runat="server" HeaderText="Minimum"
                                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "stokMin") %>'
                                                                                                ID="_lblStockMin" />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn SortExpression="stokMax" runat="server" HeaderText="Maximum"
                                                                                        HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "stokMax") %>'
                                                                                                ID="_lblStockMax" />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>                                                                                    
                                                                                </Columns>
                                                                            </asp:DataGrid>
                                                                        </td>
                                                                    </tr>
                                                                </asp:Panel>
                                                            </table>
                                                    </asp:Panel>
                                                    </DIV> </asp:Panel>
                                                    <asp:Panel ID="pnlCheckList" runat="server">
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="10%" align="right">
                                                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="sbttn" Width="100"></asp:Button>
                                                                    <asp:Button ID="btnCancel" runat="server" Text="Close" CausesValidation="False" CssClass="sbttn" Width="100">
                                                                    </asp:Button>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div style="overflow: auto; width: 100%; height: 340">
                                                            <!-- START DATAGRID CHECKLIST ROP -->
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="100%" height="100%">
                                                                        <asp:DataGrid ID="gridCheckROP" runat="server" Width="100%" AutoGenerateColumns="False"
                                                                            CellSpacing="0" BorderColor="Gainsboro" EnableViewState="True" BorderWidth="1"
                                                                            GridLines="none" Height="100%" AllowPaging="True" PageSize="20" DataKeyField="kdbarang"
                                                                            ShowFooter="True" CellPadding="0" AllowSorting="True">
                                                                            <HeaderStyle CssClass="gridHeaderStyle" />
                                                                            <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                            <EditItemStyle Font-Bold="false" />
                                                                            <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                            <SelectedItemStyle BackColor="CornflowerBlue" />
                                                                            <Columns>
                                                                                <asp:TemplateColumn runat="server" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                                                                    <ItemTemplate>
                                                                                        <asp:CheckBox runat="server" Enabled="True" Checked="false" ID="_chkPesan" />
                                                                                    </ItemTemplate>
                                                                                    <HeaderTemplate>
                                                                                        <input name="cbxSelectAll" type="checkbox" onclick="javascript:checkAll(this.form,'_chkPesan');">
                                                                                    </HeaderTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:TemplateColumn SortExpression="kdBarang" runat="server" HeaderText="Kode Item">
                                                                                    <ItemTemplate>
                                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>'
                                                                                            ID="_lblKodeBarang" />
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:TemplateColumn SortExpression="nmdesc1" runat="server" HeaderText="Nama Item">
                                                                                    <ItemTemplate>
                                                                                        <asp:Label runat="server" Style="margin-left: 5; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            ID="_lblNamaBarang" />
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:TemplateColumn SortExpression="stokmin" runat="server" HeaderText="Minimum"
                                                                                    HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                                    <ItemTemplate>
                                                                                        <asp:TextBox runat="server" Style="margin-left: 5; margin-right: 5" BackColor="Transparent"
                                                                                            Text='<%# DataBinder.Eval(Container.DataItem, "stokmin") %>' ID="_txtStockMin" />
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:TemplateColumn SortExpression="stokmax" runat="server" HeaderText="Maximum"
                                                                                    HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                                                                                    <ItemTemplate>
                                                                                        <asp:TextBox runat="server" BackColor="Transparent" Style="margin-left: 5; margin-right: 5"
                                                                                            Text='<%# DataBinder.Eval(Container.DataItem, "stokmax") %>' ID="_txtStockMax" />
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:TemplateColumn runat="server" HeaderText="" ItemStyle-HorizontalAlign="Right"
                                                                                    HeaderStyle-HorizontalAlign="Center" Visible="True">
                                                                                    <ItemTemplate>
                                                                                        <asp:CompareValidator ID="cvStock" runat="server" ControlToValidate="_txtStockMin"
                                                                                            ControlToCompare="_txtStockMax" Type="Double" Display="Dynamic" Operator="LessThanEqual"
                                                                                            ErrorMessage='<%# "Stock Minimum melebihi Stock Maksimum - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'>**
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvStock1" runat="server" ControlToValidate="_txtStockMin"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage='<%# "Stock Minimum harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            Display="Dynamic">** 
                                                                                        </asp:CompareValidator>
                                                                                        <asp:CompareValidator ID="cvStock2" runat="server" ControlToValidate="_txtStockMax"
                                                                                            Operator="DataTypeCheck" Type="Double" ErrorMessage='<%# "Stock Maksimum harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'
                                                                                            Display="Dynamic">** 
                                                                                        </asp:CompareValidator>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                            </Columns>
                                                                        </asp:DataGrid>

                                                                        <script src='/qislib/scripts/common/util.js' language="javascript"></script>

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
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
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

<script>
    if (document.all) document.all.loadingmsg.style.visibility = 'hidden';
</script>

<script>
    if (document.layers) document.loadingmsg.visibility = 'hidden'
</script>

<script>
    if (document.getElementById) document.getElementById('loadingmsg').style.visibility = 'hidden'
</script>

