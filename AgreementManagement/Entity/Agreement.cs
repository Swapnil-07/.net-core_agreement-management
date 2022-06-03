using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace AgreementManagement.Entity
{
    public partial class Agreement
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public int ProductGroupId { get; set; }
        public int ProductId { get; set; }
        public DateTime EffectiveDate { get; set; }
        public DateTime ExpirationDate { get; set; }
        public decimal ProductPrice { get; set; }
        public decimal NewPrice { get; set; }
        public bool? Active { get; set; }

        public virtual Product Product { get; set; }
        public virtual ProductGroup ProductGroup { get; set; }
    }
}
