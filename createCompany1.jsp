<%-- 
    Document   : createCompany1
    Created on : 4 Mar, 2024, 8:10:51 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>create company Page</title>
        <style>
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
    <centr><form name="myfile" action="dataCreateCompany.jsp" onsubmit="return validate()">
       
            <h1><font color="white">Company Creation</font> </h1><br><br>
             <table border="0">
           
            <tbody>
                 <tr>
                     <td>Trade:<select name="trade">
                             <option value="Electronics">Electronics</option>
                             <option value="Furniture">Furniture</option>
                             <option value="Vegitables">Vegitables</option>
                             <option value="Fruits">Fruits</option>
                             <option value="Grocery">Grocery</option>
                             <option value="Clothes">Clothes</option>
                             <option value="Shoes">Shoes</option>
                             <option value="Jwellary">Jwellary</option>
                             <option value="Mart">Mart</option>
             
                    <td>Other:<input type="text" name="otrade" value="null" /></td>
                </tr>
                
                <tr>
                    <td>Company Name:</td>
                    <td><input type="text" name="cname" value="" required/></td>
                </tr>
                <tr>
                    <td>Scale of business</td>
                    <td><input type="checkbox" name="type" id="Retailer" value="Retailer" />Retailer<input type="checkbox" name="type" id="Wholesaler" value="Wholesaler" />Wholesaler<input type="checkbox" name="type" id="Distributer" value="Distributer" />Distributer<input type="checkbox" name="type" id="Manufacturer" value="Manufacturer" />Manufacturer</td>
                </tr>
               
                <tr>
                    <td>Enter State:</td>
                    <td><input type="text" name="state" value="" required/></td>
                </tr> 
                 <tr>
                    <td>Enter District:</td>
                    <td><input type="text" name="district" value="" required/></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><textarea name="address" rows="4" cols="20">
                        </textarea></td>
                </tr>
                 <tr>
       
                    <td>Enter City:</td>
                    <td><input type="text" name="city" value="" required/></td>
                </tr>
                <tr>
                    <td>Mobile No.(Contact):<input type="number" name="mob1" value="" required/></td>
                    <td>Mobile No.(Message):<input type="number" name="mob2" value="" required/></td>
                </tr>
                <tr>
                    <td>Name of Owner</td>
                    <td><input type="text" name="ownername" value="" required/></td>
                </tr>
                  <tr>
                    <td>Select Gender:</td>
                    <td><input type="radio" name="gender" id="male" value="Male" />Male<input type="radio" name="gender" id="female" value="Female" />Female<input type="radio" name="gender" id="other" value="Other" />Other</td>
                </tr>
                <tr>
                    <td>Email ID:</td>
                    <td><input type="email" name="emailid" value="" required/></td>
                </tr>
               
                       <tr>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
 <script>
                function validate(){
                    
                
                var rt=document.getElementById("Retailer");
                var wh=document.getElementById("Wholesaler");
                var di=document.getElementById("Distributer");
                var man=document.getElementById("Manufacturer");
                if(rt.checked==false && wh.checked==false && di.checked==false && man.checked==false)
                {
                    alert("You didn't choose any type of business");
                    return false;
                }
                    else
                    {
                        return true;                                
                    }
                
                var fm=document.getElementById("male");
                var m=document.getElementById("female");
                var o=document.getElementById("other");
                if(fm.checked==false && m.checked==false && di.checked==false && o.checked==false)
                {
                    alert("You didn't choose any gender");
                    return false;
                }
                    else
                    {
                        return true;                                
                    }
            }
            </script>
        <table border="">
           
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
