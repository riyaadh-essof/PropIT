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
        bool Login(string email, string password);

        [OperationContract]
        void Register(string name, string surname, string email, string password, string type, string contact);

        [OperationContract]
        void addProperty(string address, string suburb, string town, string city, string province, string postalCode,
            int rooms, int lounge, int Garage, int Kitchen, int erfSize, int Bathroom, string type, string status,
            int dateListed, int age, string description, string floorPlan, string sellerType, float price, float highestBid, string image);

    }
}
