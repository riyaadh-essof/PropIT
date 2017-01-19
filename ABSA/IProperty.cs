using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ABSA
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IProperty" in both code and config file together.
    [ServiceContract]
    public interface IProperty
    {
        [OperationContract]
        bool Login(string email, string password,ref string sEmail);

        [OperationContract]
        void Register(string name, string surname, string email, string password, string type, string contact);
    }
}
