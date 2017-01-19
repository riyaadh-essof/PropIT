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
        public bool Login(string email, string password, ref string sEmail)
        {
            SqlConnection connection;
            SqlCommand command;
            SqlDataReader reader;

            connection = new SqlConnection();
            command = new SqlCommand("Select * From [Users] Where Email=@email AND Password=@pass", connection);

            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@pass", password);
            command.CommandType = CommandType.Text;
            command.Connection.Open();

            reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    sEmail = reader["Email"].ToString();
                }

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

        public void Register(string name, string surname, string email, string password, string type, string contact)
        {
            SqlConnection connection;
            SqlCommand command;

            connection = new SqlConnection();
            command = new SqlCommand("INSERT INTO [Users] VALUES(@name, @surname, @contact, @type, @email, @password)", connection);

            command.CommandType = CommandType.Text;

            command.Parameters.AddWithValue("@name", name);
            command.Parameters.AddWithValue("@surname", surname);
            command.Parameters.AddWithValue("@contact", contact);
            command.Parameters.AddWithValue("@type", type);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@password", password);

            command.Connection.Open();
            command.ExecuteNonQuery();
            command.Connection.Dispose();
        }
    }
}
