
<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="WebFormClass.Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Page Background */
        .contact-page {
            max-width: 850px;
            margin: 20px auto;
            padding: 20px;
            color: #000000;
        }

        /* Heading */
        .contact-heading {
            text-align: center;
            margin-bottom: 10px;
            color: #000000;
            font-size: 30px;
            font-weight: 700;
        }

        .contact-description {
            text-align: center;
            color: #000000;
            margin-bottom: 30px;
            font-size: 15px;
        }

        /* Form Card */
        .contact-card {
            background: #ffffff;
            border: 1px solid #b9e3ff;
            border-radius: 16px;
            padding: 35px;
            box-shadow: 0 8px 25px rgba(0, 120, 200, 0.10);
        }

        .contact-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 17px;
        }

        .contact-table td:first-child {
            width: 190px;
            padding-right: 20px;
            vertical-align: top;
            padding-top: 10px;
        }

        .field-label {
            color: #000000;
            font-weight: 600;
            font-size: 15px;
        }

        /* Input Fields */
        .contact-input {
            width: 100%;
            height: 44px;
            padding: 10px 13px;
            border: 1px solid #b9dff5;
            border-radius: 8px;
            background: #f7fcff;
            color: #000000;
            font-size: 14px;
            outline: none;
            transition: 0.3s ease;
        }

        .contact-input:focus {
            border-color: #168bd2;
            background: #ffffff;
            box-shadow: 0 0 0 3px rgba(22, 139, 210, 0.12);
        }

        /* Validation Messages */
        .validation-error {
            display: block;
            color: #c62828;
            font-size: 12px;
            font-weight: 600;
            margin-top: 5px;
        }

        /* Submit Button */
        .submit-row {
            text-align: center;
            padding-top: 15px;
        }

        .submit-button {
            width: 190px;
            padding: 13px 20px;
            background: #dff2ff;
            color: #000000;
            border: 2px solid #80ccff;
            border-radius: 9px;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .submit-button:hover {
            background: #bde5ff;
            border-color: #168bd2;
            transform: translateY(-2px);
        }

        .form-note {
            text-align: center;
            color: #000000;
            font-size: 13px;
            margin-top: 20px;
        }

        /* Mobile Responsive */
        @media (max-width: 600px) {
            .contact-page {
                padding: 10px;
            }

            .contact-card {
                padding: 20px 15px;
            }

            .contact-heading {
                font-size: 25px;
            }

            .contact-table,
            .contact-table tbody,
            .contact-table tr,
            .contact-table td {
                display: block;
                width: 100%;
            }

            .contact-table td:first-child {
                padding: 0 0 7px 0;
            }

            .contact-table td {
                padding-bottom: 5px;
            }

            .submit-button {
                width: 100%;
            }
        }
        .auto-style1 {
            height: 44px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="contact-page">

        <h1 class="contact-heading">Contact Us</h1>

        <p class="contact-description">
            Please fill in the form below and share your information.
        </p>

        <div class="contact-card">

            <asp:ValidationSummary
                ID="ValidationSummary1"
                runat="server"
                CssClass="validation-error"
                HeaderText="Please correct the following errors:"
                DisplayMode="BulletList" />

            <table class="contact-table">

                <!-- Username -->
                <tr>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server"
                            Text="Username"
                            AssociatedControlID="UsernameTextBox"
                            CssClass="field-label" />
                    </td>
                    <td>
                        <asp:TextBox ID="UsernameTextBox" runat="server"
                            CssClass="contact-input"
                            MaxLength="100"
                            placeholder="Enter your full name" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                            runat="server"
                            ControlToValidate="UsernameTextBox"
                            ErrorMessage="Please enter your name."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Email -->
                <tr>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server"
                            Text="Email Address"
                            AssociatedControlID="EmailTextBox"
                            CssClass="field-label" />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server"
                            CssClass="contact-input"
                            TextMode="Email"
                            placeholder="example@email.com" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server"
                            ControlToValidate="EmailTextBox"
                            ErrorMessage="Please enter your email."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                            runat="server"
                            ControlToValidate="EmailTextBox"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="Please enter a valid email address."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RegularExpressionValidator>
                    </td>
                </tr>

                <!-- Password -->
                <tr>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server"
                            Text="Password"
                            AssociatedControlID="PasswordTextBox"
                            CssClass="field-label" />
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server"
                            CssClass="contact-input"
                            TextMode="Password"
                            MaxLength="128"
                            placeholder="Create a strong password" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                            runat="server"
                            ControlToValidate="PasswordTextBox"
                            ErrorMessage="Please enter your password."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                            runat="server"
                            ControlToValidate="PasswordTextBox"
                            ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"
                            ErrorMessage="Use at least 8 characters, including uppercase, lowercase, a digit and a special character (@$!%*?&amp;)."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RegularExpressionValidator>
                    </td>
                </tr>

                <!-- Confirm Password -->
                <tr>
                    <td>
                        <asp:Label ID="ConPasswordLabel" runat="server"
                            Text="Confirm Password"
                            AssociatedControlID="ConPasswordTextBox"
                            CssClass="field-label" />
                    </td>
                    <td>
                        <asp:TextBox ID="ConPasswordTextBox" runat="server"
                            CssClass="contact-input"
                            TextMode="Password"
                            MaxLength="128"
                            placeholder="Re-enter your password" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                            runat="server"
                            ControlToValidate="ConPasswordTextBox"
                            ErrorMessage="Please confirm your password."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1"
                            runat="server"
                            ControlToCompare="PasswordTextBox"
                            ControlToValidate="ConPasswordTextBox"
                            Operator="Equal"
                            Type="String"
                            ErrorMessage="Passwords do not match."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:CompareValidator>
                    </td>
                </tr>

                <!-- Phone Number -->
                <tr>
                    <td>
                        <asp:Label ID="NumberLabel" runat="server"
                            Text="Phone Number"
                            AssociatedControlID="NumberTextBox"
                            CssClass="field-label" />
                    </td>
                    <td>
                        <asp:TextBox ID="NumberTextBox" runat="server"
                            CssClass="contact-input"
                            TextMode="Phone"
                            MaxLength="15"
                            placeholder="Enter your phone number" />

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                            runat="server"
                            ControlToValidate="NumberTextBox"
                            ErrorMessage="Please enter your phone number."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="PhoneValidator"
                            runat="server"
                            ControlToValidate="NumberTextBox"
                            ValidationExpression="^\+?[0-9]{10,15}$"
                            ErrorMessage="Enter a valid phone number (10–15 digits, optional leading +)."
                            CssClass="validation-error"
                            Display="Dynamic"
                            SetFocusOnError="True" >*</asp:RegularExpressionValidator>
                    </td>
                </tr>

                <!-- Submit -->
                <tr>
                    <td CssClass="field-label">
                        Gender</td>
                    <td>
                        <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="Gender" Text="Female" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Select Your gender" Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" class="submit-row">
                        <asp:Button ID="Button1"
                            runat="server"
                            Text="Submit Form"
                            CssClass="submit-button"
                            OnClick="Button1_Click" />
                    </td>
                </tr>

            </table>

            <p class="form-note">
                Please check your details before submitting.
            </p>

        </div>
    </section>

</asp:Content>
