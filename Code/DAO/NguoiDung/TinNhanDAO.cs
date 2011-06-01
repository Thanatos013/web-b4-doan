﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class TinNhanDAO
    {
        public static bool ThemTinNhan(TINNHAN tinNhan)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.TINNHANs.InsertOnSubmit(tinNhan);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }
        public static List<TINNHAN> LayDanhSachTinNhan()
        {
            List<TINNHAN> lstTinNhan = new List<TINNHAN>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinNhan = from q in db.TINNHANs
                                     where q.Deleted == false
                                     select q;
                lstTinNhan = dsTinNhan.ToList<TINNHAN>();

            }
            catch (Exception ex)
            { return null; }
            return lstTinNhan;
        }

       
    }
}