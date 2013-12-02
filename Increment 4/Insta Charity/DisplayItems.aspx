<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayItems.aspx.cs" Inherits="DisplayItems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <link rel="stylesheet" href="jquery.countdown.css"/>
<style type="text/css">
.defaultcountdown { width: 240px; height: 45px; }
</style>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" /> <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
     
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery.countdown.js"></script>
<script type="text/javascript">
    $(function () {
        $(".dt").each(function (index) {
            var c = $(this).text();
            //   alert(index);
            //  alert(c);
            timer(index, $(this).text());
        });

    });

    function timer(index, dt) {
        var mm = dt.substring(0, 2);
        var dd = dt.substring(3, 5);
        var yyyy = dt.substring(6, 10);
        var austDay = new Date();
        
        austDay = new Date(yyyy, mm - 1, dd,16,50);
      
        var a = "#timer" + index;

        $(a).countdown({ until: austDay, onExpiry:liftoff});
        
        //$('#year').text(austDay.getFullYear());
        function liftoff() {

            var t = "#timer" + index;
            $(t).text("not available");
            
        }
    }

    
</script>
</head>
<body>
<div class ="page" data-role="page">
<div data-role= "header"  data-theme ="b">

 <a href="#" data-rel="back">Back</a>
             <h1> Insta Charity </h1>
<a href="LogOut.aspx" data-role="button" >Logout</a>
</div>
<div data-role= "content">

    <form id="form1" runat="server">
    <div>   
       
        
        <br />
                 
        <br />
        <div id="imgurl" runat="server"></div>
        <br />       
        <br />
    </div>
    </form>
    </div>
    <div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
            
</div>
</body>
</html>

