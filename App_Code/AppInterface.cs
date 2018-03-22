using System;
using System.Collections.Generic;
using System.Text;
using System.Data;


namespace DbAccess
{
    interface AppInterface
    {
       void ModifyDataClass(String QueryString, String ServerName, String DatabaseName, String UserName, String Password); 
       DataTable  SelectDataClass (String QueryString, String ServerName, String DatabaseName, String UserName, String Password); 
                       
   }



    


}
