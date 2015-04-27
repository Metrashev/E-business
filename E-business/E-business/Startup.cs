using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(E_business.Startup))]
namespace E_business
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
