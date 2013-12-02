﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="ViewOrganizations.aspx.cs" Inherits="ViewOrganizations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<h4>Organization Details:</h4>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
<script>
    $(function () {
        var moveLeft = 0;
        var moveDown = 0;
        $('a.popper').hover(function (e) {

            var target = '#' + ($(this).attr('data-popbox'));

            $(target).show();
            moveLeft = $(this).outerWidth();
            moveDown = ($(target).outerHeight() / 2);
        }, function () {
            var target = '#' + ($(this).attr('data-popbox'));
            $(target).hide();
        });

        $('a.popper').mousemove(function (e) {
            var target = '#' + ($(this).attr('data-popbox'));

            leftD = e.pageX + parseInt(moveLeft);
            maxRight = leftD + $(target).outerWidth();
            windowLeft = $(window).width() - 40;
            windowRight = 0;
            maxLeft = e.pageX - (parseInt(moveLeft) + $(target).outerWidth() + 20);

            if (maxRight > windowLeft && maxLeft > windowRight) {
                leftD = maxLeft;
            }

            topD = e.pageY - parseInt(moveDown);
            maxBottom = parseInt(e.pageY + parseInt(moveDown) + 20);
            windowBottom = parseInt(parseInt($(document).scrollTop()) + parseInt($(window).height()));
            maxTop = topD;
            windowTop = parseInt($(document).scrollTop());
            if (maxBottom > windowBottom) {
                topD = windowBottom - $(target).outerHeight() - 20;
            } else if (maxTop < windowTop) {
                topD = windowTop + 20;
            }

            $(target).css('top', topD).css('left', leftD);


        });

    });
</script>
<style>
    .popbox {
    display: none;
    position: absolute;
    z-index: 99999;
    width: 400px;
    padding: 10px;
    background: #EEEFEB;
    color: #000000;
    border: 1px solid #4D4F53;
    margin: 0px;
    -webkit-box-shadow: 0px 0px 5px 0px rgba(164, 164, 164, 1);
    box-shadow: 0px 0px 5px 0px rgba(164, 164, 164, 1);
}
.popbox h2
{
    background-color: #4D4F53;
    color:  #E3E5DD;
    font-size: 14px;
    display: block;
    width: 100%;
    margin: -10px 0px 8px -10px;
    padding: 5px 10px;
}
</style>

<asp:PlaceHolder ID="plHolder" runat="server"></asp:PlaceHolder>
    </form>

</asp:Content>

