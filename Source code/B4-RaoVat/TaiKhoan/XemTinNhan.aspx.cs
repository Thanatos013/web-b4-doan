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
        if (Session["userID"] == null)
        { 
            Response.Redirect("~/TaiKhoan/DangNhap.aspx"); 
        }
    }
}