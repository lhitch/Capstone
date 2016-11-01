using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CCADLog
{
    public partial class EmployeeLog : System.Web.UI.Page
    {
        DataUtil checker;
        protected void Page_Load(object sender, EventArgs e)
        {
            checker = new DataUtil();
            PINdiv.Visible = false;
            int ovenNumber;
            if (int.TryParse(Request.QueryString["oven"], out ovenNumber))
                OvenLabel.Text = "Oven " + ovenNumber;
            if(DateInTxt.Text == "")
                DateInTxt.Text = DateTime.Now.ToString("dd MMMM yyyy");
        }

        protected void Return(object sender, EventArgs e)
        {
            Response.Redirect("OvenOverview.aspx");
        }

        protected bool VerifyPIN(string SupPIN)
        {
            bool queryResult = true;
            //query databse for matching pin
            if (queryResult)
                return true;
            else
                return false;
        }

        private bool ValidateInput()
        {
            ErrNotilbl.Text = "";
            //check required fields to see if they are not empty and valid
            if (PartNounTxt.Text == "")
            {
                ErrNotilbl.Text = "Part Noun is empty";
                return false;
            }
            if (PartNoTxt.Text == "")
            {
                ErrNotilbl.Text = "Part number is empty";
                return false;
            }
            if (DateInTxt.Text == "")
            {
                DateInTxt.Text = DateTime.Now.ToShortDateString();
            }
            if(!checker.isDate(DateInTxt.Text))
            {
                ErrNotilbl.Text = "Invalid date Format";
                return false;
            }
            if(TimeInTxt.Text == "" || !checker.isNumber(TimeOutTxt.Text))
            {
                ErrNotilbl.Text = "Enter a number for the time the part was put in";
                return false;
            }
            if(SerialNoTxt.Text == "")
            {
                ErrNotilbl.Text = "Serial number is empty";
                return false;
            }
            if(BakeHourReqTxt.Text == "" || !checker.isNumber(BakeHourReqTxt.Text) || int.Parse(BakeHourReqTxt.Text) == 0)
            {
                ErrNotilbl.Text = "Enter a number for the amount of hours to heat";
                return false;
            }
            //if(DateOutTxt.Text == "")
            //{
            //    return false;
            //}
            //if(TimeOutTxt.Text=="" || !isNumber(TimeOutTxt.Text))
            //{
            //    return false;
            //}
            if(TempReqTxt.Text == "" || !checker.isNumber(TimeOutTxt.Text))
            {
                ErrNotilbl.Text = "Enter a number for the temperature";
                return false;
            }
            if(QuantityTxt.Text == "" || !checker.isNumber(QuantityTxt.Text))
            {
                ErrNotilbl.Text = "Enter a number for the number of items";
                return false;
            }
            if(ProcedureTxt.Text == "")
            {
                ErrNotilbl.Text = "Procedure is empty";
                return false;
            }
            if(LocationTxt.Text == "")
            {
                ErrNotilbl.Text = "Location is empty";
                return false;
            }
            //if all checks succeed, return true
            return true;
        }

        //TODO: Finish Function
        private bool ValidateOutput()
        {
            
            return true;
        }

        protected void AddRow(object sender, EventArgs e)
        {
            //if invalid input, return so input can be fixed by user
            if (ValidateInput() == false)
                return;

            //add the bake time to the time in to fidn the time to take out the part
            int timeOut = int.Parse(TimeInTxt.Text) + int.Parse(BakeHourReqTxt.Text);
            //TODO: make this calculate date if time passes 2400 hours
            string dateout = DateInTxt.Text;

            try
            {
                int ovenNumber;
                if (!int.TryParse(Request.QueryString["oven"], out ovenNumber))
                    ovenNumber = 1;

                //SqlDataSource1.InsertCommand = "INSERT INTO Log (\"Oven Number\") VALUES (1);";
                //SqlDataSource1.Insert();

                string[] columns = { "OvenNumber", "FlightSafetyPart", "MechIn","PartNoun"
                        ,"PartNumber","DateIn","TimeIn","SerialTagNumber","DateOut"
                        ,"TimeOut","BakeHours","TempRequired","Supervisor","DatePulled"
                        ,"TimePulled","MechOut","Quantity","CCADProc","Location" };//"\"Comment\""};

                TextBox[] fields = { FlightSafetyTxt, MechStampTxt, PartNounTxt, PartNoTxt, DateInTxt, TimeInTxt
                        , SerialNoTxt, DateOutTxt, TimeOutTxt, BakeHourReqTxt, TempReqTxt, InspectTxt
                        , DatePulledTxt, TimePulledTxt, MechStampTxt2, QuantityTxt, ProcedureTxt, LocationTxt};

                string command = "INSERT INTO Log (" + columns[0];
                string command2 = ") VALUES (" + ovenNumber.ToString();
                for (int i = 0; i < fields.Length; i++)
                {
                    if (fields[i].Text.Length != 0)
                    {
                        command += ("," + columns[i + 1]);
                        if (columns[i + 1].Contains("Date") || columns[i + 1].Contains("Time"))
                        {
                            command2 += (",'" + fields[i].Text + "'");
                        }
                        else
                            command2 += ("," + fields[i].Text);
                        //if (columns[i+1].Contains("Date"))
                        //{
                        //    command2 += (",cast('" + fields[i].Text + "' as date)");
                        //}
                        //else
                        //    command2 += ("," + fields[i].Text);
                    }
                }


                OvenLabel.Text = command + command2 + ");";
                SqlDataSource1.InsertCommand = command + command2 + ");";
                SqlDataSource1.Insert();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        protected void ValidatePart(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Validate")
            {
                //show pin entry
                PINdiv.Visible = true;
            }
        }

        protected void Signoffbtn_Click(object sender, EventArgs e)
        {
            if (PINtxt.Text == "")
                return;
            if (VerifyPIN(PINtxt.Text))
            {
                //addsupervisor name to part signoff

                //reset verification area
                PINtxt.Text = "";
                PINdiv.Visible = false;
            }
            else
                return;
        }
    }
}