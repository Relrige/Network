using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace _04_AsyncSocket_Client
{
    class Program
    {
        static string postcode;
        static void Main(string[] args)
        {
            Console.Title = "Client";
            Console.WriteLine("enter postCode");
            postcode = Console.ReadLine();
            StartClient();
            Console.WriteLine("Client finished work and closed");
        }

        private static void StartClient()
        {
            Socket client = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);

            try
            {
                client.BeginConnect("192.168.31.148", 3101, ConnectCallback, client);
                //Console.WriteLine("Client finished work and closed");

                Console.ReadLine();
            }
            catch (SocketException e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
            finally
            {
                Console.WriteLine("Closing the client...");
                client.Close();
            }
        }

        private static void ConnectCallback(IAsyncResult ar)
        {
            var client = (Socket)ar.AsyncState;
            //client.Connect("192.168.5.213", 3100);
            client.EndConnect(ar);
            Console.WriteLine("Connected to the server");

            //Console.WriteLine("\nSending data ...");

            byte[] bytes = Encoding.ASCII.GetBytes(postcode);
            //client.Send(bytes);
            
            client.BeginSend(bytes, 0, bytes.Length, SocketFlags.None, SendCallback, client);
        }

        private static void SendCallback(IAsyncResult ar)
        {

            Console.WriteLine("Data sent.");
            var client = (Socket)ar.AsyncState;
            client.EndSend(ar);

            Console.WriteLine("\nReceiving data ...");
            const int bufferSize = 1024;
            byte[] buffer = new byte[bufferSize];
            Data data = new Data
            {
                Client = client,
                Buffer = buffer
            };
            client.BeginReceive(buffer, 0, bufferSize, SocketFlags.None, ReceiveCallback, data);

            ReceiveFromServer(client);
        }

        private static void ReceiveFromServer(Socket client)
        {
            Console.WriteLine("\nReceiving data ...");
            const int bufferSize = 1024;
            byte[] buffer = new byte[bufferSize];
            Data data = new Data
            {
                Client = client,
                Buffer = buffer
            };
            client.BeginReceive(buffer, 0, bufferSize, SocketFlags.None, ReceiveCallback, data);
        }

        private static void ReceiveCallback(IAsyncResult ar)
        {
            Data data = (Data)ar.AsyncState;
            Socket client = data.Client;
            //int countOfBytes = client.Receive(buffer);
            int countOfBytes = client.EndReceive(ar);

            string receivedText = Encoding.UTF8.GetString(data.Buffer, 0, countOfBytes);
            Console.WriteLine($"Answer from server ({countOfBytes} bytes):");
            Console.WriteLine(receivedText);
        }

        public class Data
        {
            public Socket Client { get; set; }
            public byte[] Buffer { get; set; }
        }


    }
}
