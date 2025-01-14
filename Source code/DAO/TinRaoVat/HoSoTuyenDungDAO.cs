﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAO
{
    public class HoSoTuyenDungDAO
    {
        /// <summary>
        /// Insert new HOSOTUYENDUNG
        /// </summary>
        /// <param name="hoSoTuyenDung"></param>
        /// <returns></returns>
        public static bool ThemHoSoTuyenDung(HOSOTUYENDUNG hoSoTuyenDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.DeferredLoadingEnabled = false;
                hoSoTuyenDung.MaHoSoTuyenDung = default(int);
                db.HOSOTUYENDUNGs.InsertOnSubmit(hoSoTuyenDung);
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;

        }

        /// <summary>
        /// Delete old HOSOTUYENDUNG
        /// </summary>
        /// <param name="maHoSoTuyenDung"></param>
        /// <returns></returns>
        public static bool XoaHoSoTuyenDung(int maHoSoTuyenDung)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                HOSOTUYENDUNG hoSoTuyenDung = db.HOSOTUYENDUNGs.Single(t => t.MaHoSoTuyenDung == maHoSoTuyenDung);
                hoSoTuyenDung.Deleted = true;
                db.SubmitChanges();
                TinRaoVatDAO.XoaTinRaoVat((int)hoSoTuyenDung.MaTinRaoVat);
            }
            catch (Exception ex)
            { return false; }

            return true;
        }

        /// <summary>
        /// Xoa ho so tuyen dung lien quan
        /// </summary>
        /// <param name="maHoSoTuyenDung"></param>
        /// <returns></returns>
        public static bool XoaHoSoTuyenDungLienQuan(int maTinRaoVat)
        {
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();

                HOSOTUYENDUNG hoSoTuyenDung = db.HOSOTUYENDUNGs.Single(t => t.MaTinRaoVat == maTinRaoVat);
                hoSoTuyenDung.Deleted = true;
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }

            return true;
        }
        /// <summary>
        /// //Update information for HOSOTUYENDUNG Object
        /// </summary>
        /// <param name="trvDTO"></param>
        /// <returns></returns>
        public static bool CapNhatHoSoTuyenDung(HOSOTUYENDUNG hoSoTuyenDung)
        {
            try
            {
                //Search
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                HOSOTUYENDUNG hstd = new HOSOTUYENDUNG();
                hstd = db.HOSOTUYENDUNGs.Single(t => t.MaHoSoTuyenDung == hoSoTuyenDung.MaHoSoTuyenDung);
                //Update
                hstd.DongYHienThi = hoSoTuyenDung.DongYHienThi;
                hstd.HoTen = hoSoTuyenDung.HoTen;
                hstd.NgaySinh = hoSoTuyenDung.NgaySinh;
                hstd.GioiTinh = hoSoTuyenDung.GioiTinh;
                hstd.TinhTrangHonNhan = hoSoTuyenDung.TinhTrangHonNhan;
                hstd.QuocTich = hoSoTuyenDung.QuocTich;
                hstd.DiaChiLienLac = hoSoTuyenDung.DiaChiLienLac;
                hstd.SoDienThoai = hoSoTuyenDung.SoDienThoai;
                hstd.DiDong = hoSoTuyenDung.DiDong;
                hstd.Email = hoSoTuyenDung.Email;

                hstd.ThongTinHocVan = hoSoTuyenDung.ThongTinHocVan;
                hstd.BangCap = hoSoTuyenDung.BangCap;
                hstd.NgoaiNgu = hoSoTuyenDung.NgoaiNgu;
                hstd.KyNang = hoSoTuyenDung.KyNang;

                hstd.CapBac = hoSoTuyenDung.CapBac;
                hstd.SoNamKinhNghiem = hoSoTuyenDung.SoNamKinhNghiem;
                hstd.CongTyLamViec = hoSoTuyenDung.CongTyLamViec;
                hstd.ChucDanh = hoSoTuyenDung.ChucDanh;
                hstd.TomTatKinhNghiem = hoSoTuyenDung.TomTatKinhNghiem;
                hstd.MoTaCongViecLyTuong = hoSoTuyenDung.MoTaCongViecLyTuong;
                hstd.NguyenVong = hoSoTuyenDung.NguyenVong;
                hstd.ThoiGianLamViec = hoSoTuyenDung.ThoiGianLamViec;
                hstd.LuongMongMuon = hoSoTuyenDung.LuongMongMuon;
                //Submit
                db.SubmitChanges();
            }
            catch (Exception ex)
            { return false; }
            return true;
        }

        /// <summary>
        /// Load list of HOSOTUYENDUNG
        /// </summary>
        /// <returns></returns>
        public static List<HOSOTUYENDUNG> LayDanhSachHoSoTuyenDung()
        {
            List<HOSOTUYENDUNG> lstHoSoTuyenDung = new List<HOSOTUYENDUNG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsHoSoTuyenDung = from q in db.HOSOTUYENDUNGs
                                      where q.Deleted == false
                                      select q;
                lstHoSoTuyenDung = dsHoSoTuyenDung.ToList<HOSOTUYENDUNG>();
            }
            catch (Exception ex)
            { return null; }

            return lstHoSoTuyenDung;
        }

        /// <summary>
        /// Find a HOSOTUYENDUNG with maTinRaoVat
        /// </summary>
        /// <param name="maTinRaoVat"></param>
        /// <returns></returns>
        public static HOSOTUYENDUNG TimHoSoTuyenDungTheoMaTinRaoVat(int maTinRaoVat)
        {
            HOSOTUYENDUNG hoSoTuyenDung = new HOSOTUYENDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                db.DeferredLoadingEnabled = false;
                var dsHoSoTuyenDung = from q in db.HOSOTUYENDUNGs
                                      where q.Deleted == false && q.MaTinRaoVat == maTinRaoVat
                                      select q;
                hoSoTuyenDung = dsHoSoTuyenDung.ToList<HOSOTUYENDUNG>().First();
            }
            catch (Exception ex)
            {
                return null;
            }

            return hoSoTuyenDung;
        }

        /// <summary>
        /// Find a HOSOTUYENDUNG with maHoSoTuyenDung
        /// </summary>
        /// <param name="maHoSoTuyenDung"></param>
        /// <returns></returns>
        public static HOSOTUYENDUNG TimHoSoTuyenDungTheoMa(int maHoSoTuyenDung)
        {
            HOSOTUYENDUNG hstd = new HOSOTUYENDUNG();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                hstd = db.HOSOTUYENDUNGs.Single(t => t.MaHoSoTuyenDung == maHoSoTuyenDung);
            }
            catch (Exception ex)
            { return null; }

            return hstd;
        }

        /// <summary>
        /// Find latest HOSOTUYENDUNG
        /// </summary>
        /// <param name="maHoSoTuyenDung"></param>
        /// <returns></returns>
        public static HOSOTUYENDUNG TimHoSoTuyenDungMoiNhat()
        {
            HOSOTUYENDUNG hstd = new HOSOTUYENDUNG();
            List<HOSOTUYENDUNG> lstHoSoTuyenDung = new List<HOSOTUYENDUNG>();
            try
            {
                RaoVatDataClassesDataContext db = new RaoVatDataClassesDataContext();
                var dsTinRaoVat = from q in db.HOSOTUYENDUNGs
                                  where q.Deleted == false
                                  select q;
                lstHoSoTuyenDung = dsTinRaoVat.ToList<HOSOTUYENDUNG>();
                hstd = lstHoSoTuyenDung[lstHoSoTuyenDung.Count - 1];
            }
            catch (Exception ex)
            { return null; }

            return hstd;
        }
    }
}
