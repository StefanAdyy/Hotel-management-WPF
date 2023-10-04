using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelManagement.DbContexts
{
    public class HotelDbContextFactory
    {
        private readonly string _connectionString= "Data Source = localhost; Initial Catalog = hotelDb; Trusted_Connection=True";

        public HotelDbContextFactory(string connectionString)
        {
            _connectionString = connectionString;
        }

        public HotelDbContext CreateDbContext()
        {
            DbContextOptions options = new DbContextOptionsBuilder().UseSqlServer(_connectionString).Options;
            return new HotelDbContext(options);
        }
    }
}
