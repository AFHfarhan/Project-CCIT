﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34003
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BMI_Application.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.IService")]
    public interface IService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/cekidadmin", ReplyAction="http://tempuri.org/IService/cekidadminResponse")]
        int cekidadmin(string id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/UserByID", ReplyAction="http://tempuri.org/IService/UserByIDResponse")]
        string[] UserByID(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/UpdateUser", ReplyAction="http://tempuri.org/IService/UpdateUserResponse")]
        int UpdateUser(string username, string password, string fullname, string dob, string gender, string phone, string email, string doj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/DeleteUser", ReplyAction="http://tempuri.org/IService/DeleteUserResponse")]
        void DeleteUser(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SemuaDataUser", ReplyAction="http://tempuri.org/IService/SemuaDataUserResponse")]
        System.Data.DataSet SemuaDataUser();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/DataUser", ReplyAction="http://tempuri.org/IService/DataUserResponse")]
        System.Data.DataSet DataUser(string username);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/RecordByID", ReplyAction="http://tempuri.org/IService/RecordByIDResponse")]
        string[] RecordByID(string id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/UpdateRecord", ReplyAction="http://tempuri.org/IService/UpdateRecordResponse")]
        void UpdateRecord(string id, string username, string gender, string height, string weight, string status, string date);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/DeleteRecord", ReplyAction="http://tempuri.org/IService/DeleteRecordResponse")]
        void DeleteRecord(string id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SemuaDataRecord", ReplyAction="http://tempuri.org/IService/SemuaDataRecordResponse")]
        System.Data.DataSet SemuaDataRecord();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/DataRecord", ReplyAction="http://tempuri.org/IService/DataRecordResponse")]
        System.Data.DataSet DataRecord(string id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/AdminByID", ReplyAction="http://tempuri.org/IService/AdminByIDResponse")]
        string[] AdminByID(string id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/UpdateAdmin", ReplyAction="http://tempuri.org/IService/UpdateAdminResponse")]
        void UpdateAdmin(string id, string admin, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/DeleteAdmin", ReplyAction="http://tempuri.org/IService/DeleteAdminResponse")]
        void DeleteAdmin(string id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/SemuaDataAdmin", ReplyAction="http://tempuri.org/IService/SemuaDataAdminResponse")]
        System.Data.DataSet SemuaDataAdmin();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/DataAdmin", ReplyAction="http://tempuri.org/IService/DataAdminResponse")]
        System.Data.DataSet DataAdmin(string id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/AutoIDAdmin", ReplyAction="http://tempuri.org/IService/AutoIDAdminResponse")]
        string AutoIDAdmin();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/AddAdmin", ReplyAction="http://tempuri.org/IService/AddAdminResponse")]
        void AddAdmin(string admin, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService/login", ReplyAction="http://tempuri.org/IService/loginResponse")]
        int login(string user, string pswd);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IServiceChannel : BMI_Application.ServiceReference1.IService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServiceClient : System.ServiceModel.ClientBase<BMI_Application.ServiceReference1.IService>, BMI_Application.ServiceReference1.IService {
        
        public ServiceClient() {
        }
        
        public ServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int cekidadmin(string id) {
            return base.Channel.cekidadmin(id);
        }
        
        public string[] UserByID(string username) {
            return base.Channel.UserByID(username);
        }
        
        public int UpdateUser(string username, string password, string fullname, string dob, string gender, string phone, string email, string doj) {
            return base.Channel.UpdateUser(username, password, fullname, dob, gender, phone, email, doj);
        }
        
        public void DeleteUser(string username) {
            base.Channel.DeleteUser(username);
        }
        
        public System.Data.DataSet SemuaDataUser() {
            return base.Channel.SemuaDataUser();
        }
        
        public System.Data.DataSet DataUser(string username) {
            return base.Channel.DataUser(username);
        }
        
        public string[] RecordByID(string id) {
            return base.Channel.RecordByID(id);
        }
        
        public void UpdateRecord(string id, string username, string gender, string height, string weight, string status, string date) {
            base.Channel.UpdateRecord(id, username, gender, height, weight, status, date);
        }
        
        public void DeleteRecord(string id) {
            base.Channel.DeleteRecord(id);
        }
        
        public System.Data.DataSet SemuaDataRecord() {
            return base.Channel.SemuaDataRecord();
        }
        
        public System.Data.DataSet DataRecord(string id) {
            return base.Channel.DataRecord(id);
        }
        
        public string[] AdminByID(string id) {
            return base.Channel.AdminByID(id);
        }
        
        public void UpdateAdmin(string id, string admin, string password) {
            base.Channel.UpdateAdmin(id, admin, password);
        }
        
        public void DeleteAdmin(string id) {
            base.Channel.DeleteAdmin(id);
        }
        
        public System.Data.DataSet SemuaDataAdmin() {
            return base.Channel.SemuaDataAdmin();
        }
        
        public System.Data.DataSet DataAdmin(string id) {
            return base.Channel.DataAdmin(id);
        }
        
        public string AutoIDAdmin() {
            return base.Channel.AutoIDAdmin();
        }
        
        public void AddAdmin(string admin, string password) {
            base.Channel.AddAdmin(admin, password);
        }
        
        public int login(string user, string pswd) {
            return base.Channel.login(user, pswd);
        }
    }
}
