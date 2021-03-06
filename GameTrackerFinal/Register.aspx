﻿<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GameTrackerFinal.Register" %>
<%--
File Name: Register.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://projectgametracker.azurewebsites.net/
Description: In order to get log in User must get registered on this page.
 @date: June 8, 2016   @version: 0.0.1
 @date: June 15, 2016  @version: 0.0.2
 @date: June 24, 2016  @version: 0.0.3
      --%>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">

        <div class="row">

            <div class="col-md-offset-4 col-md-4">

                 <div class="alert alert-danger" id="AlertFlash" runat="server" visible="false">

                    <asp:Label runat="server" ID="StatusLabel" />

                </div>

                <h1>Register...</h1>

                <h5>All Fields are Required</h5>

                <br />

                <div class="panel panel-primary">

                    <div class="panel-body">

                        <div class="form-group">

                            <label class="control-label" for="UserNameTextBox">Username:</label>

                            <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" placeholder="Username" required="true" TabIndex="0"></asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label class="control-label" for="PhoneNumberTextBox">Phone Number:</label>

                            <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="PhoneNumberTextBox" placeholder="Phone Number" required="true" TabIndex="0"></asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label class="control-label" for="EmailTextBox">Email:</label>

                            <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true" TabIndex="0"></asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label class="control-label" for="PasswordTextBox">Password:</label>

                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox" placeholder="Password" required="true" TabIndex="0"></asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label class="control-label" for="ConfirmPasswordTextBox">Confirm:</label>

                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="ConfirmPasswordTextBox" placeholder="Confirm Password" required="true" TabIndex="0"></asp:TextBox>

                            <asp:CompareValidator ErrorMessage="Your Passwords Must Match" Type="String" Operator="Equal"  ControlToValidate="ConfirmPasswordTextBox" runat="server"

                                ControlToCompare="PasswordTextBox" CssClass="label label-danger" />

                        </div>

                        <div class="text-right">

                            <asp:Button Text="Cancel" ID="CancelButton" runat="server" CssClass="btn btn-warning" OnClick="CancelButton_Click" UseSubmitBehavior="false" CausesValidation="false" TabIndex="0" />

                            <asp:Button Text="Register" ID="RegisterButton" runat="server" CssClass="btn btn-primary" OnClick="RegisterButton_Click" TabIndex="0" />

                        </div>

                    </div>

                </div>  

            </div>

        </div>

    </div>
</asp:Content>
