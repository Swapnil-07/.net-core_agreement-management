using AgreementManagement.Entity;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AgreementManagement.Models.Common
{
    public class SelectListHelper
    {
        public static List<SelectListItem> ProductGroupList()
        {
            List<SelectListItem> list = new List<SelectListItem>();
            using (var db = new AgreementContext())
            {
                list = db.ProductGroup.Where(m => m.Active == true).OrderBy(o => o.GroupDescription).Select(s => new SelectListItem()
                {
                    Text = s.GroupDescription,
                    Value = s.Id.ToString()
                }).ToList();
            }
            return list;
        }
        public static List<SelectListItem> ProductListByGroup(int groupID)
        {
            List<SelectListItem> list = new List<SelectListItem>();
            using (var db = new AgreementContext())
            {
                list = db.Product.Where(m => m.ProductGroupId == groupID && m.Active == true).OrderBy(o => o.ProductDescription).Select(s => new SelectListItem()
                {
                    Text = s.ProductDescription,
                    Value = s.Id.ToString()
                }).ToList();
            }
            return list;
        }
    }
}