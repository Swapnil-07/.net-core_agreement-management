$(document).ready(function () {
    loadAgreementTable();
});
function loadAgreementTable() {
    $("#dataTable").DataTable({
        "processing": true,
        "serverSide": true,
        "filter": true,
        "ajax": {
            "url": "Agreement/GetAgreementList",
            "type": "POST",
            "datatype": "json"
        },
        "columnDefs": [
            {
                "targets": [0],
                "visible": false,
                "searchable": false,
            },
            {
                "targets": [4, 5, 6, 7, 8, 9],
                "searchable": false,
                "orderable": false,
            }
        ],
        "columns": [
            { "data": "id", "name": "Id", "autoWidth": true },
            { "data": "userName", "name": "UserName", "autoWidth": true },
            {
                "data": "productGroupCode", "name": "ProductGroupCode", "autoWidth": true,
                "render": function (data, type, row) {
                    return '<span data-toggle="tooltip" title="' + row.productGroupDesc + '">' + data + '</span>';
                }
            },
            {
                "data": "productNumber", "name": "ProductNumber", "autoWidth": true,
                "render": function (data, type, row) {
                    return '<span data-toggle="tooltip" title="' + row.productDesc + '">' + data + '</span>';
                }
            },
            { "data": "effectiveDate", "name": "EffectiveDate", "autoWidth": true },
            { "data": "expirationDate", "name": "ExpirationDate", "autoWidth": true },
            { "data": "productPrice", "name": "ProductPrice", "autoWidth": true },
            { "data": "newPrice", "name": "NewPrice", "autoWidth": true },
            {
                "render": function (data, type, row) { return "<a href='#' class='btn btn-primary' onclick=createAgreement('" + row.id + "'); >Edit</a>"; }
            },
            {
                "render": function (data, type, row) { return "<a href='#' class='btn btn-danger' onclick=deleteAgreement('" + row.id + "'); >Delete</a>"; }
            },
        ]
    });
}

function reloadAgreementTable() {
    $('#dataTable').DataTable().ajax.reload();
}

function deleteAgreement(id) {
    if (confirm("Are you sure you want to delete this record?")) {
        $.get('/Agreement/Delete/', { id: id }, function (res) {
            if (res.status) {
                showToastMessage(res.message, 'success');
                reloadAgreementTable();
            }
            else {
                showToastMessage(res.message, 'error');
            }
        });
    }
}

function createAgreement(id) {
    var url = '/Agreement/_Create/' + id;
    loadLargePopUp(url, "Create Agreement");
}

function loadLargePopUp(url, heading) {
    var options = { "backdrop": "static", keyboard: true };
    $.get(url, null, function (data) {
        $('#myModalLargeContent').html(data);
        $('#myModalLarge').modal(options);
        $('#myModalLarge').modal('show');
        $('#myModalLargeTitle').html(heading);
    });
}