using System;
using System.Data;
using System.Data.SqlClient;

namespace DataSetDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = "data source=LAPTOP-B710EAPP;database=Customer;integrated security=true";
            try
            {
                SqlConnection sqlConnection = new SqlConnection(path);
                string sqlQuery = "select * from Persons";
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlQuery,sqlConnection);
                DataSet set = new DataSet();
                sqlDataAdapter.Fill(set);
                Console.WriteLine(set.GetXml());
                Console.ReadKey();
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message);
            }
        }
    }
}
