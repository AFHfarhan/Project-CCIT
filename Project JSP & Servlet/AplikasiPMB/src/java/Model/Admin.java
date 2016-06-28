/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Config.KoneksiDatabase;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Ugi Ispoyo Widodo
 */
public class Admin {
    KoneksiDatabase Koneksi = new KoneksiDatabase();
    
    private String IDAdmin;
    private String Nama;
    private String Username;
    private String Password;
    private String Status;
    private String IdMajor;
    private String Program;
    private String Stage;
    private String Concentration;
    private String statusmajor;
    private String Quota;
    private String IDDes;
    private String Vision;
    private String Mision;
    private String Purpose;
    private String Motto;
    private String IdStudent;
    private String fullname;
    private String gender;
    private String birth;
    private String school;
    private String major;
    private String address;
    private String phone;
    private String email;
    private String graduation;
    private String photo;
    
    public String getIDAdmin() {
        return IDAdmin;
    }

    public void setIDAdmin(String IDAdmin) {
        this.IDAdmin = IDAdmin;
    }

    public String getNama() {
        return Nama;
    }

    public void setNama(String Nama) {
        this.Nama = Nama;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
   
    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }
    
    public String getIdMajor() {
        return IdMajor;
    }

    public void setIdMajor(String IdMajor) {
        this.IdMajor = IdMajor;
    }
    
    public String getProgram() {
        return Program;
    }

    public void setProgram(String Program) {
        this.Program = Program;
    }
    
    public String getStage() {
        return Stage;
    }

    public void setStage(String Stage) {
        this.Stage = Stage;
    }
    
    public String getConcentration() {
        return Concentration;
    }

    public void setConcentration(String Concentration) {
        this.Concentration = Concentration;
    }
    
    public String getstatusmajor() {
        return statusmajor;
    }

    public void setstatusmajor(String statusmajor) {
        this.statusmajor = statusmajor;
    }
    
    public String getQuota() {
        return Quota;
    }

    public void setQuota(String Quota) {
        this.Quota = Quota;
    }
    
    public String getIDDes() {
        return IDDes;
    }

    public void setIDDes(String IDDes) {
        this.IDDes = IDDes;
    }
    
    public String getVision() {
        return Vision;
    }

    public void setVision(String Vision) {
        this.Vision = Vision;
    }
    
    public String getMision() {
        return Mision;
    }

    public void setMision(String Mision) {
        this.Mision = Mision;
    }
    
    public String getPurpose() {
        return Purpose;
    }

    public void setPurpose(String Purpose) {
        this.Purpose = Purpose;
    }
    
    public String getMotto() {
        return Motto;
    }

    public void setMotto(String Motto) {
        this.Motto = Motto;
    }
    
    public String getIdStudent() {
        return IdStudent;
    }

    public void setIdStudent(String IdStudent) {
        this.IdStudent = IdStudent;
    }
    
    public String getfullname() {
        return fullname;
    }

    public void setfullname(String fullname) {
        this.fullname = fullname;
    }
    
    public String getgender() {
        return gender;
    }

    public void setgender(String gender) {
        this.gender = gender;
    }
    
    public String getbirth() {
        return birth;
    }

    public void setbirth(String birth) {
        this.birth = birth;
    }
    
    public String getschool() {
        return school;
    }

    public void setschool(String school) {
        this.school = school;
    }
    
    public String getmajor() {
        return major;
    }

    public void setmajor(String major) {
        this.major = major;
    }
    
    public String getaddress() {
        return address;
    }

    public void setaddress(String address) {
        this.address = address;
    }
    
    public String getphone() {
        return phone;
    }

