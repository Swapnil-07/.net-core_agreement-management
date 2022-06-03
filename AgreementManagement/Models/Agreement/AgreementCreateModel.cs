using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AgreementManagement.Models.Agreement

{
    public class AgreementCreateModel
    {
        public int Id { get; set; }
        [Display(Name = "User ID")]
        public string UserId { get; set; }
        [Display(Name = "Product Group")]
        public int ProductGroupId { get; set; }
        [Display(Name = "Product")]
        public int ProductId { get; set; }
        [Required]
        [Display(Name = "Effective Date")]
        public DateTime? EffectiveDate { get; set; }
        [Required]
        [Display(Name = "Expiration Date")]
        public DateTime? ExpirationDate { get; set; }
        [Display(Name = "Product Price")]
        public decimal ProductPrice { get; set; }
        [Required]
        [Display(Name = "New Price")]
        public decimal NewPrice { get; set; }
        public bool Active { get; set; }
        public AgreementCreateModel() { }
        public AgreementCreateModel(Entity.Agreement model)
        {
            this.Id = model.Id;
            this.UserId = model.UserId;
            this.ProductGroupId = model.ProductGroupId;
            this.ProductId = model.ProductId;
            this.EffectiveDate = model.EffectiveDate;
            this.ExpirationDate = model.ExpirationDate;
            this.ProductPrice = model.ProductPrice;
            this.NewPrice = model.NewPrice;
            this.Active = model.Active.Value;
        }
    }
    
}
