using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{
    internal class Program
    {
        static void Main(string[] args)

        { //declaracion de variables
            string nombre;
            string edad;
            string fechaNac;
            string carrera;
            string Cierre;

            Console.WriteLine("Bienvenidos a UMI/Universidad Coppel");
            Console.WriteLine("\nIngresa los datos que se te piden: ");
            Console.WriteLine("\nNombre completo: ");
            nombre = Console.ReadLine();
            Console.WriteLine("\nEdad: ");
            edad = Console.ReadLine();
            Console.WriteLine("\nFecha de nacimiento: DD/MM/AAAA");
            fechaNac = Console.ReadLine();
            Console.WriteLine("\nCarrera: ");
            carrera = Console.ReadLine();

            Console.WriteLine("\n\n Gracias " + nombre +  " por formar parte de UMI/UniversidadCoppel.\n Bienvenido a " + carrera + ".");
            Console.WriteLine("\n\n" + nombre);
            Console.WriteLine(edad + "años")
            Console.WriteLine(fechaNac);
            Console.WriteLine(carrera);
            Console.WriteLine("\n\n\n");
            
            Console.WriteLine("\n\nPresiona cualquier tecla para salir...");
            Cierre = Console.ReadLine();







        }
       
   
    
    
           

    }
}
