﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="JMenu.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">

    <script type="text/javascript">
        $(document).ready(function() {
            $("#nav-one li").hover(
				function() { $("ul", this).fadeIn("fast"); },
				function() { }
			);
            if (document.all) {
                $("#nav-one li").hoverClass("sfHover");
            }
        });

        $.fn.hoverClass = function(c) {
            return this.each(function() {
                $(this).hover(
					function() { $(this).addClass(c); },
					function() { $(this).removeClass(c); }
				);
            });
        };	  
    </script>

    <style type="text/css">
        /* Navigation */.nav, .nav ul
        {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .nav
        {
            font-family: Arial, Helvetica, sans-serif;
            z-index: 100;
            position: relative;
        }
        .nav li
        {
            border-left: 1px solid #000;
            float: left;
            margin: 0;
            padding: 0;
            position: relative;
        }
        .nav li a, .nav li a:link, .nav li a:active, .nav li a:visited
        {
            font: bold 1.22em/25px Arial, Helvetica, sans-serif;
            background: #565656;
            color: #959595;
            display: block;
            padding: 0 9px;
            text-transform: lowercase;
            text-decoration: none;
        }
        .nav li a:hover
        {
            background: #ccc;
            color: #000;
        }
        #nav-one li:hover a, #nav-one li.sfHover a
        {
            background: #ccc;
            color: #000;
        }
        #nav-one li:hover ul a, #nav-one li.sfHover ul a
        {
            background: #565656;
            color: #959595;
        }
        #nav-one li:hover ul a:hover, #nav-one li.sfHover ul a:hover
        {
            background: #ccc;
            color: #000;
        }
        .nav ul
        {
            background: #565656;
            border-bottom: 1px solid #000;
            list-style: none;
            margin: 0;
            width: 100px;
            position: absolute;
            top: -999em;
            left: -1px;
        }
        .nav li:hover ul, .nav li.sfHover ul
        {
            top: 25px;
        }
        .nav ul li
        {
            border: 0;
            float: none;
        }
        .nav ul a
        {
            border: 1px solid #000;
            border-bottom: 0;
            padding-right: 20px;
            width: 80px;
            white-space: nowrap;
        }
        .nav ul a:hover
        {
            background: #ccc;
            color: #000;
        }
    </style>
    <ul id="nav-one" class="nav">
        <li><a href="#item1">item 1</a>
            <ul>
                <li><a href="#item1.1">item 1.1</a></li>
                <li><a href="#item1.2">item 1.2</a></li>
                <li><a href="#item1.3">item 1.3</a></li>
                <li><a href="#item1.4">item 1.4</a></li>
            </ul>
        </li>
        <li><a href="#item2">item 2</a>
            <ul>
                <li><a href="#item2.1">item 2.1</a></li>
                <li><a href="#item2.2">item 2.2</a></li>
            </ul>
        </li>
        <li><a href="#item3">item 3</a>
            <ul>
                <li><a href="#item3.1">item 3.1</a></li>
                <li><a href="#item3.2">item 3.2</a></li>
            </ul>
        </li>
        <li><a href="#item4">item 4</a>
            <ul>
                <li><a href="#item4.1">item 4.1</a></li>
                <li><a href="#item4.2">item 4.2</a></li>
                <li><a href="#item4.3">item 4.3</a></li>
            </ul>
        </li>
    </ul>
</asp:Content>
