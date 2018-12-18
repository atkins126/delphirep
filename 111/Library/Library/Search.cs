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
    public partial class Search : Form
    {
        public Search()
        {
           
            InitializeComponent();
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, select_book, dataGridView1);
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, select_doc, dataGridView2);
            FMain.SelfRef.conn2(FMain.SelfRef.connectionString, select_Ganre, comboBox2, "Название", "IDЖанра");
            FMain.SelfRef.conn2(FMain.SelfRef.connectionString, select_Author, comboBox1, "Имя", "IDАвтора");
            SelfRef = this;
        }
       public string select_book = "SELECT Book.ID_Book AS ID, Book.Name_B AS Название, Author.Name_Author AS Автор, Ganre.Name_G AS Жанр, " +
       "Book.Sourse AS Источник, kol AS Количество, Book.Price AS Цена, Book.Publisher AS Издательство, Book.Number_of_Pages AS [Кол-во стр]," +
       " Book.Year_of_Pub AS [Год издания] FROM Author,Ganre,Book WHERE Author.ID_Author = Book.ID_Author AND Book.ID_Genre =Ganre.ID_Genre";
       public string select_doc = "Select * From Doc ";
        string select_Ganre = "SELECT ID_Genre AS IDЖанра, Name_G as Название FROM Ganre";
        string select_Author = "SELECT ID_Author as IDАвтора, Name_Author as Имя FROM Author";
        string query_g = "";
        string query_a = "";


        public static Search SelfRef
        {
            get;
            set;
        }

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            string query_d = "";
            string id_book = dataGridView1[0, dataGridView1.CurrentRow.Index].Value.ToString();
            query_d = select_doc + " WHERE Doc.id_book=" + id_book;
            //MessageBox.Show(query_d);
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, query_d, dataGridView2);
        }



        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            string query_b = select_book;
            if (textBox1.Text != "")
            {
                query_b = select_book + " and Name_B LIKE " + "'" + textBox1.Text + "%" + "'";
            }
            else
            {
                query_b = select_book;
            }
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, query_b, dataGridView1);
        }

        private void comboBox1_SelectedValueChanged(object sender, EventArgs e)
        {

            if (Convert.ToString(comboBox1.SelectedValue) != "System.Data.DataRowView")
            {

                string select_Book = "SELECT Book.ID_Book AS ID, Book.Name_B AS Название, Author.Name_Author AS Автор, Ganre.Name_G AS Жанр, " +
              "Book.Sourse AS Источник, COUNT(ID_Book) AS Количество, Book.Price AS Цена, Book.Publisher AS Издательство, Book.Number_of_Pages AS [Кол-во стр]," +
              " Book.Year_of_Pub AS [Год издания] FROM Author,Ganre,Book WHERE Author.ID_Author = Book.ID_Author AND Book.ID_Genre =Ganre.ID_Genre  and Author.ID_Author = " + Convert.ToString(comboBox1.SelectedValue) +
              " GROUP BY Book.ID_Book, Book.Name_B, Author.Name_Author, Ganre.Name_G, Book.Sourse,  Book.Price , Book.Publisher , Book.Number_of_Pages, Book.Year_of_Pub";
                query_a = select_Book;
                //MessageBox.Show(query_g);
            }
            else
                query_a = select_book;
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, query_a, dataGridView1);

        }


        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToString(comboBox2.SelectedValue) != "System.Data.DataRowView")
            {

                string select_Book = "SELECT Book.ID_Book AS ID, Book.Name_B AS Название, Author.Name_Author AS Автор, Ganre.Name_G AS Жанр, " +
               "Book.Sourse AS Источник, COUNT(ID_Book) AS Количество, Book.Price AS Цена, Book.Publisher AS Издательство, Book.Number_of_Pages AS [Кол-во стр]," +
               " Book.Year_of_Pub AS [Год издания] FROM Author,Ganre,Book WHERE Author.ID_Author = Book.ID_Author AND Book.ID_Genre =Ganre.ID_Genre  and Ganre.ID_Genre = " + Convert.ToString(comboBox2.SelectedValue) +
               " GROUP BY Book.ID_Book, Book.Name_B, Author.Name_Author, Ganre.Name_G, Book.Sourse,  Book.Price , Book.Publisher , Book.Number_of_Pages, Book.Year_of_Pub";
                query_g = select_Book;
            }
            else query_g = select_book;
            FMain.SelfRef.conn(FMain.SelfRef.connectionString, query_g, dataGridView1);

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(checkBox1.Checked)
            {
                comboBox1.Enabled = true;
            }
            else
            {
                comboBox1.Enabled = false;
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
            {
                comboBox2.Enabled = true;
            }
            else
            {
                comboBox2.Enabled = false;
            }
        }

        private void Search_Load(object sender, EventArgs e)
        {
            comboBox1.Enabled = false;
            comboBox2.Enabled = false;
        }

        private void checkBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox3.Checked)
            {
                string query_all = select_book;
                FMain.SelfRef.conn(FMain.SelfRef.connectionString, query_all, dataGridView1);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            vydacha frm = new vydacha();

            frm.textBox1.Text = dataGridView2[0, dataGridView2.CurrentRow.Index].Value.ToString();
            frm.textBox2.Text = dataGridView1[2, dataGridView1.CurrentRow.Index].Value.ToString();
            frm.textBox3.Text = dataGridView1[1, dataGridView1.CurrentRow.Index].Value.ToString();
            frm.ShowDialog();
        }


    }
}
    
