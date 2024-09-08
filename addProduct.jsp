<%-- 
    Document   : addProduct
    Created on : 6 Mar, 2024, 6:57:51 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add product Page</title><style>
            table{
                font-size: 16px;
                color: #ffffff;
            }
            body{
                background-color:#000000 ;
                
            }
            input{
                font-size:15px ;
                color: #ffffff;
                background-color: #666666;
            }
            textArea{
                font-size:20px ;
                color: #ffffff;
                background-color:#666666 ;
            }
            select{
                font-size:15px ;
                color: #ffffff;
                background-color: #666666; 
            }
            
        </style>
        
    </head>
    <body>
    <center><form name="myfile" action="dataAddProduct.jsp" onsubmit="return validate()">
        
            <h1><font color="white">Product Details</font></h1>
        <table border="0">
          
            <tbody>
                <tr>
                    <td>Product name:</td>
                    <td><input type="text" name="productname" value="" required /></td>
                </tr>
                <tr>
                    <td>Unit of product:</td>
                    <td><select name="units">
                            <option value="gm">gm</option>
                            <option value="kg">kg</option>
                            <option value="ml">ml</option>
                            <option value="litre">liter</option>
                            <option value="km">km</option>
                            <option value="meter">meter</option>
                            <option value="cm">cm</option>
                            <option value="packet">packet</option>
                            <option value="pair">pair</option>
                            <option value="item">item</option>
                            <option value="dozens">dozens</option>
                        </select></td>
                </tr>                                           
                <tr>
                    <td>Quantity Purchased:</td>
                    <td><input type="text" name="quantity" value="" required /></td>
                </tr>
                
                <tr>
                    <td>Enter purchased cost: <font size="" color="red"></font></td>
                    <td><input type="text" name="pcos"  value="" required />Rs</td>
                </tr>
                <tr>
                    <td>Select GST:</td>
                    <td><input type="radio" name="gst" id="0" value="0" />0%<input type="radio" name="gst" id="5" value="5" />5%<input type="radio" name="gst" id="12" value="12" />12%<input type="radio" name="gst" value="18" id="18"/>18%<input type="radio" name="gst" id="28" value="28%" />28%</td>
                </tr>
                <tr>
                     <tr>
                    <td>Enter cost price: <font size="" color="red"><sup>(price of 1 product)</sup></font</td>
                    <td><input type="text" name="costprice" value="" required />Rs</td>
                </tr>
                    <td>Enter MRP:<font size="" color="red"><sup> (price of 1 product)</sup></font></td>
                    <td><input type="text" name="mrp" value="" required />Rs</td>
                </tr>
               
               
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
             <script>
                function validate(){
                    
                
                var rt=document.getElementById("0");
                var wh=document.getElementById("5");
                var di=document.getElementById("12");
                var man=document.getElementById("18");
                var man1=document.getElementById("28");
                if(rt.checked==false && wh.checked==false && di.checked==false && man.checked==false && man.checked==false)
                {
                    alert("You didn't choose any type of business");
                    return false;
                }
                    else
                    {
                        return true;                                
                    }}</script>
        <table border="0">
           
            <tbody>
                <tr>
                    <td><input type="submit" value="submit" /></td>
                    <td><input type="reset" value="clear" /></td>
                </tr>
            </tbody>
        </table>
</form>
    </center>  
    </body>
</html>
