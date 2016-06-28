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
    public partial class MenuUtama : Form
    {
        public MenuUtama()
        {
            InitializeComponent();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            Member mbr = new Member();
            mbr.Show();
            this.Hide();
        }

        private void MenuUtama_Load(object sender, EventArgs e)
        {
            SqlParameter sqlP;

            FileStream fs = new FileStream("tempadmin.txt", FileMode.Open, FileAccess.Read);
            StreamReader sr = new StreamReader(fs);
            string line = sr.ReadLine();
            label5.Text = line;
            String cek = label5.Text;
            sr.Close();
            fs.Close();

            Koneksi conn = new Koneksi();
            SqlConnection koneksi = conn.con();
            koneksi.Open();
            SqlCommand cekadmin = new SqlCommand("select * from tb_Admin where id_admin = @cek ", koneksi);
            sqlP = cekadmin.Parameters.Add("@cek", SqlDbType.VarChar, 15);
            sqlP.Value = cek;
            try
            {
                SqlDataReader reader = cekadmin.ExecuteReader();
                while (reader.Read())
                {
                    label6.Text = reader[3].ToString();
                    if (label6.Text == "Admin")
                    {
                        pictureBox1.Enabled = true;
                    }
                    else
                    {
                        pictureBox1.Enabled = false;
                    }
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Gagal");
            }
            finally
            {
                koneksi.Close();
            }

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Admin adm = new Admin();
            adm.Show();
            this.Hide();
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
            Buku buku = new Buku();
            buku.Show();
            this.Hide();
        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            Peminjaman pmjn = new Peminjaman();
            pmjn.Show();
            this.Hide();
        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {
            Koneksi conn = new Koneksi();
            SqlConnection koneksi = conn.con();
            koneksi.Open();
            string status = "No";
            string status1 = "Yes";
            SqlCommand sqlupdate = new SqlCommand("update tb_Admin set status = @status where status = @status1", koneksi);
            using (sqlupdate)
            {
                sqlupdate.Parameters.AddWithValue("@status", status);
                sqlupdate.Parameters.AddWithValue("@status1", status1);
                int result = sqlupdate.ExecuteNonQuery();
                if (result != 0)
                {
                    Login lgn = new Login();
                    lgn.Show();
                    this.Hide();
                    File.Delete("tempadmin.txt");
                }
            }
        }
    }
}
