using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UCCFRFWebApp.Startup))]
namespace UCCFRFWebApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
