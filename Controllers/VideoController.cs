using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Data;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult Index()
        {
            ViewData["datavideo"] = BaseHelper.ejecutarConsulta("sp_video_lista", CommandType.StoredProcedure);
            return View();
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(int idVideo, string titulo, int repro, string url)
        {
            //Guardar el video
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@reproducciones", repro));
            parametros.Add(new SqlParameter("@url", url));          

            BaseHelper.ejecutarSentencia("sp_video_insertar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("Index", "Home");


        }

        public ActionResult Delete()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Delete(int idVideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            BaseHelper.ejecutarSentencia("sp_video_eliminar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("Index", "Home");          
        }

        public ActionResult Edit()
        {
            return View();        
          
        }

        [HttpPost]
        public ActionResult Edit(int idVideo, string titulo, int repro, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@reproducciones", repro));
            parametros.Add(new SqlParameter("@url", url));
            BaseHelper.ejecutarSentencia("sp_video_actualizar", CommandType.StoredProcedure, parametros);
            return RedirectToAction("Index", "Home");          
            
        }
        public ActionResult Search()
        {
            return View();
        }
    [HttpPost]
        public ActionResult Search(int idVideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            ViewData["datavideo"] =  BaseHelper.ejecutarConsulta("sp_video_buscar", CommandType.StoredProcedure, parametros);
            return View("Resultado");
        }



    }
}
