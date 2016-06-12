using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Torricelli_Web_Application
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void policzButton_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(TextBox1.Text) && !String.IsNullOrWhiteSpace(TextBox1.Text) && !String.IsNullOrEmpty(TextBox2.Text) && !String.IsNullOrWhiteSpace(TextBox2.Text) && !String.IsNullOrEmpty(grawitacjaTextBox.Text) && !String.IsNullOrWhiteSpace(grawitacjaTextBox.Text))
            {   if(Double.Parse(TextBox1.Text)>=Double.Parse(TextBox2.Text) && Double.Parse(TextBox1.Text)>=0 && Double.Parse(TextBox2.Text)>=0){
                if (Double.Parse(grawitacjaTextBox.Text) >= 9.7 && Double.Parse(grawitacjaTextBox.Text)<=10)
                {
                    etykietaPredkosci.Text = Math.Sqrt(2*Double.Parse(grawitacjaTextBox.Text)*(Double.Parse(TextBox1.Text)-Double.Parse(TextBox2.Text))).ToString();
                    etykietaZasiegu.Text = (2 * Math.Sqrt(Double.Parse(TextBox2.Text) * (Double.Parse(TextBox1.Text) - Double.Parse(TextBox2.Text)))).ToString();
                    etykietaCzasu.Text = Math.Sqrt((2 * (Double.Parse(TextBox1.Text) - Double.Parse(TextBox2.Text))) / Double.Parse(grawitacjaTextBox.Text)).ToString();
                }
                else
                {
                    etykietaCzasu.Text = "Wyjątek";
                    etykietaPredkosci.Text = "Wyjątek";
                    etykietaZasiegu.Text = "Wyjątek";
                }
            }
            else
            {
                etykietaCzasu.Text = "Wyjątek";
                etykietaPredkosci.Text = "Wyjątek";
                etykietaZasiegu.Text = "Wyjątek";
            }
            }
            else
            {
                etykietaCzasu.Text = "Wyjątek";
                etykietaPredkosci.Text = "Wyjątek";
                etykietaZasiegu.Text = "Wyjątek";
            }
            
        }

        protected void wyslijButton_Click(object sender, EventArgs e)
        {
            string kolorNaglowka;
            if (nazwaUzytTextBox.Text == "" || komentarzTextBox.Text == "")
                return;
            kolorNaglowka = "yellow";


            string naglowek = "<font color='" + kolorNaglowka + "'><b> Dodano dnia " + DateTime.Now.ToString() + "<b></font>";

            string tresc = komentarzTextBox.Text.Trim().Replace("\n", "<br />");

            string podpis = "<i>" + nazwaUzytTextBox.Text + "</i>(" + this.Request.UserHostAddress + ")";

            string nowyWpis = naglowek + "<br />" + tresc + "<br />" + podpis + "<p>";
            nowyWpis += "<hr width='40%' align='left'>";
            Label1.Text += nowyWpis;
            

            nazwaUzytTextBox.Text = "";
            komentarzTextBox.Text = "";
        }
    }
}