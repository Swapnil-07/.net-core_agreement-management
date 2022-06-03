using AgreementManagement.Entity;
using AgreementManagement.Models.Agreement;
using AgreementManagement.Models.Common;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Linq.Dynamic.Core;
using System.Threading.Tasks;

namespace AgreementManagement.Repository
{
    public class AgreementRepo
    {
        public static object GetAgreementList(IFormCollection formData)
        {
            try
            {
                var draw = formData["draw"].FirstOrDefault();
                var start = formData["start"].FirstOrDefault();
                var length = formData["length"].FirstOrDefault();
                var sortColumn = formData["columns[" + formData["order[0][column]"].FirstOrDefault() + "][name]"].FirstOrDefault();
                var sortColumnDirection = formData["order[0][dir]"].FirstOrDefault();
                var searchValue = formData["search[value]"].FirstOrDefault();
                int pageSize = length != null ? Convert.ToInt32(length) : 0;
                int skip = start != null ? Convert.ToInt32(start) : 0;
                int recordsTotal = 0;

                using (var db = new AgreementContext())
                {
                    var agreementData = db.Set<Agreement>().AsQueryable();

                    var searchData = (from a in agreementData
                                      join u in db.AspNetUsers
                                      on a.UserId equals u.Id
                                      where u.UserName.Contains(!string.IsNullOrEmpty(searchValue) ? searchValue : u.UserName) 
                                              || a.Product.ProductNumber.ToString().Contains(!string.IsNullOrEmpty(searchValue) ? searchValue : a.Product.ProductNumber.ToString()) 
                                              || a.ProductGroup.GroupCode.ToString().Contains(!string.IsNullOrEmpty(searchValue) ? searchValue : a.ProductGroup.GroupCode.ToString())
                                      select new AgreementModel
                                      {
                                          Id = a.Id,
                                          UserName = u.UserName,
                                          ProductGroupCode = a.ProductGroup != null ? a.ProductGroup.GroupCode.ToString() : string.Empty,
                                          ProductGroupDesc = a.ProductGroup != null ? a.ProductGroup.GroupDescription : string.Empty,
                                          EffectiveDate = a.EffectiveDate.ToString("MM/dd/yyyy"),
                                          ExpirationDate = a.ExpirationDate.ToString("MM/dd/yyyy"),
                                          ProductDesc = a.Product != null ? a.Product.ProductDescription : string.Empty,
                                          ProductNumber = a.Product != null ? a.Product.ProductNumber.ToString() : string.Empty,
                                          NewPrice = a.NewPrice,
                                          ProductPrice = a.ProductPrice,
                                          Active = a.Active.Value
                                      });

                    recordsTotal = searchData.Count();

                    var resultData = searchData.Skip(skip).Take(pageSize).ToList();

                    if (!(string.IsNullOrEmpty(sortColumn) && string.IsNullOrEmpty(sortColumnDirection)))
                    {
                        resultData = resultData.AsQueryable().OrderBy(sortColumn + " " + sortColumnDirection).ToList();
                    }

                    var jsonData = new { draw = draw, recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = resultData };
                    return jsonData;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public static AgreementCreateModel GetAgreementByID(int agreementID)
        {
            AgreementCreateModel agreement = new AgreementCreateModel();
            try
            {
                using (var db = new AgreementContext())
                {
                    agreement = db.Agreement.Where(m => m.Id == agreementID).Select(s => new AgreementCreateModel(s)).FirstOrDefault();
                }
            }
            catch (Exception ex) { }
            return agreement;
        }
        public static ResponseModel Save(AgreementCreateModel model)
        {
            CultureInfo enUS = new CultureInfo("en-US");
            ResponseModel result = new ResponseModel();
            try
            {
                using (var db = new AgreementContext())
                {
                    var productPrize = db.Product.Where(m => m.Id == model.ProductId).Select(s => s.Price).FirstOrDefault();

                    bool newRecord = false;
                    var row = db.Agreement.Where(m => m.Id == model.Id).FirstOrDefault();
                    if(row == null)
                    {
                        row = new Agreement();
                        newRecord = true;
                    }
                    row.UserId = model.UserId;
                    row.ProductGroupId = model.ProductGroupId;
                    row.ProductId = model.ProductId;
                    row.EffectiveDate = model.EffectiveDate.Value;
                    row.ExpirationDate = model.ExpirationDate.Value;
                    row.ProductPrice = productPrize;
                    row.NewPrice = model.NewPrice;

                    if (newRecord)
                    {
                        db.Add(row);
                        result.Message = ResponseStatus.RecordCreate;
                    }
                    else
                    {
                        db.Update(row);
                        result.Message = ResponseStatus.RecordUpdate;
                    }
                    db.SaveChanges();
                    result.RecordID = row.Id;
                    result.Status = true;
                }
            }
            catch (Exception ex) 
            {
                result.Status = false;
                result.Message = "Try Again.!";
            }
            return result;
        }
        public static ResponseModel DeleteAgreement(int agreementID)
        {
            ResponseModel result = new ResponseModel();
            try
            {
                using (var db = new AgreementContext())
                {
                    var agreement = db.Agreement.Find(agreementID);
                    if (agreement != null)
                    {
                        db.Agreement.Remove(agreement);
                        db.SaveChanges();

                        result.Message = ResponseStatus.RecordDelete;
                        result.Status = true;
                    }
                }
            }
            catch(Exception ex)
            {
                result.Status = false;
                result.Message = "Try Again.!";
            }
            return result;
        }
    }
}
