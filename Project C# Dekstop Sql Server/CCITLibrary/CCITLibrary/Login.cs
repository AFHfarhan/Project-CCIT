using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;

namespace CCITLibrary
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string nama = textBox1.Text;
            string pswd = textBox2.Text;
            Koneksi conn = new Koneksi();
            SqlConnection koneksi = conn.con();
            koneksi.Open();
            SqlCommand sqllogin = new SqlCommand("Select * from tb_Admin where nama = @nama", koneksi);
            SqlParameter sqlP;
            sqlP = sqllogin.Parameters.Add("@nama", SqlDbType.VarChar, 15);
            sqlP.Value = nama;
            
            try
            {
                SqlDataReader reader = sqllogin.ExecuteReader();
                if(reader.Read())
                {
                    string id = reader[0].ToString();
                    string user = reader[1].ToString();
                    string password = reader[5].ToString();
                    if (nama == user && pswd == password)
                    {
                        string status = "Yes";
                        koneksi = conn.con();
                        koneksi.Open();
                        SqlCommand sqlupdate = new SqlCommand("update tb_Admin set status = @status where nama = @nama", koneksi);
                        using (sqlupdate)
                        {
                            sqlupdate.Parameters.AddWithValue("@status", status);
                            sqlupdate.Parameters.AddWithValue("@nama", nama);
                            int result = sqlupdate.ExecuteNonQuery();
                            if (result != 0)
                            {
                                FileStream fs = new FileStream("tempadmin.txt", FileMode.Append, FileAccess.Write);
                                StreamWriter sw = new StreamWriter(fs);
                                sw.WriteLine(id);
                                sw.Flush();
                                sw.Close();
                                fs.Close();

                                MenuUtama mu = new MenuUtama();
                                mu.Show();
                                this.Hide();
                             }
                        }
                    }
                    else
                    {
                        MessageBox.Show("Login Gagal, Cek Nama Dan Password Anda!");
                        textBox1.Text = "";
                        textBox2.Text = "";
                    }
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Gagal");
                textBox1.Text = "";
                textBox2.Text = "";
            }
            finally
            {
                koneksi.Close();
            }
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }
    }
}
