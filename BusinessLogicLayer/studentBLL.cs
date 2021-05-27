using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;
using DataAccessLayer;

namespace BusinessLogicLayer
{
    public class studentBLL
    {
        studentDAL sDal = new studentDAL();

        // Insert Queries

        public bool registerStudentBll(student S)
        {
            return sDal.registerStudent(S);
        }
        public bool insertSgpaBll(student S)
        {
            return sDal.insertSgpa(S);
        }
        public bool insertByMarks(student S)
        {
            return sDal.insertByMarks(S);
        }
        public bool insertByGrades(student S)
        {
            return sDal.insertByGrades(S);
        }

        //Delete Queries

        public bool sgpaDeleteDLL(student S)
        {
            return sDal.deleteCgpa(S);
        }
        public bool deleteByMarks(student S)
        {
            return sDal.deleteByMarks(S);
        }
        public bool deleteByGrades(student S)
        {
            return sDal.deleteByGrades(S);
        }


        // Select Queries
        public DataTable loginStudetBll(student S)
        {
            return sDal.LoginStudent(S);
        }
        public DataTable FormulaTable()
        {
            return sDal.FormulaTable();
        }
        public DataTable sgpaStudentBll(student S)
        {
            return sDal.sgpaStudent(S);
        }
        public DataTable calcCGPABll(student S)
        {
            return sDal.calcCGPA(S);
        }

        public DataTable ByMarksStudentBLL(student S)
        {
            return sDal.ByMarksStudent(S);
        }
        public DataTable ByGradesStudentBLL(student S)
        {
            return sDal.ByGradesStudent(S);
        }
        public DataTable calCRByMarks(student S)
        {
            return sDal.calCR_Marks(S);
        }
        public DataTable calPointByMarks(student S)
        {
            return sDal.calPoint_Marks(S);
        }
        public DataTable calCRByGrades(student S)
        {
            return sDal.calCR_Grades(S);
        }
        public DataTable calPointByGrades(student S)
        {
            return sDal.calPoint_Grades(S);
        }

    }
}
