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

/**
 *
 * @author INTELAMD
 */
public class Code 
{
    KoneksiDatabase Kon = new KoneksiDatabase();
    
    private String username;
    private String pwd;
    private String IdStudent;
    private String IdMajor;
    private String Fullname;
    private String Gender;
    private String Birth;
    private String School;
    private String major;
    private String Address;
    private String Phone;
    private String Email;
    private String Graduation;
    private String Photo;
    private String IDAdmin;
    private String Nama;
    private String Username;
    private String Password;
    private String Status;
    private String Program;
    private String Stage;
    private String Concentration;
    private String statusmajor;
    private String Quota;
    private String No;
    private String Vision;
    private String Mision;
    private String Purpose;
    private String Motto;
    private String fullname;
    private String gender;
    private String birth;
    private String school;
    private String address;
    private String phone;
    private String email;
    private String graduation;
    private String photo;
    
    public String getusername()
    {
        return username;
    }

    public void setusername(String username)
    {
        this.username = username;
    }
    public String getpwd()
    {
        return pwd;
    }

    public void setpwd(String pwd)
    {
        this.pwd = pwd;
    }
    public String getIdStudent()
    {
        return IdStudent;
    }

    public void setIdStudent(String IdStudent)
    {
        this.IdStudent = IdStudent;
    }
    public String getIdMajor()
    {
        return IdMajor;
    }

    public void setIdMajor(String IdMajor)
    {
        this.IdMajor = IdMajor;
    }
    public String getFullname()
    {
        return Fullname;
    }

    public void setFullname(String Fullname)
    {
        this.Fullname = Fullname;
    }
    public String getGender()
    {
        return Gender;
    }

    public void setGender(String Gender)
    {
        this.Gender = Gender;
    }
    public String getBirth()
    {
        return Birth;
    }

    public void setBirth(String Birth)
    {
        this.Birth = Birth;
    }
    public String getmajor()
    {
        return major;
    }

    public void setmajor(String major)
    {
        this.major = major;
    }
    public String getAddress()
    {
        return Address;
    }

    public void setAddress(String Address)
    {
        this.Address = Address;
    }
    public String getPhone()
    {
        return Phone;
    }

    public void setPhone(String Phone)
    {
        this.Phone = Phone;
    }
    public String getEmail()
    {
        return Email;
    }

    public void setEmail(String Email)
    {
        this.Email = Email;
    }
    public String getGraduation()
    {
        return Graduation;
    }

    public void setGraduation(String Graduation)
    {
        this.Graduation = Graduation;
    }
    public String getSchool()
    {
        return School;
    }

    public void setSchool(String School)
    {
        this.School = School;
    }
    public String getPhoto()
    {
        return Photo;
    }

    public void setPhoto(String Photo)
    {
        this.Photo = Photo;
    }
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
    
    public String getNo() {
        return No;
    }

    public void setNo(String No) {
        this.No = No;
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
    
    
    public int doLogin()
    {
        int i = 0;
        try
        {
            ResultSet rs;
            Connection con = Kon.Open();
            String sql = "SELECT COUNT(*) FROM Account WHERE UserName=? AND Password=?";
            PreparedStatement pr = con.prepareStatement(sql);
            pr.setString(1, username.trim());
            pr.setString(2, pwd.trim());
            
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
    
    public String autoidstudent()
    {
        try 
        {
            Connection con = Kon.Open();
            
            String sql = "select top 1 ID_Student from tb_Student order by ID_Student desc";
            
            Statement state = con.createStatement(); //karna tidak memakai parameter
            ResultSet rs = state.executeQuery(sql);
            
            String idstudent = null;
            String id = null;
            
            if(rs.next())
            {
                idstudent = rs.getString("ID_Student");
                String potong = idstudent.substring(1); //untung memotong id
                int subidstudent = Integer.parseInt(potong) + 1;
                
                if(subidstudent<10)
                {
                    id = "S000" + Integer.toString(subidstudent);
                }
                else if(subidstudent<100)
                {
                    id = "S00" + Integer.toString(subidstudent);
                }
                else if(subidstudent<1000)
                {
                    id = "S0" + Integer.toString(subidstudent);
                }
                else if(subidstudent<10000)
                {
                    id = "S" + Integer.toString(subidstudent);
                }
                
            }
            else 
            {
                id = "S0001";
            }
            return id;
        } 
        catch (Exception e) 
        {
            System.err.println(e);
            return null;
        }
    }
    
    public int Registration() {
        int i = 0;
        try
        {
            Connection con = Kon.Open();
            
            String sql = "INSERT INTO tb_Student (ID_Student, ID_Major, Fullname, Gender, Birth, Schoolname, major, Address, Phone, Email, Graduation, Photo) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pr = con.prepareStatement(sql);
            
            pr.setString(1, IdStudent.trim());
            pr.setString(2, IdMajor.trim());
            pr.setString(3, Fullname.trim());
            pr.setString(4, Gender.trim());
            pr.setString(5, Birth.trim());
            pr.setString(6, School.trim());
            pr.setString(7, major.trim());
            pr.setString(8, Address.trim());
            pr.setString(9, Phone.trim());
            pr.setString(10, Email.trim());
            pr.setString(11, Graduation.trim());
            pr.setString(12, Photo.trim());
            i = pr.executeUpdate();
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return i;
    }
    
    public ArrayList getDataMajor() {
        ArrayList data = new ArrayList();
        try
        {
            Connection con = Kon.Open();
            String str = "SELECT * FROM Major WHERE id_major = ?";
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
    public int doUpdate(String IdMajor) 
    {
        int i = 0;
        try
        {
            Kon.Open();
            Connection con = Kon.Open();
            String str = "update Major set Quota = Quota - 1 from Major where ID_Major = ?";
            PreparedStatement pr = con.prepareStatement(str);
            
            pr.setString(1,IdMajor);
            i = pr.executeUpdate();
        }
        catch(SQLException ex)
        {
            System.out.println(ex.getMessage());
        }
        return i;
    }
}
