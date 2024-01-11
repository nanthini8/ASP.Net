using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CRUD
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-QNBEH1H\\SQLEXPRESS;Initial Catalog=Course_Reg;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Reg_detail where count(student_id)<5", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
                con.Open();
                SqlCommand comm = new SqlCommand("INSERT into Reg_detail(student_id,student_name,email,dept,year,arrear,course_name,duration) values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + int.Parse(TextBox3.Text) + "','" + DropDownList3.SelectedValue + "', '" + DropDownList4.SelectedValue + "')", con);
                comm.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
                LoadRecord();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("UPDATE Reg_detail set student_name='" + TextBox2.Text + "', course_name='" + DropDownList3.SelectedValue + "' where student_id='" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }



        protected void Button3_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("DELETE from Reg_detail  where student_id='" + int.Parse(TextBox1.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Reg_detail where student_id='" + int.Parse(TextBox1.Text) + "' ", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


    }
}