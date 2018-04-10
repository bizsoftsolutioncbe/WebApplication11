using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApplication11
{
    public class ArithController : ApiController
    {
        
        public int Get([FromUri] MathData md)
        {
            return md.Num1+md.Num2;           
        }

        public int Post(MathData md)
        {
            return md.Num1 + md.Num2;
        }

      
        public int put(MathData md)
        {
            return md.Num1 + md.Num2;
        }
               
        public int delete(MathData md)
        {
            return md.Num1 + md.Num2;
        }
    }

    public class MathData
    {
        public int Num1 { get; set; }
        public int Num2 { get; set; }
    }
}