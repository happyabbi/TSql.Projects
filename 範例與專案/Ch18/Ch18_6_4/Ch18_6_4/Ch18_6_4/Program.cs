using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;
using System.Data.Linq.Mapping;

namespace Ch18_6_4
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

        [Table(Name = "班級")]
        public class StdClass
        {
            [Column(Name = "學號")]
            public string StdID;
            [Column(Name = "課程編號")]
            public string CNo;
            [Column(Name = "教室")]
            public string Room;
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
            // 取得班級資料表
            Table<StdClass> Class_Table = db.GetTable<StdClass>();
            // 執行LINQ查詢來取得集合物件
            var result = from s in Std_Table
                         join c in Class_Table on s.StdID equals c.StdID
                         orderby s.StdID
                         select new { s.StdID, s.Name, c.CNo, c.Room };
            Console.WriteLine("學號\t姓名\t編號\t教室");
            // 使用For Each迴圈取得集合物件的內容
            foreach (var r in result)
                Console.WriteLine(r.StdID + "\t" + r.Name + "\t" + r.CNo + "\t" + r.Room);
            Console.Read();
        }
    }
}
