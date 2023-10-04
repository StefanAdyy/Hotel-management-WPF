using HotelManagement.DbContexts;
using HotelManagement.Exceptions;
using HotelManagement.Models;
using HotelManagement.NavigationHelper;
using HotelManagement.Services;
using HotelManagement.ViewModels;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace HotelManagement
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private const string CONNECTION_STRING = "Data Source=localhost; Initial Catalog=hotelDb; Trusted_Connection=True";

        private readonly Hotel _hotel;
        private readonly Navigation _navigation;

        public App()
        {
            _hotel = new Hotel("Hotel Stefan");
            _navigation = new Navigation();
        }

        protected override void OnStartup(StartupEventArgs e)
        {
            DbContextOptions options = new DbContextOptionsBuilder().UseSqlServer(CONNECTION_STRING).Options;

            using (HotelDbContext dbContext = new HotelDbContext(options))
            {
                dbContext.Database.Migrate();
            }

            _navigation.CurrentViewModel = CreateReservationViewModel();

            MainWindow = new MainWindow()
            {
                DataContext = new MainViewModel(_navigation)
            };
            MainWindow.Show();

            base.OnStartup(e);
        }

        private MakeReservationViewModel CreateMakeReservationViewModel()
        {
            return new MakeReservationViewModel(_hotel, new NavigationService(_navigation, CreateReservationViewModel));
        }

        private ReservationListingViewModel CreateReservationViewModel()
        {
            return new ReservationListingViewModel(_hotel, new NavigationService(_navigation, CreateMakeReservationViewModel));
        }
    }
}
