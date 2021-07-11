<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="superMarket_V2.Account.Register"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />  

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
             <CreateUserButtonStyle  Font-Bold="True" Font-Names="Calibri" BackColor="#EE9FC7" BorderColor="#E46CA8" ForeColor="White" />
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" >
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2" style="height: 20px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" style="color: #5A1035">User Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" style="color: #5A1035">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" style="color: #5A1035">Confirm Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" style="color: #5A1035">E-mail:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" style="color: #5A1035">Security Question:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" style="color: #5A1035">Security Answer:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" >
                    <ContentTemplate>
                        <table>
                            <caption>


                                <br />
                                </tr>
                                <tr>
                                    <td style="height: 20px; color: #5A1035;"><strong>Click Continue To Insert Your Profile Information.</strong></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                <td align="right">

                                        <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" OnCommand="ContinueButton_Command"  Text="Continue" ValidationGroup="CreateUserWizard"  Font-Bold="True" Font-Names="Calibri" BackColor="#EE9FC7" BorderColor="#E46CA8" ForeColor="White" />


                                    </td>
                                </tr>
                            </caption>
                        </table>
                    </ContentTemplate>
                </asp:CompleteWizardStep>
            </WizardSteps>
    </asp:CreateUserWizard>

</asp:Content>
