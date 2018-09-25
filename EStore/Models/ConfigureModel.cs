using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EStore.Models
{
    public sealed class ConfigureModel
    {
        private static ConfigureModel _configure = null;
        private static readonly object padlock = new object();
        private ConfigureModel()
        {
            SiteName = "DISCOUNTINUED STOCK";
            SiteLogo = "~/Images/discontinued_stock.jpg";
        }

        public static ConfigureModel Instance
        {
            get
            {
                lock (padlock)
                {
                    if (_configure == null)
                    {
                        _configure = new ConfigureModel();
                    }
                    return _configure;
                }
            }
        }
        public string SiteName { get; }
        public string SiteLogo { get; }
    }
}
