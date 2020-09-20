using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace LocalApiMDocker.Controllers
{
    [Route("api/[controller]")]
    public class DockerTestController : Controller
    {
        // GET: api/<controller>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "dockervalue1", "dockervalue2" };
        }
    }
}
