﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.ForeColor = System.Drawing.Color.White;
        //Label1.Font.Size = 40;
        //Label1.Text = Request.Url.AbsolutePath;
        //Label1.Text += "---" + Request.Url.Query;
        string FullPath = Request.Url.AbsolutePath;

        string Query = Request.Url.Query;
        //Đã có truy vấn gì đó và đang chọn ngôn ngữ
        if (Query.Contains("&Language"))
        {
            int pos = Query.IndexOf("&Language");
            Query = Query.Substring(0, pos);

        }
        if (!Query.Contains("?Language"))
            FullPath += Query;

        if (Request.Url.Query == string.Empty || Query.Contains("?Language"))
            FullPath += "?Language=";
        else
            FullPath += "&Language=";

        Label1.Text = FullPath;
        ImageButton1.PostBackUrl = FullPath + "vi";
        ImageButton2.PostBackUrl = FullPath + "en-us";
    }
    protected void linkbntXemThongTin_Click(object sender, EventArgs e)
    {
        Response.Redirect("/B4-RaoVat/TaiKhoan/XemThongTinTaiKhoan.aspx");
    }
    protected void linkbntDangXuat_Click(object sender, EventArgs e)
    {
        lblUserNameMP.Text = "Guest-Khách";
            Session["UserName"]=null;
    }
}
