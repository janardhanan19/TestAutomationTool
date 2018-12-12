using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome; 
 


namespace WebApplication1
{
    public partial class FirstForm : System.Web.UI.Page
    {
        
        

        protected void TestExecution()
        {
            string path = @"C:\Test.bat";
            FileInfo fi = new FileInfo(path);

            try
            {

                // Delete the file if it exists.
                // Check if file already exists. If yes, delete it.   
                if (fi.Exists)
                {
                    fi.Delete();
                }

                //// Create a new file   
                //using (FileStream fs = fi.Create())
                //{
                //    Byte[] txt = new UTF8Encoding(true).GetBytes("New file.");
                //    fs.Write(txt, 0, txt.Length);
                //    Byte[] author = new UTF8Encoding(true).GetBytes("Author Mahesh Chand");
                //    fs.Write(author, 0, author.Length);
                //    fs.Close();
                //}

                //// Write file contents on console.   
                //using (StreamReader sr = File.OpenText(path))
                //{
                //    string s = "";
                //    while ((s = sr.ReadLine()) != null)
                //    {
                //        Console.WriteLine(s);
                //    }
                //}


                string mvnCommand=null;

                    if (!(jiraTextBox.Text.Equals(null) && buildTextBox.Text.Equals(null)))
                    {
                        mvnCommand ="mvn test -P " + gatewayDropDown.SelectedItem.Text + 
                            " & ReportResultsToJira -version:" + "\"" + jiraTextBox.Text.ToLower() + "\"" + " -build:" + buildTextBox.Text;

                    }
                    else
                    {
                        mvnCommand = "mvn test -P " + gatewayDropDown.SelectedItem.Text;
                    }

                    // Create the file.
                    using (FileStream fs = File.Create(path))
                    {
                        Byte[] info = new UTF8Encoding(true).GetBytes(
                              "cd " + localPathTextBox.Text + "\n" 
                               +"git init " + folderTextBox.Text + "\n"
                               +"cd " + folderTextBox.Text + "\n" 
                               +"git clone " + "http://" + userNameTextBox.Text + "@stash.agilysys.local/scm/pay/testautomationcardservice.git" + "\n"
                               + "cd testautomationcardservice" + "\n"
                               + "cd pay-giftcard "+"\n"
                               + "mvn -T 2 compile install -DskipTests=true " + "\n"
                              +mvnCommand
                               );
                       fs.Write(info, 0, info.Length);
                        // Open the stream and read it back.
                        using (StreamReader sr = File.OpenText(path))
                        {
                            string s = "";
                            while ((s = sr.ReadLine()) != null)
                            {
                                Console.WriteLine(s);
                            }
                        }
                    }
            }


            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            //  System.Diagnostics.Process.Start(path);
            Process process;
            process = Process.Start(path);
            process.WaitForExit();

            int ExitCode = process.ExitCode;
            process.Close();
            
        }




        protected void Button2_Click(object sender, EventArgs e)
        {

            //DateTime scheduledTime = new DateTime(Calendar1.SelectedDate.Year, Calendar1.SelectedDate.Month, Calendar1.SelectedDate.Day, int.Parse(hourDropDownBox.SelectedValue.ToString()), int.Parse(MinutesDropDownBox.SelectedValue.ToString()), 0, 0);

            //do
            //{
            //    System.Diagnostics.Debug.WriteLine(DateTime.Now);
            //}
            //while (scheduledTime > DateTime.Now);
            
            //System.Threading.Thread.Sleep(30000);

            CheckIfFolderExisits();

        }

        protected void CheckIfFolderExisits()
        {
            string path1 = localPathTextBox.Text + "\\" + folderTextBox.Text + "\\" + "giftcard";
            if (!Directory.Exists(path1))
            {
                TestExecution();
            }

            else
            {
                Random random = new Random();
                int num = random.Next();
                folderTextBox.Text = folderTextBox.Text + "New" + num;
                TestExecution();
            }
        }
        
        protected void TextBox5_Selection_Change(object sender, EventArgs e)
        {

            for (int i = hourDropDownBox.Items.Count - 1; i >= 0; i--)
            {
                hourDropDownBox.Items.FindByValue(hourDropDownBox.Items[i].ToString()).Enabled = true;
            }
            for (int i = MinutesDropDownBox.Items.Count - 1; i >= 0; i--)
            {
                MinutesDropDownBox.Items.FindByValue(MinutesDropDownBox.Items[i].ToString()).Enabled = true;
            }

            System.Diagnostics.Debug.WriteLine(DateTime.Now.Hour);
            if (Calendar1.SelectedDate.Equals(DateTime.Now.Date))
            {
                System.Diagnostics.Debug.WriteLine(DateTime.Now);

                for(int i = hourDropDownBox.Items.Count-1; i >=0; i--)
                {
                    if (int.Parse(hourDropDownBox.Items[i].ToString()) < DateTime.Now.Hour)
                    {
                        hourDropDownBox.Items.FindByValue(hourDropDownBox.Items[i].ToString()).Enabled = false;
                    }
                    
                }
                for (int i = MinutesDropDownBox.Items.Count - 1; i >= 0; i--)
                {
                    if (int.Parse(MinutesDropDownBox.Items[i].ToString()) < DateTime.Now.Minute)
                    {
                        MinutesDropDownBox.Items.FindByValue(MinutesDropDownBox.Items[i].ToString()).Enabled = false;
                    }

                }
            }
        }

        
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastday = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            int hours = date.Hour;
            int minutes = date.Minute;
            DateTime today = new DateTime(year, month, day);
            if (pastday.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }

         }


        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged2(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void buildTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void jiraTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void localPathTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void folderTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}