using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EStore.Startup))]
namespace EStore
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
