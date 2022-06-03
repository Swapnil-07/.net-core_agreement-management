using System;
using System.Collections.Generic;
using System.Text;

namespace AgreementManagement.Models.Common
{
    public class ResponseStatus
    {
        public static string RecordCreate = "Record Saved successfully";
        public static string RecordUpdate = "Record Updated successfully";
        public static string RecordDelete = "Record Deleted successfully";
    }
    public class ResponseModel
    {
        public bool Status { get; set; }
        public object RecordID { get; set; }
        public string Message { get; set; }
        public object Record { get; set; }

        public ResponseModel()
        {
            Status = false;
        }
    }
}
