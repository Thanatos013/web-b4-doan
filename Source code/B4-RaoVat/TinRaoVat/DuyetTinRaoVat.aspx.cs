﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAO;
using System.IO;
public partial class Default2 : BUS.BasePage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Kiểm tra đăng nhập
        if (Session["userID"] == null)
            Response.Redirect("~/TaiKhoan/DangNhap.aspx");
        //Kiểm tra quyền là admin
        if (!LoaiNguoiDungBUS.LaQuanTri(int.Parse(Session["userID"].ToString())))
            Response.Redirect("/B4-RaoVat/Default.aspx");
    }
    private void ToggleCheckState(bool checkState) 
    { 
        foreach (GridViewRow row in GridView.Rows) 
        { 
            CheckBox cb = (CheckBox)row.FindControl("Deleted"); 
            if (cb != null) cb.Checked = checkState; 
        } 
    }
    protected void btnDuyet1_Click(object sender, EventArgs e)
    {
        TINRAOVATDALUU tinRaoVatDaLuu = new TINRAOVATDALUU();
        TINRAOVAT tinRaoVat = new TINRAOVAT();
        foreach (GridViewRow row in GridView.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("Deleted");
            if (cb != null && cb.Checked)
            {
                int maTinRaoVat = Convert.ToInt32(GridView.DataKeys[row.RowIndex].Value);
                tinRaoVatDaLuu.MaTinRaoVat = Convert.ToInt32(GridView.Rows[row.RowIndex].Cells[1].Text);
                tinRaoVat = TinRaoVatBUS.TimTinRaoVatTheoMa(maTinRaoVat);
                maTinRaoVat = (int)tinRaoVat.MaNguoiDung;
                tinRaoVatDaLuu.MaNguoiDung = NguoiDungBUS.LayNguoiDungTheoMa(maTinRaoVat).MaNguoiDung;
                tinRaoVatDaLuu.ThoiGianLuu = DateTime.Now;
                tinRaoVatDaLuu.Deleted = false;
                TinRaoVatDaLuuBUS.ThemTinRaoVatDaLuu(tinRaoVatDaLuu);
            }
        }
        GridView.DataBind();
    }
    protected void btnXoa1_Click(object sender, EventArgs e)
    {
        LICHSUTINRAOVATVIPHAM tinRaoVat = new LICHSUTINRAOVATVIPHAM();
        foreach (GridViewRow row in GridView.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("Deleted");
            if (cb != null && cb.Checked)
            {
                int maTinRaoVat = Convert.ToInt32(GridView.DataKeys[row.RowIndex].Value);
                TinRaoVatDaLuuBUS.XoaTinRaoVatViPham(maTinRaoVat);
            }
        }
        GridView.DataBind();
    }
    protected void CheckAll_Click(object sender, EventArgs e)
    {
        ToggleCheckState(true);
    }
    protected void UncheckAll_Click(object sender, EventArgs e)
    {
        ToggleCheckState(false);
    }
}
