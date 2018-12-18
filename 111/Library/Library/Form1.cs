using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;
using Excel = Microsoft.Office.Interop.Excel;

namespace Library
{
    public partial class FMain : Form
    {


        public FMain()
        {
            InitializeComponent();




             SelfRef = this;
            SqlConnectionStringBuilder csBuilder = new SqlConnectionStringBuilder(ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString);
            string ServerName = csBuilder.DataSource;
            string DBName = csBuilder.InitialCatalog;
            connectionString = "Data Source=" + ServerName + "; Initial Catalog = " + DBName + "; Integrated Security = True"; 
            conn(connectionString, select_Ganre, dataGridView1);
            conn(connectionString, select_Author, dataGridView1);
            conn(connectionString, select_Book, dataGridView3);
            conn2(connectionString, select_Ganre, comboBox2, "Название", "IDЖанра");
            conn2(connectionString, select_Author, comboBox3, "Имя", "IDАвтора");
            conn(connectionString, select_Reader, dataGridView2);
            conn(connectionString, query_delivery, dataGridView4);
        }
        public static FMain SelfRef
        {
            get;
            set;
        }
        public string query_a = "";
        public string query_g = "";
        public  string connectionString = "";
        const string select_Ganre = "SELECT ID_Genre AS IDЖанра, Name_G as Название FROM Ganre";
        const string select_Author = "SELECT ID_Author as IDАвтора, Name_Author as Имя FROM Author";
        const string select_Book = "SELECT Book.ID_Book AS ID, Book.Name_B AS Название, Author.Name_Author AS Автор, Ganre.Name_G AS Жанр, " +
            "Book.Sourse AS Источник, kol AS Количество, Book.Price AS Цена, Book.Publisher AS Издательство, Book.Number_of_Pages AS [Кол-во стр]," +
            " Book.Year_of_Pub AS [Год издания] FROM Author,Ganre,Book WHERE Author.ID_Author = Book.ID_Author AND Book.ID_Genre =Ganre.ID_Genre";
        const string select_Reader = "Select id_Reader AS [ID читателя], Name_R as ФИО, Date_B AS[Дата рождения], Adres as Адрес, Tel as Телефон, " +
             "Date_R AS [Дата регистрации] from Reader";
        public string query_delivery = "SELECT Delivery.ID_Delivery AS [№пп],Reader.Name_R AS [ФИО абонента],Doc.ID_Doc AS [рег. №],Delivery.Date_D AS [Дата выдачи],Delivery.Date_Return_Plan AS [План.дата возврата],Delivery.Date_Return_Fact AS [Факт.дата возврата] FROM Delivery INNER JOIN READER ON Delivery.ID_Reader=Reader.ID_Reader INNER JOIN Doc ON Delivery.ID_Doc=Doc.ID_Doc";
        public void conn(string CS, string cmdT, DataGridView dgv)
        {
            SqlDataAdapter Adapter = new SqlDataAdapter(cmdT, CS);
            DataSet ds = new DataSet();
            Adapter.Fill(ds, "Table");
            dgv.DataSource = ds.Tables["Table"].DefaultView;
        }
        public void conn2(string CS, string cmdT, ComboBox CB, string field1, string field2)
        {
            SqlDataAdapter Adapter = new SqlDataAdapter(cmdT, CS);
            DataSet ds = new DataSet();
            Adapter.Fill(ds, "Table");
            CB.DataSource = ds.Tables["Table"];
            CB.DisplayMember = field1;
            CB.ValueMember = field2;
        }
        private void FMain_Load(object sender, EventArgs e)
        {

  
            lblDate.Text = "Сегодня " + DateTime.Now.ToShortDateString();
            lblTime.Text = "Время " + DateTime.Now.ToLongTimeString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lblTime.Text = "Время " + DateTime.Now.ToLongTimeString();
            timer1.Start();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
       {
            if (comboBox1.SelectedIndex == 0)
            {
                conn(connectionString, select_Ganre, dataGridView1);
            }
            if (comboBox1.SelectedIndex == 1)
            {
                conn(connectionString, select_Author, dataGridView1);
            }
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
           conn2(connectionString, select_Ganre, comboBox2, "Name_G", "ID_Genre");
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
           conn2(connectionString, select_Author, comboBox3, "Name_Author", "ID_Author");
        }

        private void comboBox2_SelectedValueChanged(object sender, EventArgs e)
        {
            
            if (Convert.ToString(comboBox2.SelectedValue) != "System.Data.DataRowView")
            {

               string select_Book = "SELECT Book.ID_Book AS ID, Book.Name_B AS Название, Author.Name_Author AS Автор, Ganre.Name_G AS Жанр, " +
            "Book.Sourse AS Источник, COUNT(ID_Book) AS Количество, Book.Price AS Цена, Book.Publisher AS Издательство, Book.Number_of_Pages AS [Кол-во стр]," +
            " Book.Year_of_Pub AS [Год издания] FROM Author,Ganre,Book WHERE Author.ID_Author = Book.ID_Author AND Book.ID_Genre =Ganre.ID_Genre  and Ganre.ID_Genre = " + Convert.ToString(comboBox2.SelectedValue) +
            " GROUP BY Book.ID_Book, Book.Name_B, Author.Name_Author, Ganre.Name_G, Book.Sourse,  Book.Price , Book.Publisher , Book.Number_of_Pages, Book.Year_of_Pub";
                query_g = select_Book;
            }
            else query_g = select_Book;
            conn(connectionString, query_g, dataGridView3);
        }

        private void comboBox3_SelectedValueChanged(object sender, EventArgs e)
        {
           
            if (Convert.ToString(comboBox3.SelectedValue) != "System.Data.DataRowView")
            {

              string  select_Book = "SELECT Book.ID_Book AS ID, Book.Name_B AS Название, Author.Name_Author AS Автор, Ganre.Name_G AS Жанр, " +
            "Book.Sourse AS Источник, COUNT(ID_Book) AS Количество, Book.Price AS Цена, Book.Publisher AS Издательство, Book.Number_of_Pages AS [Кол-во стр]," +
            " Book.Year_of_Pub AS [Год издания] FROM Author,Ganre,Book WHERE Author.ID_Author = Book.ID_Author AND Book.ID_Genre =Ganre.ID_Genre  and Author.ID_Author = " + Convert.ToString(comboBox3.SelectedValue) +
            " GROUP BY Book.ID_Book, Book.Name_B, Author.Name_Author, Ganre.Name_G, Book.Sourse,  Book.Price , Book.Publisher , Book.Number_of_Pages, Book.Year_of_Pub";
                query_a = select_Book;
                //MessageBox.Show(query_g);
            }
            else query_a = select_Book;
            conn(connectionString, query_a, dataGridView3);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Ins_Book FIns_I = new Ins_Book();
            FIns_I.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Ins_Book FIns_I = new Ins_Book();
            FIns_I.ShowDialog();

        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            string query_r = select_Reader;
            if (txtSearch.Text!="")
            {
                query_r = select_Reader + " where Name_R LIKE " + "'" + txtSearch.Text + "%" + "'";
            }
            else
            {
                query_r = select_Reader;
            }
            conn(connectionString, query_r, dataGridView2);
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            Add_reader abon = new Add_reader();
            abon.ShowDialog();
        }

  

        private void button4_Click(object sender, EventArgs e)
        {
            Search sch = new Search();
            sch.ShowDialog();
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            string query_d = "";
            query_d = query_delivery + " where delivery.date_d >= " +
                "'" + dateTimePicker1.Value + "'" ;
            conn(connectionString, query_d, dataGridView4);
            checkBox1.Checked = false;

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                conn(connectionString, query_delivery, dataGridView4);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString = connectionString;
            conn1.Open();
            SqlCommand cmd = conn1.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[Upd_Delivary]";
            cmd.Parameters.Add("@Date_Return_Fact", SqlDbType.Date, 150);
            cmd.Parameters["@Date_Return_Fact"].Value = dateTimePicker3.Value;
            cmd.Parameters.Add("@ID_Delivery", SqlDbType.Int, 4);
            string ID_Delivery = dataGridView4[0, dataGridView4.CurrentRow.Index].Value.ToString();
            cmd.Parameters["@ID_Delivery"].Value = ID_Delivery;
            cmd.Parameters.Add("@ID_Doc", SqlDbType.Int, 4);
            string ID_Doc= dataGridView4[2, dataGridView4.CurrentRow.Index].Value.ToString();
            cmd.Parameters["@ID_Doc"].Value = ID_Doc;
            cmd.ExecuteNonQuery();
            MessageBox.Show("Изменения внесены.", "Добавление записей");
            conn(connectionString, query_delivery, dataGridView4);
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString = connectionString; 
            conn1.Open();
            SqlCommand cmd = conn1.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[REPORT_1]";
            cmd.Parameters.Add("@D1", SqlDbType.Date, 4);
            cmd.Parameters["@D1"].Value = dateTimePicker4.Value;
            cmd.Parameters.Add("@D2", SqlDbType.Date, 4);
            cmd.Parameters["@D2"].Value = dateTimePicker5.Value;
            SqlDataAdapter ReportAdapter = new SqlDataAdapter();
            ReportAdapter.SelectCommand = cmd;
            DataSet dsReport = new DataSet();
            ReportAdapter.Fill(dsReport, "Report");
            dataGridView5.DataSource = dsReport.Tables["Report"].DefaultView;
            Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook ExcelWorkBook;
            Microsoft.Office.Interop.Excel.Worksheet ExcelWorkSheet;
            Microsoft.Office.Interop.Excel.Range ExcelCells;
            ExcelWorkBook = ExcelApp.Workbooks.Add(System.Reflection.Missing.Value);
            ExcelWorkSheet = (Microsoft.Office.Interop.Excel.Worksheet)ExcelWorkBook.Worksheets.get_Item(1);
            string d1 = dateTimePicker4.Value.Day.ToString() + "." + dateTimePicker4.Value.Month.ToString() + "." + dateTimePicker4.Value.Year.ToString();
            string d2 = dateTimePicker5.Value.Day.ToString() + "." + dateTimePicker5.Value.Month.ToString() + "." + dateTimePicker5.Value.Year.ToString();
            ExcelApp.Cells[1, 1] = "Рейтинг книг за период с " + d1 + " по " + d2;
            for (int i = 0; i < dataGridView5.ColumnCount; i++)
            {
                ExcelApp.Cells[2, i + 1] = dataGridView5.Columns[i].HeaderCell.Value;
            }
            for (int i = 0; i < dataGridView5.Rows.Count; i++)
            {
                for (int j = 0; j < dataGridView5.ColumnCount; j++)
                {
                    ExcelApp.Cells[i + 3, j + 1] = dataGridView5.Rows[i].Cells[j].Value;
                }
            }
            int istr = dataGridView5.Rows.Count + 1;
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Columns[2], ExcelWorkSheet.Columns[1]];
            ExcelCells.EntireColumn.AutoFit();
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Columns[1], ExcelWorkSheet.Columns[2]];
            ExcelCells.HorizontalAlignment = Excel.Constants.xlLeft;
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Cells[2, 1], ExcelWorkSheet.Cells[istr, 2]];
            ExcelCells.Borders.LineStyle = Excel.XlLineStyle.xlContinuous;
            ExcelCells.Borders.Weight = Excel.XlBorderWeight.xlThin;
            ExcelApp.Visible = true;
            ExcelApp.UserControl = true;

        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString = connectionString;
            conn1.Open();
            SqlCommand cmd = conn1.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[REPORT_2]";
            cmd.Parameters.Add("@D1", SqlDbType.Date, 4);
            cmd.Parameters["@D1"].Value = dateTimePicker4.Value;
            cmd.Parameters.Add("@D2", SqlDbType.Date, 4);
            cmd.Parameters["@D2"].Value = dateTimePicker5.Value;
            SqlDataAdapter ReportAdapter = new SqlDataAdapter();
            ReportAdapter.SelectCommand = cmd;
            DataSet dsReport = new DataSet();
            ReportAdapter.Fill(dsReport, "Report");
            dataGridView5.DataSource = dsReport.Tables["Report"].DefaultView;
            Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook ExcelWorkBook;
            Microsoft.Office.Interop.Excel.Worksheet ExcelWorkSheet;
            Microsoft.Office.Interop.Excel.Range ExcelCells;
            ExcelWorkBook = ExcelApp.Workbooks.Add(System.Reflection.Missing.Value);
            ExcelWorkSheet = (Microsoft.Office.Interop.Excel.Worksheet)ExcelWorkBook.Worksheets.get_Item(1);
            string d1 = dateTimePicker4.Value.Day.ToString() + "." + dateTimePicker4.Value.Month.ToString() + "." + dateTimePicker4.Value.Year.ToString();
            string d2 = dateTimePicker5.Value.Day.ToString() + "." + dateTimePicker5.Value.Month.ToString() + "." + dateTimePicker5.Value.Year.ToString();
            ExcelApp.Cells[1, 1] = "Рейтинг жанров за период с " + d1 + " по " + d2;
            for (int i = 0; i < dataGridView5.ColumnCount; i++)
            {
                ExcelApp.Cells[2, i + 1] = dataGridView5.Columns[i].HeaderCell.Value;
            }
            for (int i = 0; i < dataGridView5.Rows.Count; i++)
            {
                for (int j = 0; j < dataGridView5.ColumnCount; j++)
                {
                    ExcelApp.Cells[i + 3, j + 1] = dataGridView5.Rows[i].Cells[j].Value;
                }
            }
            int istr = dataGridView5.Rows.Count + 1;
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Columns[2], ExcelWorkSheet.Columns[1]];
            ExcelCells.EntireColumn.AutoFit();
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Columns[1], ExcelWorkSheet.Columns[2]];
            ExcelCells.HorizontalAlignment = Excel.Constants.xlLeft;
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Cells[2, 1], ExcelWorkSheet.Cells[istr, 2]];
            ExcelCells.Borders.LineStyle = Excel.XlLineStyle.xlContinuous;
            ExcelCells.Borders.Weight = Excel.XlBorderWeight.xlThin;
            ExcelApp.Visible = true;
            ExcelApp.UserControl = true;
        }

        private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString = connectionString;
            conn1.Open();
            SqlCommand cmd = conn1.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[REPORT_3]";
            cmd.Parameters.Add("@D1", SqlDbType.Date, 4);
            cmd.Parameters["@D1"].Value = dateTimePicker4.Value;
            cmd.Parameters.Add("@D2", SqlDbType.Date, 4);
            cmd.Parameters["@D2"].Value = dateTimePicker5.Value;
            SqlDataAdapter ReportAdapter = new SqlDataAdapter();
            ReportAdapter.SelectCommand = cmd;
            DataSet dsReport = new DataSet();
            ReportAdapter.Fill(dsReport, "Report");
            dataGridView5.DataSource = dsReport.Tables["Report"].DefaultView;
            Microsoft.Office.Interop.Excel.Application ExcelApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook ExcelWorkBook;
            Microsoft.Office.Interop.Excel.Worksheet ExcelWorkSheet;
            Microsoft.Office.Interop.Excel.Range ExcelCells;
            ExcelWorkBook = ExcelApp.Workbooks.Add(System.Reflection.Missing.Value);
            ExcelWorkSheet = (Microsoft.Office.Interop.Excel.Worksheet)ExcelWorkBook.Worksheets.get_Item(1);
            string d1 = dateTimePicker4.Value.Day.ToString() + "." + dateTimePicker4.Value.Month.ToString() + "." + dateTimePicker4.Value.Year.ToString();
            string d2 = dateTimePicker5.Value.Day.ToString() + "." + dateTimePicker5.Value.Month.ToString() + "." + dateTimePicker5.Value.Year.ToString();
            ExcelApp.Cells[1, 1] = "Рейтинг авторов за период с " + d1 + " по " + d2;
            for (int i = 0; i < dataGridView5.ColumnCount; i++)
            {
                ExcelApp.Cells[2, i + 1] = dataGridView5.Columns[i].HeaderCell.Value;
            }
            for (int i = 0; i < dataGridView5.Rows.Count; i++)
            {
                for (int j = 0; j < dataGridView5.ColumnCount; j++)
                {
                    ExcelApp.Cells[i + 3, j + 1] = dataGridView5.Rows[i].Cells[j].Value;
                }
            }
            int istr = dataGridView5.Rows.Count + 1;
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Columns[2], ExcelWorkSheet.Columns[1]];
            ExcelCells.EntireColumn.AutoFit();
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Columns[1], ExcelWorkSheet.Columns[2]];
            ExcelCells.HorizontalAlignment = Excel.Constants.xlLeft;
            ExcelCells = ExcelApp.Range[ExcelWorkSheet.Cells[2, 1], ExcelWorkSheet.Cells[istr, 2]];
            ExcelCells.Borders.LineStyle = Excel.XlLineStyle.xlContinuous;
            ExcelCells.Borders.Weight = Excel.XlBorderWeight.xlThin;
            ExcelApp.Visible = true;
            ExcelApp.UserControl = true;
        }

        private void linkLabel4_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString = connectionString;
            conn1.Open();
            SqlCommand cmd = conn1.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "[REPORT_4]";
            cmd.Parameters.Add("@D1", SqlDbType.Date, 4);
            cmd.Parameters["@D1"].Value = dateTimePicker4.Value;
            cmd.Parameters.Add("@D2", SqlDbType.Date, 4);
            cmd.Parameters["@D2"].Value = dateTimePicker5.Value;
            SqlDataAdapter ReportAdapter = new SqlDataAdapter();
            ReportAdapter.SelectCommand = cmd;
            DataSet dsReport = new DataSet();
            ReportAdapter.Fill(dsReport, "Report");
            dataGridView5.DataSource = dsReport.Tables["Report"].DefaultView;
            Microsoft.Office.Interop.Excel.Application ExApp = new Microsoft.Office.Interop.Excel.Application();
            Microsoft.Office.Interop.Excel.Workbook ExcelWB;
            Microsoft.Office.Interop.Excel.Worksheet ExcelWS;
            Microsoft.Office.Interop.Excel.Range ExcelC;
            ExcelWB = ExApp.Workbooks.Add(System.Reflection.Missing.Value);
            ExcelWS = (Microsoft.Office.Interop.Excel.Worksheet)ExcelWB.Worksheets.get_Item(1);
            string d1 = dateTimePicker4.Value.Day.ToString() + "." + dateTimePicker4.Value.Month.ToString() + "." + dateTimePicker4.Value.Year.ToString();
            string d2 = dateTimePicker5.Value.Day.ToString() + "." + dateTimePicker5.Value.Month.ToString() + "." + dateTimePicker5.Value.Year.ToString();
            ExApp.Cells[1, 1] = "Отчет о задолженостях за период с " + d1 + " по " + d2;
            for (int i = 0; i < dataGridView5.ColumnCount; i++)
            {
                ExApp.Cells[2, i + 1] = dataGridView5.Columns[i].HeaderCell.Value;
            }
            for (int i = 0; i < dataGridView5.Rows.Count; i++)
            {
                for (int j = 0; j < dataGridView5.ColumnCount; j++)
                {
                    ExApp.Cells[i + 3, j + 1] = dataGridView5.Rows[i].Cells[j].Value;
                }
            }
            int istr = dataGridView5.Rows.Count + 1;
            ExcelC = ExApp.Range[ExcelWS.Columns[1], ExcelWS.Columns[5]];
            ExcelC.EntireColumn.AutoFit();
            ExcelC = ExApp.Range[ExcelWS.Columns[1], ExcelWS.Columns[5]];
            ExcelC.HorizontalAlignment = Excel.Constants.xlLeft;
            ExcelC = ExApp.Range[ExcelWS.Cells[2, 1], ExcelWS.Cells[istr, 5]];
            ExcelC.Borders.LineStyle = Excel.XlLineStyle.xlContinuous;
            ExcelC.Borders.Weight = Excel.XlBorderWeight.xlThin;
            ExApp.Visible = true;
            ExApp.UserControl = true;
        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {
            string query_d = "";
            query_d = query_delivery + " where delivery.date_d <= " +
                "'" + dateTimePicker2.Value + "'";
            conn(connectionString, query_d, dataGridView4);
            checkBox1.Checked = false;
        }


    }
}
