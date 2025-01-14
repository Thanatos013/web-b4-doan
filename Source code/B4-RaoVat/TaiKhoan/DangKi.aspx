﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKi.aspx.cs" Inherits="Default2" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
<asp:CreateUserWizard ID="userDangKy" runat="server" 
        AnswerLabelText="Câu Trả Lời Bảo Mật:" 
        CompleteSuccessText="Tài khoản của bạn đã tạo thành công. Xin hãy đăng nhập để sữ dụng các dịch vụ có 1 không hai của chúng tôi. Đội phát triển website RaoVat." 
        ConfirmPasswordCompareErrorMessage="Mật khẩu cần phải giống nhau." 
        ConfirmPasswordLabelText="Điền Lại Mật Khẩu;" 
        DuplicateEmailErrorMessage="Địa chỉ email này đã tồn tại, xin vui lòng điền địa chỉ email khác." 
        DuplicateUserNameErrorMessage="Tên người dùng này đã tồn tại xin vui lòng điền lại tên người dùng khác." 
        PasswordLabelText="Mật Khẩu:" 
        QuestionLabelText="Câu Hỏi Bảo Mật:" UserNameLabelText="Tên Người Dùng:" 
        AnswerRequiredErrorMessage="Trả lời câu hỏi bảo mật." BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
        CancelButtonText="Không Đồng Ý" CancelDestinationPageUrl="~/Default.aspx" 
        ConfirmPasswordRequiredErrorMessage="Đánh lại mật khẩu." 
        ContinueButtonText="Đăng Nhập" 
        ContinueDestinationPageUrl="~/TaiKhoan/DangNhap.aspx" 
        CreateUserButtonText="Đồng Ý" DisplayCancelButton="True" 
        EmailRegularExpressionErrorMessage="Điền đại chỉ email khác." 
        EmailRequiredErrorMessage="Yêu cầu e-mail." 
        FinishCompleteButtonText="Hoàn Thành." Font-Names="Tahoma" Font-Size="11pt" 
        InvalidAnswerErrorMessage="Điền vào câu hỏi bảo mật khác." 
        InvalidEmailErrorMessage="Xin điền vào địa chỉ e-mail hợp lệ." 
        InvalidQuestionErrorMessage="Điền vào câu hỏi bảo mật khác." 
        PasswordRegularExpressionErrorMessage="Điền vào mật khẩu khác." 
        PasswordRequiredErrorMessage="Yêu cầu mật khẩu." 
        QuestionRequiredErrorMessage="Yêu cầu câu hỏi bảo mật."
        UnknownErrorMessage="Tạo tài khoản không thành công. Xin vui lòng thử lại." 
        UserNameRequiredErrorMessage="Tên người dùng yêu cầu." Width="578px" 
        meta:resourcekey="userDangKyResource1">
        <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
            VerticalAlign="Top" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
            Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <StepStyle BorderWidth="0px" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="Đăng Ký Tài Khoản Mới." 
                meta:resourcekey="CreateUserWizardStepResource1" >
                <ContentTemplate>
                    <table border="0" style="font-family:Tahoma;font-size:100%;width:572px;">
                        <tr>
                            <td align="center" colspan="2" 
                                style="color:White;background-color:#5D7B9D;font-weight:bold;">
                                <asp:Label ID="Title" runat="server" Text="Đăng Ký Tài Khoản Mới" meta:resourcekey="TitleResource1"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 145px">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                    meta:resourcekey="UserNameLabelResource1">Tên Người Dùng:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" meta:resourcekey="UserNameResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="Tên người dùng yêu cầu." 
                                    ToolTip="Tên người dùng yêu cầu." ValidationGroup="CreateUserWizard1" 
                                    meta:resourcekey="UserNameRequiredResource1">Cần điền tên người dùng</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 145px">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                                    meta:resourcekey="PasswordLabelResource1">Mật Khẩu:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" 
                                    meta:resourcekey="PasswordResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Yêu cầu mật khẩu." 
                                    ToolTip="Yêu cầu mật khẩu." ValidationGroup="CreateUserWizard1" 
                                    meta:resourcekey="PasswordRequiredResource1">Cần điền mật khẩu.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 145px">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword" 
                                    meta:resourcekey="ConfirmPasswordLabelResource1">Điền Lại Mật Khẩu:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" 
                                    meta:resourcekey="ConfirmPasswordResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" ErrorMessage="Đánh lại mật khẩu." 
                                    ToolTip="Đánh lại mật khẩu." ValidationGroup="CreateUserWizard1" 
                                    meta:resourcekey="ConfirmPasswordRequiredResource1">Cần điền lại mật khẩu.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 145px">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" 
                                    meta:resourcekey="EmailLabelResource1">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server" meta:resourcekey="EmailResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="Yêu cầu e-mail." 
                                    ToolTip="Yêu cầu e-mail." ValidationGroup="CreateUserWizard1" 
                                    meta:resourcekey="EmailRequiredResource1">Cần điền địa chỉ e-mail.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 145px">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" 
                                    meta:resourcekey="QuestionLabelResource1">Câu Hỏi Bảo Mật:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server" meta:resourcekey="QuestionResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Yêu cầu câu hỏi bảo mật." 
                                    ToolTip="Yêu cầu câu hỏi bảo mật." ValidationGroup="CreateUserWizard1" 
                                    meta:resourcekey="QuestionRequiredResource1">Câu hỏi bảo mật.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 145px">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" 
                                    meta:resourcekey="AnswerLabelResource1">Câu Trả Lời Bảo Mật:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server" meta:resourcekey="AnswerResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Trả lời câu hỏi bảo mật." 
                                    ToolTip="Trả lời câu hỏi bảo mật." ValidationGroup="CreateUserWizard1" 
                                    meta:resourcekey="AnswerRequiredResource1">Câu trả lời bảo mật.</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="width: 145px" rowspan="2">
                                <asp:Label ID="lblLuaChon" runat="server"
                                    meta:resourcekey="lblLuaChonResource1" Text="Lựa chọn khác:"></asp:Label></td>
                            <td>
                                <asp:CheckBox ID="cboxGiauEmail" runat="server" Text="Giấu Email của tôi." 
                                    meta:resourcekey="cboxGiauEmailResource1" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="cboxDangKy" runat="server" 
                                    Text="Đăng ký email để nhận tin rao vặt mới theo từng mục hay tất cả." 
                                    meta:resourcekey="cboxDangKyResource1" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" ErrorMessage="Mật khẩu cần phải giống nhau." 
                                    ValidationGroup="CreateUserWizard1" 
                                    meta:resourcekey="PasswordCompareResource1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False" 
                                    Text="Các thông tin nhập vào chưa chính xác." 
                                    meta:resourcekey="ErrorMessageResource1"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" 
                
                Title="Xin chúc mừng quý khách. Chào mừng đến với website RaoVat của chúng tôi. Chúng tôi đặt niềm tin lên làm đầu." 
                meta:resourcekey="CompleteWizardStepResource1" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

