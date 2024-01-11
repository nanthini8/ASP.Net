<%@ Page Title="Registraion" Language="C#"  AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CRUD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Course Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 105px;
        }
        .auto-style3 {
            width: 207px;
        }
        .auto-style4 {
            margin-left: 92px;
        }
        .auto-style5 {
            width: 105px;
            height: 28px;
        }
        .auto-style6 {
            width: 207px;
            height: 28px;
        }
        .auto-style7 {
            height: 28px;
        }
        .auto-style8 {
            width: 105px;
            height: 32px;
        }
        .auto-style9 {
            width: 207px;
            height: 32px;
        }
        .auto-style10 {
            height: 32px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font-size:x-large" align="center" > Online Course Registration<br />
            </div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">Student Id</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter the ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Student Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Email</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="286px"></asp:TextBox>
&nbsp;
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Department</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="143px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                            <asp:ListItem>M.Sc</asp:ListItem>
                            <asp:ListItem>BE</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Year of Study</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="Medium" Width="143px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>First</asp:ListItem>
                            <asp:ListItem>Second</asp:ListItem>
                            <asp:ListItem>Third</asp:ListItem>
                            <asp:ListItem>Fourth</asp:ListItem>
                            <asp:ListItem>Fifth</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">Number of Arrear</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Must be between 0 to 2" ForeColor="Red" MaximumValue="2" MinimumValue="0"></asp:RangeValidator>
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Course Name</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Medium">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Deep Learning</asp:ListItem>
                            <asp:ListItem>Blockchain Technologies</asp:ListItem>
                            <asp:ListItem>Artificial Intelligence</asp:ListItem>
                            <asp:ListItem>Bussiness Intelligence</asp:ListItem>
                            <asp:ListItem>C# and ASP.Net</asp:ListItem>
                            <asp:ListItem>Cloud Computing</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;
                        <br />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">Duration</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Medium" Width="143px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>4 weeks</asp:ListItem>
                            <asp:ListItem>8 weeks</asp:ListItem>
                            <asp:ListItem>12 weeks</asp:ListItem>
                            <asp:ListItem>16 weeks</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>

                <tr>

                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#CC66FF" Font-Bold="True" Font-Size="Medium" Height="25px" Text="Insert" Width="85px" OnClick="Button1_Click1" ValidationGroup="i1"  />
                        
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#CC66FF" Font-Bold="True" Font-Size="Medium" OnClick="Button2_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" BackColor="#CC66FF" Font-Bold="True" Font-Size="Medium" OnClick="Button3_Click1" Text="Delete" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" BackColor="#CC66FF" Font-Bold="True" Font-Size="Medium" OnClick="Button4_Click" Text="Search" />
                        
                        <br />
                        <br />
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>

        </p>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style4" Width="735px">
        </asp:GridView>
    </form>
</body>
</html>
