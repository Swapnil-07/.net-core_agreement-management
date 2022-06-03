using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AgreementManagement.Models.Agreement

{
    public class AgreementModel
    {   
        public int Id { get; set; }
        [Display(Name = "User Name")]
        public string UserName { get; set; }
        [Display(Name = "Group Code")]
        public string ProductGroupCode { get; set; }
        [Display(Name = "Group Description")]
        public string ProductGroupDesc { get; set; }
        [Display(Name = "Product Number")]
        public string ProductNumber { get; set; }
        [Display(Name = "Product Description")]
        public string ProductDesc { get; set; }
        [Display(Name = "Effective Date")]
        public string EffectiveDate { get; set; }
        [Display(Name = "Expiration Date")]
        public string ExpirationDate { get; set; }
        [Display(Name = "Product Price")]
        public decimal ProductPrice { get; set; }
        [Display(Name = "New Price")]
        public decimal NewPrice { get; set; }
        public bool Active { get; set; }
        
    }
    
}
