using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace ABSA
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Property" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Property.svc or Property.svc.cs at the Solution Explorer and start debugging.
    public class Property : IProperty
    {
        SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Riyaadh\\Desktop\\propIT\\ABSA\\App_Data\\Property.mdf;Integrated Security=True");
        /*
        *Login function, checks if email and password are in the database
        *Needs to be refined
        */
        public bool Login(string email, string password)
        { 
            SqlCommand command;
            SqlDataReader reader;

            command = new SqlCommand("Select * From [Users] Where Email=@email AND Password=@pass", connection);
            command.CommandType = CommandType.Text;
            command.Connection.Open();

            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@pass", password);
            
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                command.Dispose();
                connection.Close();
                return true;
            }
            else
            {
                command.Dispose();
                connection.Close();
                return false;
            }
        }

        /**
        *Register function, adds user details to database
        */
        public void Register(string name, string surname, string email, string password, string type, string contact)
        {
            SqlCommand command;

            command = new SqlCommand("INSERT INTO Users VALUES(@name, @surname, @contact, @type, @email, @password)", connection);
            command.CommandType = CommandType.Text;
            command.Connection.Open();

            command.Parameters.AddWithValue("@name", name);
            command.Parameters.AddWithValue("@surname", surname);
            command.Parameters.AddWithValue("@contact", contact);
            command.Parameters.AddWithValue("@type", type);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@password", password);

            try {
                 command.ExecuteNonQuery();
             }
             catch (SqlException ex)
             {
                 throw ex;
             }
            connection.Close();
            command.Connection.Dispose();
        }

        public void addProperty(string address, string suburb, string town, string city, string province, string postalCode,
            int rooms, int lounge, int Garage, int Kitchen, int erfSize, int Bathroom, string type, string status,
            int dateListed, int age, string description, string floorPlan, string sellerType, float price, float highestBid, string image)
        {
            SqlCommand command;

            command = new SqlCommand(@"Insert Into [Property] Values(@address, @suburb, @town, @city, @province, @postalCode, @rooms,
                @lounge, @garage, @kitchen, @erfSize, @bathroom, @type, @status, @dateListed, @age, @description, @floorPlan, 
                @sellerType, @price, @highestBid", connection);

            command.CommandType = CommandType.Text;
            command.Connection.Open();

            command.Parameters.AddWithValue("@address", address);
            command.Parameters.AddWithValue("@suburb", suburb);
            command.Parameters.AddWithValue("@town", town);
            command.Parameters.AddWithValue("@city", city);
            command.Parameters.AddWithValue("@province", province);

        }
    }
}
