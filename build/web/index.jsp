<%-- 
    Document   : index
    Created on : Sep 13, 2015, 4:37:13 PM
    Author     : barbarian
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.tutorialpedia.model.ProdukModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Latihan AddCart | TutorialPedia.NET</title>
    </head>
    <body>
        <h2>Daftar Produk</h2>

                    <%
                        ProdukModel pm = new ProdukModel();
                        List<ProdukModel> data = new ArrayList<ProdukModel>();
                        String ket = request.getParameter("ket");
                        if (ket == null) {
                            data = pm.tampil();
                        }
                        for (int x = 0; x < data.size(); x++) {
                    %>
        <table width="75%" border="1">
            <tr>

                <td>


                    <form name="ModelDetail" method="POST" action="CartController">

                        Kode Produk : <%=data.get(x).getKd_produk()%> <input type="hidden" name="kd_produk" value="<%=data.get(x).getKd_produk()%>"><br>
                        Nama Produk : <%=data.get(x).getNm_produk()%><input type="hidden" name="nm_produk" value="<%=data.get(x).getNm_produk()%>"><br>
                        Harga : <%=data.get(x).getHarga_produk()%> <input type="hidden" name="harga" value="<%=data.get(x).getHarga_produk()%>"><br>
                        Stok : <%=data.get(x).getQty()%> <input type="hidden" name="harga" value="<%=data.get(x).getQty()%>"><br>

                        Quantity :<input type="text" name="qty" value="1"/><br><br>
                        <input type="hidden" name="action" value="add">
                        <input type="submit" name="addToCart" value="Add To Cart">
                    </form> 
                  


                </td>

            </tr>
        </table>
  <% }%>
    </body>
</html>
