using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Collections;

namespace Pengunjung_CCITLibrary
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        Koneksi conn = new Koneksi();
        SqlConnection koneksi;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string sql = null;
        DataView dv;

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string judul = txtJudul.Text;
                koneksi = conn.con();
                koneksi.Open();
                SqlCommand sqlcari = new SqlCommand("select * from tb_Buku", koneksi);
                //SqlCommand sqlcari1 = new SqlCommand("select * from tb_Kategori", koneksi);
                sqlcari = new SqlCommand(sql, koneksi);
                //sqlcari1 = new SqlCommand(sql, koneksi);
                adapter.SelectCommand = sqlcari;
                //adapter.SelectCommand = sqlcari1;
                adapter.Fill(ds, "Sort DataView");
                //adapter.Fill(ds, "Sort DataView");
                adapter.Dispose();
                //sqlcari.Dispose();
                koneksi.Close();

                dv.RowFilter = "judul_buku like '%" + txtJudul.Text + "%'";
                //dv.RowFilter = "judul_buku like '%" + cbxkategori.SelectedIndex + "%'";
                dataGridView1.DataSource = dv;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                koneksi.Close();
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                koneksi = conn.con();
                koneksi.Open();
                sql = "Select * from tb_Buku order by id_Buku desc";
                adapter.SelectCommand = new SqlCommand(sql, koneksi);
                adapter.Fill(ds, "Buku");
                dv = new DataView();
                dv.Table = ds.Tables[0];
                dataGridView1.DataSource = dv;
                koneksi.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                koneksi.Close();
            }

        }

       
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adapter1 = new SqlDataAdapter();
            DataSet ds1 = new DataSet();
            string sql1 = null;
            DataView dv1;
            try
            {
                koneksi = conn.con();
                koneksi.Open();
                sql1 = "Select * from tb_Buku order by id_Buku desc";
                adapter1.SelectCommand = new SqlCommand(sql1, koneksi);
                adapter1.Fill(ds1, "Buku");
                dv1 = new DataView();
                dv1.Table = ds1.Tables[0];
                dataGridView1.DataSource = dv1;
                koneksi.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                koneksi.Close();
            }
        

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.twitter.com/@Dika_Ashter12/");
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.twitter.com/@Ugiispoyo/");
        }
    }
}
