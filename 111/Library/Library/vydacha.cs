using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Library
{
    public partial class vydacha : Form
    {
        public vydacha()
        {
            InitializeComponent();
            select_r = "Select id_Reader AS [ID читателя], Name_R as ФИО, Date_B AS[Дата рождения], Adres as Адрес, Tel as Телефон, " +
             "Date_R AS [Дата регистрации] from Reader";
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, select_r, dataGridView1);
        }
        const string select_doc = "Select * From Doc ";
        string select_r = "";
        string query_r = "";

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            string query_r = select_r;
            if (textBox4.Text != "")
            {
                query_r = select_r + " where Name_R LIKE " + "'" + textBox4.Text + "%" + "'";
            }
            else
            {
                query_r = select_r;
            }
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, query_r, dataGridView1);
        }

        private void vydacha_Load(object sender, EventArgs e)
        {
            dateTimePicker1.Value = DateTime.Now;
            dateTimePicker2.Value = DateTime.Now;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = FMain.SelfRef.connectionString;
            conn.Open();
            SqlCommand cmdd = conn.CreateCommand();
            cmdd.CommandType = CommandType.StoredProcedure;
            cmdd.CommandText = "[Ins_Delivary]";
            cmdd.Parameters.Add("@ID_Doc", SqlDbType.Int, 4);
            cmdd.Parameters["@ID_Doc"].Value = textBox1.Text;
            cmdd.Parameters.Add("@ID_Reader", SqlDbType.Int, 4);
            cmdd.Parameters["@ID_Reader"].Value = dataGridView1[0,dataGridView1.CurrentRow.Index].Value.ToString();
            cmdd.Parameters.Add("@Date_D", SqlDbType.Date, 40);
            cmdd.Parameters["@Date_D"].Value = dateTimePicker1.Value;
            cmdd.Parameters.Add("Date_Return_Plan", SqlDbType.Date, 40);
            cmdd.Parameters["Date_Return_Plan"].Value = dateTimePicker2.Value;
            cmdd.ExecuteNonQuery();
            MessageBox.Show("Изменения внесены", "Добавление записей");
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, FMain.SelfRef.query_delivery, dataGridView1);
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, select_doc, Search.SelfRef.dataGridView2);
        }
    }
}
