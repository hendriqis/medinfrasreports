<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InfoKeteranganPermintaan.aspx.vb"
    Inherits="QIS.Web.InfoKeteranganPermintaan" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Keterangan Permintaan Barang</title>
    <meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
    <meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">

    <script src='/qislib/scripts/FM_/fm___Dlg_rs-v2.js' language="javascript"></script>

    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>

    <script language="javascript">
		
			function tengah()
				{
					var xcenter=(screen.availWidth-800)/2;
					var ycenter=(screen.availHeight-600)/2;				
					self.resizeTo(800,500);
					self.moveTo(xcenter,ycenter);
					    
				}
    </script>

</head>
<body onload="tengah();">
    <form id="frmResep" runat="server">
    <table cellspacing="0" cellpadding="2" width="100%" border="0">
        <tr>
            <td valign="top" width="100%">
                <div style="overflow: auto; width: 100%; height: 455px">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25" colspan="3">
                                            Informasi Keterangan Permintaan Barang
                                        </td>
                                    </tr>
                                </table>
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr>
                                        <td width="100%">
                                            <asp:TextBox ID="txtKeterangan" runat="server" TextMode="Multiline" Style="color: blue"
                                                ReadOnly="true" Height="320" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr style="display: none">
                                        <td width="100%">
                                            <asp:TextBox ID="txtNoPermintaan" runat="server" Width="99%" Visible="false" AutoPostBack="True" />
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
