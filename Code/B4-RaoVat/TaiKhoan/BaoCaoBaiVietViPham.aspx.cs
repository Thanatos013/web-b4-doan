﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;

public partial class BaoCaoBaiVietViPham : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnBaoCao1_Click(object sender, EventArgs e)
    {
        LICHSUTINRAOVATVIPHAM tinViPham = new LICHSUTINRAOVATVIPHAM();
        int userID = (Int32)Session["userID"];
        int MaDanhMucCon = int.Parse(Request.QueryString["sub"]);
        if(ckbNickSpam.Checked || ckbSpam.Checked || ckbTenSai.Checked || ckbTieuDeSai.Checked)
        {
            tinViPham.MaTinRaoVatViPham = MaDanhMucCon;
            tinViPham.MaNguoiDungBaoCaoViPham = userID;
            tinViPham.ThoiGianBaoCaoViPham = DateTime.Now;
            tinViPham.deleted = false;
            BaoCaoBaiVietViPhamBUS.ThemBaoCaoViPham(tinViPham);
        }
    }
}