using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTablesdemo
{
    class Program
    {
        static void Main(string[] args)
        {
            
            string path = "data source=LAPTOP-B710EAPP;database=Customer;integrated security=true";
            DataSet table =GetTable();
            try
            {
                SqlConnection connection = new SqlConnection(path);

                SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(connection);
                sqlBulkCopy.DestinationTableName = "Product";
                foreach (DataColumn col in table.Tables[0].Columns)
                    sqlBulkCopy.ColumnMappings.Add(col.ColumnName, col.ColumnName);
                connection.Open();
                sqlBulkCopy.WriteToServer(table.Tables[0]);
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message);
            }
          
            


        }
        static DataSet GetTable()
        {
            DataTable table = new DataTable("Table-1");
            table.Columns.Add("CustomerId", typeof(int));
            table.Columns.Add("CustomerName", typeof(string));
            table.Columns.Add("Email", typeof(string));

            table.Rows.Add(1, "Sathiyaseelan", "sathya@gmail.com");
            table.Rows.Add(2, "Gokul", "gokul@gmail.com");
            table.Rows.Add(3, "Arun", "arun@gmail.com");
            DataSet set = new DataSet();
            set.Tables.Add(table);
            return set;
        }
    }
}
