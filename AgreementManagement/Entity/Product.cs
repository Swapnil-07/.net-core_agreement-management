using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace AgreementManagement.Entity
{
    public partial class Product
    {
        public Product()
        {
            Agreement = new HashSet<Agreement>();
        }

        public int Id { get; set; }
        public int ProductGroupId { get; set; }
        public string ProductDescription { get; set; }
        public Guid ProductNumber { get; set; }
        public decimal Price { get; set; }
        public bool? Active { get; set; }

        public virtual ProductGroup ProductGroup { get; set; }
        public virtual ICollection<Agreement> Agreement { get; set; }
    }
}
