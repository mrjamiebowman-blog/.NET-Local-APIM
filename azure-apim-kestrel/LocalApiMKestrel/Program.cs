using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

namespace LocalApiMKestrel
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    // bind to all ip addresses
                    webBuilder.UseUrls("http://0.0.0.0:5000", "https://0.0.0.0:5001");



                    webBuilder.UseStartup<Startup>();
                });
    }
}
