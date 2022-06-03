using AgreementManagement.Models.Common;
using AgreementManagement.Models.Agreement;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using AgreementManagement.Repository;
using AgreementManagement.Models;
using Microsoft.AspNetCore.Authorization;

namespace AgreementManagement.Controllers
{
    [Authorize]
    public class AgreementController : Controller
    {
        private readonly ILogger<AgreementController> _logger;

        public AgreementController(ILogger<AgreementController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
             return View();
        }
        [HttpPost]
        public IActionResult GetAgreementList()
        {
            if (User.Identity.IsAuthenticated)
            {
                var formData = Request.Form;
                var res = AgreementRepo.GetAgreementList(formData);
                return Ok(res);
            }
            return Ok(null);
        }
    
        public ActionResult _Create(int? id)
        {
            AgreementCreateModel model = new AgreementCreateModel();
            if (User.Identity.IsAuthenticated)
            {
                if (id != null)
                {
                    model = AgreementRepo.GetAgreementByID(id.Value);
                }
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Create(AgreementCreateModel model)
        {
            ResponseModel res = new ResponseModel();
            if (User.Identity.IsAuthenticated)
            {
                var userID = User.FindFirstValue(ClaimTypes.NameIdentifier);
                model.UserId = userID;
                res = AgreementRepo.Save(model);
            }
            return Json(res);
        }
        public JsonResult Delete(int id)
        {
            ResponseModel res = new ResponseModel();
            if (User.Identity.IsAuthenticated)
            {
                res = AgreementRepo.DeleteAgreement(id);
            }
            return Json(res);
        }
        public JsonResult GetProductList(int groupID)
        {
            return Json(SelectListHelper.ProductListByGroup(groupID));
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
