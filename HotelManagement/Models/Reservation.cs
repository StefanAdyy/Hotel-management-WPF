using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelManagement.Models
{
    public class Reservation
    {
        public Reservation(RoomID roomID, DateTime startTime, DateTime endTime, string username)
        {
            RoomID = roomID;
            StartTime = startTime;
            EndTime = endTime;
            Username = username;
        }

        public RoomID RoomID { get; }
        public string Username { get; }
        public DateTime StartTime { get; }
        public DateTime EndTime { get; }

        public TimeSpan Length => EndTime.Subtract(StartTime);

        internal bool Conflicts(Reservation reservation)
        {
            if (reservation.RoomID != this.RoomID)
            {
                return false;
            }

            return reservation.StartTime < EndTime || reservation.EndTime > StartTime;
        }
    }
}
