﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements required for EF DB access
using GameTrackerFinal.Model;
using System.Web.ModelBinding;
// required for Identity and OWIN Security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace GameTrackerFinal
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            //create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            //create a new user object
            var user = new IdentityUser()
            {
                UserName = UserNameTextBox.Text,
                PhoneNumber = PhoneNumberTextBox.Text,
                Email = EmailTextBox.Text
            };
            //create a new user in the db and store the result
            IdentityResult result = userManager.Create(user, PasswordTextBox.Text);

            //check if successfully registered
            if (result.Succeeded)
            {
                //authenticate and login our new user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //sign in
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                //redirect to the gamedeatilspage
                Response.Redirect("~/Login.aspx");

            }
            else
            {
                //display error in the AlertFlash div
                StatusLabel.Text = result.Errors.FirstOrDefault();
                AlertFlash.Visible = true;
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            //redirect to Default page
            Response.Redirect("~/Game.aspx");
        }

    }
    }