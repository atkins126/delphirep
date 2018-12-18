using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Library
{
    public partial class Registration : Form
    {
        public Registration()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex == 0)
            {
                if (textBox1.Text == "123")
                {
                    FMain frm = new FMain();
                    frm.Text = "Library 1.0 Добро подаловать";
                    frm.ShowDialog();
                }
                else
                {
                    MessageBox.Show("Для пользователя " + comboBox1.Text + " пароль не верный");
                }
            }
            if (comboBox1.SelectedIndex == 1)
            {
                if (textBox1.Text == "321")
                {
                    FMain frm = new FMain();
                    frm.Text = "Library 1.0 Добро пожаловать";
                    frm.ShowDialog();
                }
                else
                {
                    MessageBox.Show("Для пользователя " + comboBox1.Text + " пароль не верный");
                }
            }
        }
    }
}

