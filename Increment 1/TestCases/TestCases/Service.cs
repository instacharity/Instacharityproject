using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using System.Web;
using System.Net;

namespace TestCases
{
    [TestFixture]
    public class Service
    {

        [Test]
        public void userRegistrationTest()
        {
            ServiceReference1.Webservice ws = new ServiceReference1.Webservice();
            string returnMsg = ws.User_Registration("tmrhc", "meka", "abcde@gmail.com", "1234", "1990/10/10", "male");
            Assert.AreEqual("Success insert", returnMsg);

        }

        [Test]
        public void organisationRegistrationTest()
        {
            ServiceReference1.Webservice ws = new ServiceReference1.Webservice(); 
            string returnMsg = ws.Organization_Registration("bvrit@gmail.com","help","kansascity","1234");
            Assert.AreEqual("Success insert", returnMsg);
       }
        [Test]
        public void userLoginTest()
      {
          ServiceReference1.Webservice ws = new ServiceReference1.Webservice(); 
        string returnMsg = ws.User_Login("abcde@gmail.com","1234");
        Assert.AreEqual("Login success", returnMsg);

     }
        [Test]
        public void organisationLoginTest()
        {
            ServiceReference1.Webservice ws = new ServiceReference1.Webservice(); 
            string returnMsg = ws.Organization_Login("bvrit@gmail.com","1234");
            Assert.AreEqual("Login success", returnMsg);
        }
       
    }
}
