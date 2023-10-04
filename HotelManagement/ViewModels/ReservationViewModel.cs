using HotelManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelManagement.ViewModels
{
    public class ReservationViewModel : ViewModelBase
    {
        private Reservation _reservation;

        public string RoomID=>_reservation.RoomID?.ToString();
        public string Username =>_reservation.Username;
        public string StartDate => _reservation.StartTime.ToShortDateString();
        public string EndDate => _reservation.EndTime.ToShortDateString();

        public ReservationViewModel(Reservation reservation)
        {
            _reservation = reservation;
        }
    }
}
