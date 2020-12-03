using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;
using System.Data.Linq.Mapping;

namespace Ch18_6_2
{
    class Program
    {
        // 宣告實體類別
        [Table(Name = "學生")]
        public class Student
        {
            [Column(Name = "學號")]
            public string StdID;
            [Column(Name = "姓名")]
            public string Name;
            [Column(Name = "電話")]
            public string Tel;
        }

        static void Main(string[] args)
        {
            string strDbCon;
            // 資料庫連接字串
            strDbCon = "Data Source=(local);Initial Catalog=教務系統" + ";Integrated Security=SSPI";
            // 建立DataContext物件
            DataContext db = new DataContext(strDbCon);
            // 取得學生資料表
            Table<Student> Std_Table = db.GetTable<Student>();
            // 執行LINQ查詢來取得集合物件
            var students = from s in Std_Table
                           where s.StdID == "S001" ||
                             s.StdID == "S002"
                           select s;
            Console.WriteLine("學號\t姓名\t電話");
            // 使用For Each迴圈取得集合物件的內容
            foreach (var s in students)
                Console.WriteLine(s.StdID + "\t" + s.Name + "\t" + s.Tel);
            Console.Read();
        }
    }
}