    public void setphone(String phone) {
        this.phone = phone;
    }
    
    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }
    
    public String getgraduation() {
        return graduation;
    }

    public void setgraduation(String graduation) {
        this.graduation = graduation;
    }
    
    public String getphoto() {
        return photo;
    }

    public void setphoto(String photo) {
        this.photo = photo;
    }
    
    public String autoidadmin()
    {
        try 
        {
            Connection con = Koneksi.Open();
            
            String sql = "select top 1 id_admin from tb_admin order by id_admin desc";
            
            Statement state = con.createStatement(); //karna tidak memakai parameter
            ResultSet rs = state.executeQuery(sql);
            
            String idadmin = null;
            String id = null;
            
            if(rs.next())
            {
                idadmin = rs.getString("id_admin");
                String potong = idadmin.substring(1); //untung memotong id
                int subidadmin = Integer.parseInt(potong) + 1;
                
                if(subidadmin<10)
                {
                    id = "A000" + Integer.toString(subidadmin);
                }
                else if(subidadmin<100)
                {
                    id = "A00" + Integer.toString(subidadmin);
                }
                else if(subidadmin<1000)
                {
                    id = "A0" + Integer.toString(subidadmin);
                }
                else if(subidadmin<10000)
                {
                    id = "A" + Integer.toString(subidadmin);
                }
                
            }
            else 
            {
                id = "A0001";
            }
            return id;
        } 
        catch (Exception e) 
        {
            System.err.println(e);
            return null;
        }
    }
    
    public String autoidmajor()
    {
        try 
        {
            Connection con = Koneksi.Open();
            
            String sql = "select top 1 ID_Major from Major order by ID_Major desc";
            
            Statement state = con.createStatement(); //karna tidak memakai parameter
            ResultSet rs = state.executeQuery(sql);
            
            String idmajor = null;
            String id = null;
            
            if(rs.next())
            {
                idmajor = rs.getString("ID_Major");
                String potong = idmajor.substring(3); //untung memotong id
                int subidmajor = Integer.parseInt(potong) + 1;
                
                if(subidmajor<10)
                {
                    id = "MJR0" + Integer.toString(subidmajor);
                }
                else if(subidmajor<100)
                {
                    id = "MJR" + Integer.toString(subidmajor);
                }
            }
            else 
            {
                id = "MJR01";
            }
            return id;
        } 
        catch (Exception e) 
        {
            System.err.println(e);
            return null;
        }
    }
    
    public String autoiddescription()
    {
        try 
        {
            Connection con = Koneksi.Open();
            
            String sql = "select top 1 No from Description order by No desc";
            
            Statement state = con.createStatement(); //karna tidak memakai parameter
            ResultSet rs = state.executeQuery(sql);
            
            String iddesc = null;
            String id = null;
            
            if(rs.next())
            {
                iddesc = rs.getString("No");
                String potong = iddesc.substring(0); //untung memotong id
                int subiddesc = Integer.parseInt(potong) + 1;
                
                if(subiddesc<10)
                {
                    id = "0" + Integer.toString(subiddesc);
                }
            }
            else 
            {
                id = "1";
            }
            return id;
        } 
        catch (Exception e) 
        {
            System.err.println(e);
            return null;
        }
    }
    
    public int tambahAdmin() {
        int i = 0;
        try
        {
            Connection con = Koneksi.Open();
            
            String sql = "INSERT INTO tb_admin (id_admin, nama, username, password, status) VALUES(?,?,?,?,?)";
            PreparedStatement pr = con.prepareStatement(sql);
            
            pr.setString(1, IDAdmin.trim());
            pr.setString(2, Nama.trim());
            pr.setString(3, Username.trim());
            pr.setString(4, Password.trim());
            pr.setString(5, Status.trim());
            i = pr.executeUpdate();
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
    
    public int tambahMajor() {
        int i = 0;
        try
        {
            Connection con = Koneksi.Open();
            
            String sql = "INSERT INTO Major (ID_Major, Program, Stage, Concentration, Status, Quota) VALUES(?,?,?,?,?,?)";
            PreparedStatement pr = con.prepareStatement(sql);
            
            pr.setString(1, IdMajor.trim());
            pr.setString(2, Program.trim());
            pr.setString(3, Stage.trim());
            pr.setString(4, Concentration.trim());
            pr.setString(5, statusmajor.trim());
            pr.setString(6, Quota.trim());
            i = pr.executeUpdate();
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
    
    public int tambahDescription() {
        int i = 0;
        try
        {
            Connection con = Koneksi.Open();
            
            String sql = "INSERT INTO Description (ID_Des, Vision, Mission, Purpose, Motto) VALUES(?,?,?,?,?)";
            PreparedStatement pr = con.prepareStatement(sql);
            
            pr.setString(1, IDDes.trim());
            pr.setString(2, Vision.trim());
            pr.setString(3, Mision.trim());
            pr.setString(4, Purpose.trim());
            pr.setString(5, Motto.trim());
            i = pr.executeUpdate();
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
    
     public ArrayList displaydataadmin() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            Statement stmt = con.createStatement();
            String str = "SELECT id_admin, nama, username, status FROM tb_admin";
            ResultSet rs = stmt.executeQuery(str);            
            while(rs.next()) {
                this.setIDAdmin(rs.getString(1));
                this.setNama(rs.getString(2));
                this.setUsername(rs.getString(3));
                this.setStatus(rs.getString(4));
                data.add(this.getIDAdmin());
                data.add(this.getNama());
                data.add(this.getUsername());
                data.add(this.getStatus());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());            
        }
        return data;
    }
     
     public ArrayList displaydatamajor() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            Statement stmt = con.createStatement();
            String str = "SELECT ID_Major, Program, Stage, Concentration, Status, Quota FROM Major";
            ResultSet rs = stmt.executeQuery(str);            
            while(rs.next()) {
                this.setIdMajor(rs.getString(1));
                this.setProgram(rs.getString(2));
                this.setStage(rs.getString(3));
                this.setConcentration(rs.getString(4));
                this.setstatusmajor(rs.getString(5));
                this.setQuota(rs.getString(6));
                data.add(this.getIdMajor());
                data.add(this.getProgram());
                data.add(this.getStage());
                data.add(this.getConcentration());
                data.add(this.getstatusmajor());
                data.add(this.getQuota());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());            
        }
        return data;
    }
     
     public ArrayList displaydatadescription() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            Statement stmt = con.createStatement();
            String str = "SELECT ID_Des, Vision, Mission, Purpose, Motto FROM Description";
            ResultSet rs = stmt.executeQuery(str);            
            while(rs.next()) {
                this.setIDDes(rs.getString(1));
                this.setVision(rs.getString(2));
                this.setMision(rs.getString(3));
                this.setPurpose(rs.getString(4));
                this.setMotto(rs.getString(5));
                data.add(this.getIDDes());
                data.add(this.getVision());
                data.add(this.getMision());
                data.add(this.getPurpose());
                data.add(this.getMotto());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());            
        }
        return data;
    }
     
     public ArrayList displaydatastudent() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            Statement stmt = con.createStatement();
            String str = "SELECT ID_Student, ID_Major, Fullname, Gender, Birth, Schoolname, major, Address, Phone, Email, Graduation, Photo FROM tb_Student";
            ResultSet rs = stmt.executeQuery(str);            
            while(rs.next()) {
                this.setIdStudent(rs.getString(1));
                this.setIdMajor(rs.getString(2));
                this.setfullname(rs.getString(3));
                this.setgender(rs.getString(4));
                this.setbirth(rs.getString(5));
                this.setschool(rs.getString(6));
                this.setmajor(rs.getString(7));
                this.setaddress(rs.getString(8));
                this.setphone(rs.getString(9));
                this.setemail(rs.getString(10));
                this.setgraduation(rs.getString(11));
                this.setphoto(rs.getString(12));
                data.add(this.getIdStudent());
                data.add(this.getIdMajor());
                data.add(this.getfullname());
                data.add(this.getgender());
                data.add(this.getbirth());
                data.add(this.getschool());
                data.add(this.getmajor());
                data.add(this.getaddress());
                data.add(this.getphone());
                data.add(this.getemail());
                data.add(this.getgraduation());
                data.add(this.getphoto());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());            
        }
        return data;
    }
     
     public ArrayList getDataAdmin() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            String str = "SELECT * FROM tb_admin WHERE id_admin = ?";
            PreparedStatement pr = con.prepareStatement(str);
            pr.setString(1,IDAdmin);
            ResultSet rs = pr.executeQuery();            
            while(rs.next()) {
                this.setIDAdmin(rs.getString(1));
                this.setNama(rs.getString(2));
                this.setUsername(rs.getString(3));
                this.setPassword(rs.getString(4));
                this.setStatus(rs.getString(5));
                
                data.add(this.getIDAdmin());
                data.add(this.getNama());
                data.add(this.getUsername());
                data.add(this.getPassword());
                data.add(this.getStatus());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return data;
    }
     
     public ArrayList getDataMajor() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            String str = "SELECT * FROM Major WHERE ID_Major= ?";
            PreparedStatement pr = con.prepareStatement(str);
            pr.setString(1,IdMajor);
            ResultSet rs = pr.executeQuery();            
            while(rs.next()) {
                this.setIdMajor(rs.getString(1));
                this.setProgram(rs.getString(2));
                this.setStage(rs.getString(3));
                this.setConcentration(rs.getString(4));
                this.setstatusmajor(rs.getString(5));
                this.setQuota(rs.getString(6));
                
                data.add(this.getIdMajor());
                data.add(this.getProgram());
                data.add(this.getStage());
                data.add(this.getConcentration());
                data.add(this.getstatusmajor());
                data.add(this.getQuota());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return data;
    }
    
    public int loginAdmin()
    {
        int i = 0;
        try
        {
            ResultSet rs;
            Connection con = Koneksi.Open();
            String sql = "SELECT COUNT(*) FROM tb_admin WHERE username=? AND password=?";
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, Username.trim());
            pr.setString(2, Password.trim());
            
            rs = pr.executeQuery();
            if(rs.next())
            {
                i = rs.getInt(1);
            }
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return i;
    }
    
     public ArrayList cekDataStatusAdmin() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            String str = "SELECT * FROM tb_admin WHERE username = ?";
            PreparedStatement pr = con.prepareStatement(str);
            pr.setString(1,Username);
            ResultSet rs = pr.executeQuery();            
            while(rs.next()) {
                this.setIDAdmin(rs.getString(1));
                this.setNama(rs.getString(2));
                this.setUsername(rs.getString(3));
                this.setPassword(rs.getString(4));
                this.setStatus(rs.getString(5));
                
                data.add(this.getIDAdmin());
                data.add(this.getNama());
                data.add(this.getUsername());
                data.add(this.getPassword());
                data.add(this.getStatus());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return data;
    }
   
     public int hapusDataAdmin() 
    {
        int i = 0;
        try
        {
            Connection con = Koneksi.Open();
            
            String sql = "delete from tb_admin where id_admin = ?";
            PreparedStatement pr = con.prepareStatement(sql);
            
            pr.setString(1, IDAdmin.trim());
            i = pr.executeUpdate();
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
     
     public int hapusDataMajor() 
    {
        int i = 0;
        try
        {
            Connection con = Koneksi.Open();
            
            String sql = "delete from Major where ID_Major = ?";
            PreparedStatement pr = con.prepareStatement(sql);
            
            pr.setString(1, IdMajor.trim());
            i = pr.executeUpdate();
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
     
     public int hapusDataStudent() 
    {
        int i = 0;
        try
        {
            Connection con = Koneksi.Open();
            
            String sql = "delete from tb_Student where ID_Student = ?";
            PreparedStatement pr = con.prepareStatement(sql);
            
            pr.setString(1, IdStudent.trim());
            i = pr.executeUpdate();
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
     
     
    public int ubahDataAdmin() {
        int i = 0;
        PreparedStatement pr = null;
        try
        {
            Connection con = Koneksi.Open();     
            String str = "UPDATE tb_admin SET nama = ?, username = ?, password = ?, status = ? WHERE id_admin = ?";
            pr = con.prepareStatement(str);
            pr.setString(1,Nama);
            pr.setString(2,Username);
            pr.setString(3,Password);
            pr.setString(4,Status); 
            pr.setString(5,IDAdmin); 
            i = pr.executeUpdate();
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
    
//    public int ubahDataAdmin_Admin() {
//        int i = 0;
//        PreparedStatement pr = null;
//        try
//        {
//            Connection con = Koneksi.Open();     
//            String str = "UPDATE tb_admin SET nama = ?, username = ?, password = ? WHERE id_admin = ? and status='Admin'";
//            pr = con.prepareStatement(str);
//            pr.setString(1,Nama);
//            pr.setString(2,Username);
//            pr.setString(3,Password);
//            pr.setString(4,IDAdmin); 
//            i = pr.executeUpdate();
//        }
//        catch(SQLException ex){
//            System.out.println(ex.getMessage());
//        }
//        return i;
//    }
//    
//    public int ubahDataAdmin()
//    {
//        try
//        {
//            String i = "";
//            i = Nama;
//            i = Username;
//            i = Password;
//            if(i == null)
//            {
//                ubahDataAdmin_Staff();
//            }
//            else
//            {
//                ubahDataAdmin_Admin();
//            }
//        }
//        catch(Exception e)
//        {
//            System.out.println(e.getMessage());
//        }
//        return int;
//    }
    
    public int ubahDataMajor() {
        int i = 0;
        PreparedStatement pr = null;
        try
        {
            Connection con = Koneksi.Open();     
            String str = "UPDATE Major SET Program = ?, Stage = ?, Concentration = ?, Status = ?, Quota = ? WHERE ID_Major = ?";
            pr = con.prepareStatement(str);
            pr.setString(1,Program);
            pr.setString(2,Stage);
            pr.setString(3,Concentration);
            pr.setString(4,statusmajor); 
            pr.setString(5,Quota); 
            pr.setString(6,IdMajor); 
            i = pr.executeUpdate();
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
    
     public int ubahDeskripsi() {
        int i = 0;
        PreparedStatement pr = null;
        try
        {
            Connection con = Koneksi.Open();     
            String str = "UPDATE Description SET Vision = ?, Mission = ?, Purpose = ?, Motto = ? WHERE ID_Des = ?";
            pr = con.prepareStatement(str);
            pr.setString(1,Vision);
            pr.setString(2,Mision);
            pr.setString(3,Purpose);
            pr.setString(4,Motto); 
            pr.setString(5,IDDes); 
            i = pr.executeUpdate();
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
    
    public ArrayList getDeskription() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Koneksi.Open();
            String str = "SELECT * FROM Description WHERE ID_Des= ?";
            PreparedStatement pr = con.prepareStatement(str);
            pr.setString(1,IDDes);
            ResultSet rs = pr.executeQuery();            
            while(rs.next()) {
                this.setIDDes(rs.getString(1));
                this.setVision(rs.getString(2));
                this.setMision(rs.getString(3));
                this.setMotto(rs.getString(4));
                this.setPurpose(rs.getString(5));
                
                data.add(this.getIDDes());
                data.add(this.getVision());
                data.add(this.getMision());
                data.add(this.getMotto());
                data.add(this.getPurpose());
            }
        }
        catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return data;
    }
}
