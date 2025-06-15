using Library_Application.Database;
using Microsoft.Data.SqlClient;
using System;
using System.Data;

namespace Library_Application.Models
{
    internal class UserBook
    {
        public int Id { get; set; }
        public RestrictedDataUser User { get; set; }
        public Book Book { get; set; }
        public string StartDate { get; set; }
        public string ReturnDate { get; set; }
        public bool Active { get; set; }

        public DateTime DateForOrgz
        {
            get
            {
                return DateTime.ParseExact(ReturnDate, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            }
        }

        public UserBook(RestrictedDataUser user, Book book, string startDate, string returnDate)
        {
            Id = -1;
            User = user;
            Book = book;
            StartDate = startDate;
            ReturnDate = returnDate;
        }

        public void store()
        {
            SqlConnection conn = DBUtils.Connection;

            SqlCommand cmd = new SqlCommand("createUserBook", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", User.Id);
            cmd.Parameters.AddWithValue("@BookId", Book.Id);
            cmd.Parameters.AddWithValue("@StartDate", DateTime.ParseExact(StartDate, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture));
            cmd.Parameters.AddWithValue("@ReturnDate", DateTime.ParseExact(ReturnDate, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture));

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }

        public void setActiveStatus(bool Active)
        {
            int bitConvert = Active ? 1 : 0;

            SqlConnection conn = DBUtils.Connection;
            SqlCommand cmd = new SqlCommand("setBorrowActiveStatus", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BorrowId", Id);
            cmd.Parameters.AddWithValue("@Status", bitConvert);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                this.Active = Active;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
    }
}
