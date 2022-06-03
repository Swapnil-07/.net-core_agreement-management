using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace AgreementManagement.Entity
{
    public partial class ProductGroup
    {
        public ProductGroup()
        {
            Agreement = new HashSet<Agreement>();
            Product = new HashSet<Product>();
        }

        public int Id { get; set; }
        public string GroupDescription { get; set; }
        public Guid GroupCode { get; set; }
        public bool? Active { get; set; }

        public virtual ICollection<Agreement> Agreement { get; set; }
        public virtual ICollection<Product> Product { get; set; }
    }
}
