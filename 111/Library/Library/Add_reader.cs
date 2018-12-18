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
    public partial class Add_reader : Form
    {
        public Add_reader()
        {
            InitializeComponent();
        }
        const string select_Reader = "Select id_Reader AS [ID читателя], Name_R as ФИО, Date_B AS[Дата рождения], Adres as Адрес, Tel as Телефон, " +
            "Date_R AS [Дата регистрации] from Reader";

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = FMain.SelfRef.connectionString;
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[ins_Reader]";
            cmd.Parameters.Add("@NAME_R", SqlDbType.NVarChar, 50);
            cmd.Parameters["@NAME_R"].Value = textBox1.Text;
            cmd.Parameters.Add("@Date_b", SqlDbType.Date, 70);
            cmd.Parameters["@Date_b"].Value = dateTimePicker1.Value;
            cmd.Parameters.Add("@Adres", SqlDbType.NVarChar, 70);
            cmd.Parameters["@Adres"].Value = textBox2.Text;
            cmd.Parameters.Add("@Tel", SqlDbType.NVarChar, 15);
            cmd.Parameters["@Tel"].Value = textBox3.Text;
            cmd.Parameters.Add("@Date_r", SqlDbType.Date, 15);
            cmd.Parameters["@Date_r"].Value = dateTimePicker2.Value;
            cmd.ExecuteScalar();
            MessageBox.Show("Добавление записей в таблицу Reader ");
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, select_Reader, FMain.SelfRef.dataGridView2);
        }
    }
}
