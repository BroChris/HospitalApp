using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Diagnostics;

namespace DbAccess
{
   public class DataAcces : AppInterface 
    {

        private static string P_ServerName = "CHRIS-PC"; //"184.168.194.68";

        public static string ServerName 
        { 
          get { return P_ServerName; }      

        }


        private static string P_DatabaseName = "Hospital_DB"; //"silvernetng_com_WebServer101"; //

        public static string DatabaseName
        {
            get { return P_DatabaseName; }

        }

        private static string P_UserName = "sa"; //"silvernetngcom2";   //

        public static string UserName
        {
            get { return P_UserName; }

        }

        private static string P_Password = "Ch1naz0";//"W3bTr4ns4ct";   //

        public static string Password
        {
            get { return P_Password; }

        }

        public void ModifyDataClass(String QueryStr, String ServerName, String DatabaseName, String UserName, String Password)
        {
            //initialize SQL Transaction and Connection
            System.Data.SqlClient.SqlTransaction sqlTran = null;
            System.Data.SqlClient.SqlConnection cn = new System.Data.SqlClient.SqlConnection();
                
            string myConnectionStr = null;
            string strQuery;

            try
            {
                // '' ''QueryStr = "EXECUTE sp_Select_from_Countries_List"
                strQuery = QueryStr;



                // Open the connection
                if (cn.State == ConnectionState.Open)
                {
                    cn.Close();
                } //end if block

                myConnectionStr = ServerName + ";" + "Initial Catalog=" + DatabaseName + ";" + "User Id=" + UserName + ";" + "Password=" + Password;

                //cn = New SqlClient.SqlConnection("Network Library=DBMSSOCN;" & "Data Source=" & connectvalue & "," & SQL_Port & ";" & "Initial Catalog=Hospital_Information_System_DB;" & "User ID=sa;" & "Password=" & Server_password)
                //cn = New SqlClient.SqlConnection("Data Source= LORDMARK-PC\ENTERPRISE_2008;Initial Catalog=Hospital_Information_System_DB; Asynchronous Processing=true" & "User ID=sa;" & "Password=x-menii")
                //cn = New SqlClient.SqlConnection("Data Source= LORDMARK-PC\ENTERPRISE_2008;Initial Catalog=Hospital_Information_System_DB;" & "User ID=sa;" & "Password=x-menii")
                //cn = New SqlClient.SqlConnection("Data Source= WIN-R416Q5ZOOXR;Initial Catalog=Integra_DB;Integrated Security=SSPI")
                //cn = New SqlClient.SqlConnection("Data Source= APT-WIN8;Initial Catalog=Integra_DB;" & "User ID=sa;" & "Password=x-menii")
                cn = new System.Data.SqlClient.SqlConnection("Data Source= " + myConnectionStr);

                cn.Open();


                // Start a local transaction.
                sqlTran = cn.BeginTransaction();

                // Enlist a command in the current transaction.
                System.Data.SqlClient.SqlCommand command = cn.CreateCommand();
                command.Transaction = sqlTran;

                if (!string.IsNullOrEmpty(strQuery))
                {
                    // Execute two separate commands. 1st Command stored in string strQuery.
                    command.CommandText = strQuery;
                    command.ExecuteNonQuery();
                    //command.BeginExecuteReader()

                }//end of if block

                // Commit the transaction
                sqlTran.Commit();
                //Console.WriteLine("Both records were written to database.")

                strQuery = null;


                //MsgBox("Data was sucessfully " & QueryStr)
                //place code for insert here


            }//end of outer try block
            catch (Exception ex)
            {
                // Handle the exception if the transaction fails to commit.
                //MsgBox(Err.Description)

                try
                {
                    // Attempt to roll back the transaction.
                    sqlTran.Rollback();
                    throw new ApplicationException(ex.Message);


                  }//end of inner tryblock
                catch (Exception exRollback)
                {
                    // Throws an InvalidOperationException if the connection 
                    // is closed or the transaction has already been rolled 
                    // back on the server.
                    //MsgBox(exRollback.Message)
                    throw new ApplicationException(exRollback.Message);


                } //end inner catchblock


            }// end of outer catchblock

        }//end of ModifyDataClass

      public  DataTable SelectDataClass(String QueryStr, String ServerName, String DatabaseName, String UserName, String Password)
      {
         

       

              System.Data.SqlClient.SqlConnection cn = new System.Data.SqlClient.SqlConnection();
              string strQuery = QueryStr;
              System.Data.SqlClient.SqlDataAdapter da = null;
              DataSet ds = new DataSet();
              DataTable DataRecords = new DataTable();
              string myConnectionStr = null;

              try
              { 


              //Open the  connection
              //if (cn.State == ConnectionState.Open)
              //{
              //    cn.Close;
              //}

              myConnectionStr = ServerName + ";" + "Initial Catalog=" + DatabaseName + ";" + "User Id=" + UserName + ";" + "Password=" + Password;
              cn = new System.Data.SqlClient.SqlConnection("Data Source= " + myConnectionStr);
              cn.Open();
              //da(strQuery,cn);
              da = new System.Data.SqlClient.SqlDataAdapter(strQuery, cn);

              da.Fill(ds, "DISPLAY");

              DataRecords = ds.Tables["DISPLAY"];

              return DataRecords;
            
              /*cn = New SqlClient.SqlConnection("Data Source= " & myConnectionStr)
                cn.Open()

                da = New SqlClient.SqlDataAdapter(strQuery, cn)

                da.Fill(ds, "DISPLAY") */

             
          
          }//end of the try block

          catch(Exception exp) 
          {
 
		     //MsgBox("Error Number: " & "(" & Err.Number & ")" & vbCrLf & "Error Description: " & Err.Description, MsgBoxStyle.Critical)
		      throw new ApplicationException(exp.Message);
          } //end of the catchblock






        

      }//end of the SelectDatable function


      
    }//end of the DataAccess Class
}//end of the Namespace.
