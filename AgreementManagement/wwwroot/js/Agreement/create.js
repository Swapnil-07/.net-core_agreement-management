$(document).ready(function () {
    FillProductList();
    $(document).on('change', '#ProductGroupId', function () {
        FillProductList();
    });
});

function FillProductList() {
    var productGroupID = $('#ProductGroupId').val();
    var Product = $('#ProductId');
    var optionHtml = '<option value="">-- Select --</option>'
    if (productGroupID) {
        var productID = $('#hfProductID').val();
        $.post('/Agreement/GetProductList/', { groupID: productGroupID }, function (data) {
            $.each(data, function (index, element) {
                if (element.value == productID) {
                    optionHtml += '<option selected="selected" value="' + element.value + '">' + element.text + '</option>';
                }
                else {
                    optionHtml += '<option value="' + element.value + '">' + element.text + '</option>';
                }
            });
            Product.html(optionHtml);
        });
    }
    Product.html(optionHtml);
}

$(function () {
    $('#frmAgreementCreate').submit(function (e) {
        e.preventDefault();
        $('#frmAgreementCreate').validate();
        if (validateForm()) {
            $.post('/Agreement/Create/', $(this).serialize(), function (res) {
                if (res.status) {
                    $('#myModalLarge').modal('hide');
                    showToastMessage(res.message, 'success');
                    reloadAgreementTable();
                }
                else {
                    showToastMessage(res.message, 'error');
                }
            });
        } else {
            return false;
        }
    });
});

function validateForm() {
    $('.form-control, .valid').each(function () {
        $(this).removeAttr("title");
    });
    if ($('#frmAgreementCreate').valid()) {
        return true;
    }
    else {
        $('.input-validation-error').each(function () {
            $errorSpan = $(this).siblings('span');
            var errorMsg = $errorSpan.children('span').text();
            $(this).attr('title', errorMsg);
            $errorSpan.css('display', 'none');
        });
        return false;
    }
}