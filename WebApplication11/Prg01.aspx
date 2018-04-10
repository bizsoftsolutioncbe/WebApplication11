<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prg01.aspx.cs" Inherits="WebApplication11.Prg01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" name="txtVal1" id="txtVal1" runat="server" />
            <input type="text" name="txtVal2" id="txtVal2" runat="server" />
            <button id="btnGet">Get Value</button>
            <button id="btnPost">Post Value</button>
            <button id="btnPut">Put Value</button>
            <button id="btnDelete">Delete Value</button>
            <script>
                $(function () {
                    $('#btnGet').click(function () {
                            $.ajax({ 
                            type: 'GET', 
                            url: '/Api/Arith',
                            data: { num1:$('#txtVal1').val(),num2:$('#txtVal2').val()}, 
                            dataType: 'json',
                            success: function (data) { 
                                console.log(data);
                            }
                        });
                        return false;
                    });

                    $('#btnPost').click(function () {
                            $.ajax({ 
                            type: 'POST', 
                            url: '/Api/Arith',
                            data: { num1:$('#txtVal1').val(),num2:$('#txtVal2').val()}, 
                            dataType: 'json',
                            success: function (data) { 
                                console.log(data);
                            }
                        });
                        return false;
                    });

                    $('#btnPut').click(function () {
                            $.ajax({ 
                            type: 'PUT', 
                            url: '/Api/Arith',
                            data: { num1:$('#txtVal1').val(),num2:$('#txtVal2').val()}, 
                            dataType: 'json',
                            success: function (data) { 
                                console.log(data);
                            }
                        });
                        return false;
                    });

                    $('#btnDelete').click(function () {
                            $.ajax({ 
                            type: 'Delete', 
                            url: '/Api/Arith',
                            data: { num1:$('#txtVal1').val(),num2:$('#txtVal2').val()}, 
                            dataType: 'json',
                            success: function (data) { 
                                console.log(data);
                            }
                        });
                        return false;
                    });
                });
                
            </script>
        </div>
    </form>
</body>
</html>
