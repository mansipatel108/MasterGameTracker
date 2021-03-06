﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GameTrackerFinal.Login" %>
<%--
File Name: Login.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://projectgametracker.azurewebsites.net/
Description: To create a tracker user must be Logged in on this page.
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

                <h1>Login...</h1>

                <div class="panel panel-primary">
                    <br />

                    <div class="panel-body">

                        <div class="form-group">

                            <label class="control-label" for="UserNameTextBox">Username:</label>

                            <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" placeholder="Username" required="true" TabIndex="0"></asp:TextBox>

                        </div>

                        <div class="form-group">

                            <label class="control-label" for="PasswordTextBox">Password:</label>

                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox" placeholder="Password" required="true" TabIndex="0"></asp:TextBox>
                         <a href="Register.aspx" class="text" id="Register">OR Register</a>
                        </div>

                        <div class="text-right">

                            <asp:Button Text="Login" ID="LoginButton" runat="server" CssClass="btn btn-primary" OnClick="LoginButton_Click" TabIndex="0" />

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</asp:Content>
