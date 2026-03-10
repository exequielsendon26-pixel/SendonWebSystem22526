using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SendonWebSystem22526
{
    public partial class CollegeCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        #region "Insert"
        protected void lbtnAddNewRecord_Click(object sender, EventArgs e)
        {
            pageAddEdit();
            btnUpdate.Visible = false;
            btnSave.Visible = true;

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();    
        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            pageInitialize();
            myMessage("New Record Added!");
        }

        #endregion

        #region "UPDATE"
        protected void btnEdit_Click(object sender, EventArgs e)
            {
            pageAddEdit();
                btnUpdate.Visible = true;
                btnSave.Visible = false;
            }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
            {
                GridViewRow row = GridView1.SelectedRow;
                txtDescription.Text = row.Cells[3].Text;
                txtCode.Text = row.Cells[2].Text;
            }

        protected void btnUpdate_Click(object sender, EventArgs e)
            {
                SqlDataSource1.Update();
            }

        protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
            {
                pageInitialize();
                myMessage("Record Updated!");
            }

        #endregion

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            lblMessage.Visible = true;
            lblMessage.Text = "Record Deleted!";
        }

        

        

        

       

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pageInitialize();

        }

        #region "MyMethods"
        
        public void pageInitialize()
        {
            txtCode.Text = " ";
            txtDescription.Text = " ";
            pnlAddNewRecord.Visible = false;
            GridView1.Visible = true;
            lbtnAddNewRecord.Visible =  true;
        }

        public void pageAddEdit()
        {
            pnlAddNewRecord.Visible = true;
            GridView1.Visible = false;
            lbtnAddNewRecord.Visible = false;
        }

        public void myMessage(string msg)
        {
            lblMessage.Visible = true;
            lblMessage.Text = msg;
        }

        #endregion

        
    }
}