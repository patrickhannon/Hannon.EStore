using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EStore.Models
{
    public class FreightResponse
    {
        public string StatusCode { get; set; }
        public string StatusDescription { get; set; }
        public List<FreightOption> FreightOptions { get; set; }
    }
}