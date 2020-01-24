using System;
using System.Data.SqlClient;
using System.Data;

namespace DataAdapterDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            
            SqlConnection connection = new SqlConnection("data source=LAPTOP-B710EAPP;database=Customer;Integrated security=true ");
            try
            {
                string sqlSelect = "select * from Persons";
                SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlSelect, connection);
                DataTable table = new DataTable();
                dataAdapter.Fill(table);
                foreach(DataRow row in table.Rows)
                {
                    foreach(DataColumn column in table.Columns)
                    {
                        Console.WriteLine(row[column]+"\n");
                    }
                }
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message); 
            }
        }
    }
}
