using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlightForTheFuture
{
    /* Written By: Paul Smyth
     * Version 1.0
     * Date: 29/01/16
     * This cs is the code behind for the Registration Form. It handles the button responses from the original
     * RegForm aspx Windows Form.
     */
    public partial class RegForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "Please enter your registration details and press the Submit Button. Press the Cancel Button to clear the form.";
        }
        //This method clears the Text Boxes
        protected void ClearTheForm()
        {
            txtUsername.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPasswordVerify.Text = "";
            cbEmailMe.Checked = false;
            ddlCountry.SelectedIndex = 0;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write("Success! This is the data that was entered <br /><br />");
            Response.Write("Username: " + txtUsername.Text + "<br />");
            Response.Write("Email: " + txtEmail.Text + "<br />");
            Response.Write("Password: " + txtPassword.Text + "<br />");
            Response.Write("Verify Password: " + txtPasswordVerify.Text + "<br />");
            Response.Write("Email Check box: " + cbEmailMe.Checked + "<br />");
            // Test the Country drop down box
            switch (ddlCountry.SelectedIndex)
            {
                case 1:
                    Response.Write("Country: Australia<br />");
                    break;
                case 2:
                    Response.Write("Country: New Zealand<br />");
                    break;
                case 3:
                    Response.Write("Country: UK<br />");
                    break;
                case 4:
                    Response.Write("Country: USA<br />");
                    break;
                default:
                    break;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearTheForm();
            lblMessage.Text = "Cancel Button clicked";
        }
    }
}