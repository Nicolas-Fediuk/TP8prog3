<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminarSucursal.aspx.cs" Inherits="Vista.eliminarSucursal" %>

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
            width: 270px;
        }
        .auto-style5 {
            width: 238px;
        }
        .auto-style7 {
            width: 270px;
            height: 40px;
        }
        .auto-style8 {
            width: 238px;
            height: 40px;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style10 {
            width: 270px;
            height: 48px;
        }
        .auto-style11 {
            width: 238px;
            height: 48px;
        }
        .auto-style12 {
            height: 48px;
        }
        .auto-style13 {
            width: 270px;
            height: 47px;
        }
        .auto-style14 {
            width: 238px;
            height: 47px;
        }
        .auto-style15 {
            height: 47px;
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
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style10"><h2>Eliminar sucursales</h2></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style13">Ingrese ID sucursal:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
