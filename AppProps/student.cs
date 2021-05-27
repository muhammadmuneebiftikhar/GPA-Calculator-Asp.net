using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppProps
{
    public class student
    {
        int rollno;
        string name;
        string password;
        string degree;
        int semester;
        float sgpa;
        float cgpa;
        float point;
        int cr;
        string subject;
        string grade;
        int marks;


        public int Rollno { get => rollno; set => rollno = value; }
        public string Name { get => name; set => name = value; }
        public string Password { get => password; set => password = value; }
        public string Degree { get => degree; set => degree = value; }
        public int Semester { get => semester; set => semester = value; }
        public float Sgpa { get => sgpa; set => sgpa = value; }
        public float Cgpa { get => cgpa; set => cgpa = value; }
        public int Cr { get => cr; set => cr = value; }
        public string Subject { get => subject; set => subject = value; }
        public string Grade { get => grade; set => grade = value; }
        public int Marks { get => marks; set => marks = value; }
        public float Point { get => point; set => point = value; }
    }
}
