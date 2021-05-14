<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Toastr -->
    <link rel="stylesheet" href="Content/plugins/toastr/toastr.min.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            padding: 20px;
        }

        input[type=text],
        input[type=email] {
            border: 1px solid #808080;
            padding: 5px;
            margin: 10px;
            outline: none;
        }

        input[type=submit] {
            font-size: 0.9em;
            padding: 0.7em 1.6em;
            margin: 10px;
            cursor: pointer;
            background: #06329a;
            color: #fff;
            border: none;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtName" placeholder="Name" /><br />
            <asp:TextBox runat="server" ID="txtEmail" placeholder="Email" Type="email" /><br />
            <asp:TextBox runat="server" ID="txtPhone" placeholder="Phone" /><br />
            <input type="text" name="place" placeholder="place" /><br />
            <asp:Button runat="server" ID="btnSave" OnClientClick="return validation();" Text="Save" />
        </div>
    </form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous"></script>

    <!-- Toastr -->
    <script src="Content/plugins/toastr/toastr.min.js"></script>
    <script>
        function validation() {
            if ($('#<%=txtName.ClientID%>').val() == "") {
                toastr.error('Name can not be blank')
                $('#<%=txtName.ClientID%>').focus();
                return false;
            }
            if ($('#<%=txtEmail.ClientID%>').val() == "") {
                toastr.error('Email can not be blank')
                $('#<%=txtEmail.ClientID%>').focus();
                return false;
            }
            if ($('#<%=txtPhone.ClientID%>').val() == "") {
                toastr.error('Phone can not be blank')
                $('#<%=txtPhone.ClientID%>').focus();
                return false;
            }
            if ($('input[name=place]').val() == "") {
                toastr.error('Place can not be blank')
                $('input[name=place]').focus();
                return false;
            }
            return true;
        }
    </script>

</body>
</html>
