<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregarSucursal.aspx.cs" Inherits="Vista.agregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 152px;
        }
        .auto-style3 {
            width: 197px;
        }
        .auto-style4 {
            width: 152px;
            height: 46px;
        }
        .auto-style5 {
            width: 197px;
            height: 46px;
        }
        .auto-style6 {
            height: 46px;
        }
        .auto-style7 {
            width: 152px;
            height: 41px;
        }
        .auto-style8 {
            width: 197px;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
        }
        .auto-style10 {
            width: 152px;
            height: 30px;
        }
        .auto-style11 {
            width: 197px;
            height: 30px;
        }
        .auto-style12 {
            height: 30px;
        }
        .auto-style13 {
            width: 152px;
            height: 32px;
        }
        .auto-style14 {
            width: 197px;
            height: 32px;
        }
        .auto-style15 {
            height: 32px;
        }
        .auto-style16 {
            width: 152px;
            height: 33px;
        }
        .auto-style17 {
            width: 197px;
            height: 33px;
        }
        .auto-style18 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/agregarSucursal.aspx">Agregar sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/listadoSucursal.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/eliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><h2>Grupo N°1</h2></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">
                        Nombre sucursal:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtNombreSucursal" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">
                        Descripcion:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">
                        Provincia:</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="ddlProvincia" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">
                        Direccion:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnAcptar" runat="server" Text="Aceptar" />
                    </td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
