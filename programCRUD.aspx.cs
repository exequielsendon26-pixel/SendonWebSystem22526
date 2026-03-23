using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SendonWebSystem22526
{
    public partial class programCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            GridView1.Visible = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;
            Panel1.Visible = false;
            GridView1.Visible = true;
            SqlDataSource1.Insert();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;
            Panel1.Visible = false;
            GridView1.Visible = true;
            SqlDataSource1.Update();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtDescription.Text = "";
            txtCode.Text = "";
            GridView1.Visible = true;
            Panel1.Visible = false;
            LinkButton1.Visible = true;

        }

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            txtCode.Text = row.Cells[2].Text;
            txtDescription.Text = row.Cells[3].Text;
            DDCollege.SelectedValue = row.Cells[4].Text;
        }


        protected void btnEdit_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
            Panel1.Visible = true;
            GridView1.Visible = false;
        }
    }
}