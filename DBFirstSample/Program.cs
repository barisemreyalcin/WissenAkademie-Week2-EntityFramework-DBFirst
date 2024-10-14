using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBFirstSample
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //NORTHWINDEntities context = new NORTHWINDEntities(); // database'e bağlantı açacak
            // READ - SELECT
            //var customerList = context.Customers.ToList();

            //foreach (var item in customerList)
            //{
            //    Console.WriteLine($"Customer ID: {item.CustomerID} - Company Name: {item.CompanyName}");
            //}
            //Console.ReadLine();

            // Add new customer
            //Customers customer = new Customers();
            //customer.CustomerID = "SAMCU";
            //customer.CompanyName = "Sample Customer";

            //context.Customers.Add(customer);

            //context.SaveChanges(); // local'de o ana kadar yapılan değişiklikleri db'ye yansıtır
            //Console.ReadLine();

            // Eklediğim datayı çekmek için
            //NORTHWINDEntities context = new NORTHWINDEntities(); // database'e bağlantı açacak

            //Customers customer = context.Customers.Find("SAMCU");
            //Console.WriteLine($"Customer ID: {customer.CustomerID} - Company Name: {customer.CompanyName}");
            //Console.ReadLine();

            // Kaydı Silmek
            //NORTHWINDEntities context = new NORTHWINDEntities(); // database'e bağlantı açacak
            //Customers customer = context.Customers.Find("SAMCU");
            //context.Customers.Remove(customer);
            //context.SaveChanges();

            // UPDATE
            // 1. Add
            NORTHWINDEntities context = new NORTHWINDEntities(); // database'e bağlantı açacak
            //Customers customer = new Customers();
            //customer.CustomerID = "SAMCU";
            //customer.CompanyName = "Sample Customer";
            //context.Customers.Add(customer);

            //context.SaveChanges(); // local'de o ana kadar yapılan değişiklikleri db'ye yansıtır
            //Console.ReadLine();

            // 2. Update
            Customers customer = context.Customers.Find("SAMCU");
            customer.CompanyName = "Updated Customer";
            context.SaveChanges();
        }
    }
}
