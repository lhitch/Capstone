using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CCADLog
{
    public partial class OvenOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                
        }

        protected void OvenBtn_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Button button = (System.Web.UI.WebControls.Button)sender;
            Response.Redirect("EmployeeLog.aspx?oven=" + button.ID[4]);
        }

        protected void Return(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}