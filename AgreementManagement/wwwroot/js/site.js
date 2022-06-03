// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

jQuery(function ($) {
    $(".datepicker").datepicker({
        dateFormat: 'MM/dd/yy'
    });
});


$(function () {
    $(document).tooltip();
});

function showToastMessage(text, type)   //type : success, error, warning, notice
{
    toastr.options = {
        closeButton: true,
        newestOnTop: true,
        positionClass: 'toast-top-right',
        onclick: null,
        timeOut: 8000,
        showMethod: 'fadeIn',
        hideMethod: 'fadeOut'
    };
    toastr[type](text);
}

