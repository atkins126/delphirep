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
    public partial class Ins_Book : Form
    {
        public Ins_Book()
        {
            InitializeComponent();
            FMain.SelfRef.conn2( FMain.SelfRef.connectionString, select_Ganre, comboBox2, "Название", "IDЖанра") ;
            FMain.SelfRef.conn2(FMain.SelfRef.connectionString, select_Author, comboBox3, "Имя", "IDАвтора");
        }
        const string select_Ganre = "SELECT ID_Genre AS IDЖанра, Name_G as Название FROM Ganre";
        const string select_Author = "SELECT ID_Author as IDАвтора, Name_Author as Имя FROM Author";
        const string select_katalog = "SELECT Book.ID_Book AS ID, Book.Name_B AS Название, Author.Name_Author AS Автор, Ganre.Name_G AS Жанр, " +
            "Book.Sourse AS Источник, kol AS Количество, Book.Price AS Цена, Book.Publisher AS Издательство, Book.Number_of_Pages AS [Кол-во стр]," +
            " Book.Year_of_Pub AS [Год издания] FROM Author,Ganre,Book WHERE Author.ID_Author = Book.ID_Author AND Book.ID_Genre =Ganre.ID_Genre" ;


        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = FMain.SelfRef.connectionString;
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[ins_Book]";
            cmd.Parameters.Add("@NAME_B", SqlDbType.NVarChar, 150);
            cmd.Parameters["@NAME_B"].Value = txtName.Text;
            cmd.Parameters.Add("@SOURCE", SqlDbType.NVarChar, 70);
            cmd.Parameters["@SOURCE"].Value = comboBox1.Text;
            cmd.Parameters.Add("@DATE_P", SqlDbType.Date, 70);
            cmd.Parameters["@DATE_P"].Value = dateTimePicker1.Value;
            cmd.Parameters.Add("@COUNT", SqlDbType.Int, 4);
            cmd.Parameters["@COUNT"].Value = Convert.ToInt32( txtCount.Text);
            cmd.Parameters.Add("@PRICE", SqlDbType.Decimal, 5);
            cmd.Parameters["@PRICE"].Value = Convert.ToDecimal(txtPrice.Text);
            cmd.Parameters.Add("@ID_GENRE", SqlDbType.Int, 4);
            cmd.Parameters["@ID_GENRE"].Value = comboBox2.SelectedValue;
            cmd.Parameters.Add("@ID_AUTHOR", SqlDbType.Int, 4);
            cmd.Parameters["@ID_AUTHOR"].Value = comboBox3.SelectedValue;
            cmd.Parameters.Add("@PUBLISHER", SqlDbType.NVarChar, 150);
            cmd.Parameters["@PUBLISHER"].Value = txtPub.Text;
            cmd.Parameters.Add("@NAMBER_PAGES", SqlDbType.Int, 4);
            cmd.Parameters["@NAMBER_PAGES"].Value = Convert.ToInt32( txtPageCount.Text);
            cmd.Parameters.Add("@YEAR_PUB", SqlDbType.Int, 4);
            cmd.Parameters["@YEAR_PUB"].Value = Convert.ToInt32(txtYear.Text);
            cmd.Parameters.Add("@Id", SqlDbType.Int, 4);
            cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
            cmd.ExecuteScalar();
            int ID_Book = Convert.ToInt32(cmd.Parameters["@id"].Value);
            MessageBox.Show("Изменения внесены. ID= " + ID_Book.ToString()+ "Добавление записей");
            int Count_Doc = Convert.ToInt32(txtCount.Text);
            int k = 0;
            for(int i=0; i<Count_Doc;i++)
            {
                SqlCommand cmdd = conn.CreateCommand();
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.CommandText = "[INS_DOC]";
                cmdd.Parameters.Add("@ID_Book", SqlDbType.Int, 4);
                cmdd.Parameters["@ID_Book"].Value = ID_Book;
                cmdd.Parameters.Add("@Status", SqlDbType.Int, 4);
                cmdd.Parameters["@Status"].Value = "0";
                cmdd.ExecuteNonQuery();
                k++;
            }
            MessageBox.Show("Изменения внесены. Добавлено документов - " + k, "Добавление записей");
            if(FMain.SelfRef!=null)
            {
                FMain.SelfRef.conn(FMain.SelfRef.connectionString, select_katalog, FMain.SelfRef.dataGridView3);
            }
        }
     }
  }

