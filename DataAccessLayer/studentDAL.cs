using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;

namespace DataAccessLayer
{
    public class studentDAL
    {
        DbCon db = new DbCon();

        //Insert Queries
        public bool registerStudent(student S)
        {
            string qry = "INSERT INTO registeration (name, roll_no, password, degree) VALUES ('" + S.Name + "', '" + S.Rollno + "', '" + S.Password + "', '" + S.Degree + "')";
            return db.UDI(qry);
        }
        public bool insertSgpa(student S)
        {
            string qry = "Insert into cal_cgpa (roll_no, semester, sgpa) values ('"+ S.Rollno +"' , '"+ S.Semester +"', '"+ S.Sgpa +"')";
            return db.UDI(qry);
        }
        public bool insertByMarks(student S)
        {
            string qry = "Insert into sgpa_by_marks (roll_no, semester, subjects, cr, marks, points) values ('"+ S.Rollno +"' , '"+ S.Semester +"', '"+ S.Subject + "', '" + S.Cr + "' , '" + S.Marks + "', '" + S.Point + "')";
            return db.UDI(qry);
        }
        public bool insertByGrades(student S)
        {
            string qry = "Insert into sgpa_by_grades (roll_no, semester, subjects, cr, grades, points) values ('"+ S.Rollno +"' , '"+ S.Semester +"', '"+ S.Subject + "', '" + S.Cr + "' , '" + S.Grade + "', '" + S.Point + "')";
            return db.UDI(qry);
        }

        //Delete Queries
        public bool deleteCgpa(student S)
        {
            string qry = "Delete from cal_cgpa where roll_no = '"+ S.Rollno +"' and semester = '"+ S.Semester +"'";
            return db.UDI(qry);
        }
        public bool deleteByMarks(student S)
        {
            string qry = "Delete from sgpa_by_marks where roll_no = '" + S.Rollno +"' and semester = '"+ S.Semester + "'  and subjects = '" + S.Subject + "'";
            return db.UDI(qry);
        }
        public bool deleteByGrades(student S)
        {
            string qry = "Delete from sgpa_by_grades where roll_no = '" + S.Rollno +"' and semester = '"+ S.Semester + "'  and subjects = '" + S.Subject + "'";
            return db.UDI(qry);
        }

        //Calculate Queries
        public DataTable calcCGPA(student S)
        {
            string qry = "Select AVG(sgpa) from cal_cgpa where roll_no = '" + S.Rollno +"'";
            return db.Search(qry);
        }
        public DataTable calCR_Marks(student S)
        {
            string qry = "Select SUM(cr) from sgpa_by_marks where roll_no = '" + S.Rollno + "' and semester = '" + S.Semester + "'";
            return db.Search(qry);
        }
        public DataTable calPoint_Marks(student S)
        {
            string qry = "Select SUM(cr*points) from sgpa_by_marks where roll_no = '" + S.Rollno + "' and semester = '" + S.Semester + "'";
            return db.Search(qry);
        }
        public DataTable calCR_Grades(student S)
        {
            string qry = "Select SUM(cr) from sgpa_by_grades where roll_no = '" + S.Rollno + "' and semester = '" + S.Semester + "'";
            return db.Search(qry);
        }
        public DataTable calPoint_Grades(student S)
        {
            string qry = "Select SUM(cr*points) from sgpa_by_grades where roll_no = '" + S.Rollno + "' and semester = '" + S.Semester + "'";
            return db.Search(qry);
        }

        //Select Queries
        public DataTable FormulaTable()
        {
            string qry = "Select * from formula_table";
            return db.Search(qry);
        }
        public DataTable LoginStudent(student S)
        {
            string qry = "Select password from registeration where roll_no = ('" + S.Rollno + "')";
            return db.Search(qry);
        }
        public DataTable sgpaStudent(student S)
        {
            string qry = "Select * from cal_cgpa where roll_no = ('"+ S.Rollno +"')";
            return db.Search(qry);
        }
        public DataTable ByMarksStudent(student S)
        {
            string qry = "Select * from sgpa_by_marks where roll_no = ('" + S.Rollno +"')";
            return db.Search(qry);
        }
        public DataTable ByGradesStudent(student S)
        {
            string qry = "Select * from sgpa_by_grades where roll_no = ('" + S.Rollno +"')";
            return db.Search(qry);
        }
    }
}
