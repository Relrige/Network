using System;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;

namespace Console_Socket_Client
{
    class Program
    {
        public static DateTime DateTime { get; private set; }

        static void Main(string[] args)
        {
            Console.Title = "Client";

            Socket client = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);

            IPHostEntry host = Dns.GetHostEntry(Dns.GetHostName());
            IPAddress ip = host.AddressList.FirstOrDefault(x => x.AddressFamily == AddressFamily.InterNetwork);
            const int PORT = 1700;
            IPEndPoint serverEndpoint = new IPEndPoint(IPAddress.Parse("127.0.0.1"), PORT);

            Console.WriteLine("Client configured");
            try
            {
                client.Connect(serverEndpoint);
                if (client.Connected)
                {
                    Console.WriteLine("Client connected to the server");

                    byte[] intInBytes = BitConverter.GetBytes(5);
                    byte[] charInBytes = BitConverter.GetBytes('c');
                    byte[] base64InBytes = Convert.FromBase64String("base64 string");
                    byte[] stringInBytes = Encoding.UTF8.GetBytes("string");

                    string message = "";
                    Console.WriteLine("Enter 1 if you want date or 2 - time");
                    int numb = Convert.ToInt32(Console.ReadLine());
                    if (numb == 1)
                    {
                        message = "date";
                    }
                    else if (numb == 2)
                    {
                        message = "time";
                    }
                    
                    byte[] bytesToSend = Encoding.UTF8.GetBytes(message);

                    int countOfSent = client.Send(bytesToSend);
                    Console.WriteLine($"Client sent to the server {countOfSent} bytes");


                    byte[] buffer = new byte[1000];
                    int countOfReceived = client.Receive(buffer);
                    string gotMessage = Encoding.UTF8.GetString(buffer, 0, countOfReceived);
                    Console.WriteLine($"{gotMessage}");

                }
            }
            catch (SocketException e)
            {
                Console.WriteLine("Connection lost: " + e.Message);
            }
            finally
            {
                client.Close();
                Console.WriteLine("Client finished work");
            }



        }
    }
}
