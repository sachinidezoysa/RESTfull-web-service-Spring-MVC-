/*
 *
 *    (C) Copyright 2006-2007 hSenid Software International (Pvt) Limited.
 *    All Rights Reserved.
 *
 *    These materials are unpublished, proprietary, confidential source code of
 *    hSenid Software International (Pvt) Limited and constitute a TRADE SECRET
 *    of hSenid Software International (Pvt) Limited.
 *
 *    hSenid Software International (Pvt) Limited retains all title to and intellectual
 *    property rights in these materials.
 *
 *
 */

$(document).ready(function () {

    var headers = {
        "Content-Type": "application/json; charset=utf-8",
        "Accept": "application/json"
    };

    getEmployeeList();//caling getEmployeeList method

    /**
     * method getEmployeeList is to take all
     * saved employees from database. we are mapping the url of
     */
    function getEmployeeList() {
        /*mapping urls*/
        $.ajax({
            url: "http://localhost:8081/ABCCompany/test",
            type: 'GET',
            jasonp: "callback",
            contentType: "application/json; charset=utf-8",
            headers: headers,
            dataType: "json",
            /*if mapped successfully */
            success: function (result) {
                $.each(result, function (i, employee) {
                    var id = employee.id;
                    var $row = $('<tr>').append(
                            $('<td>').text(employee.id),
                            $('<td>').text(employee.name),
                            $('<td>').text(employee.email),
                            $('<td>').text(employee.address),
                            $('<td>').text(employee.telephone),
                            $('<td>').innerHTML =
                                '<button class="btn-delete" onclick="deleteEmployee(' + id + ')">Delete</button>',
                            $('<td>').innerHTML =
                                '<button class="btn-edit" onclick="editEmployee(' + id + ')">Edit</button>');
                            $('.tbl-content .employee_info').append($row);
                });

            },
            error: function (errorMsg) {
                alert('Failed! ' + errorMsg);
            }
        });
    }

});

/**
 * in method getId I'm storing user selected employeeID
 * @param employee
 */
function getId(employee) {
    var id = employee.id;
    localStorage.setItem('employeeId', id);
}

function deleteEmployee(id) {
    $.ajax({
        url: "http://localhost:8081/ABCCompany/delete/" + id,
        type: 'DELETE',
        success: function () {
            window.location.href = "http://localhost:8080"
        },
        error: function (e) {
            alert("Error" + e);
        }
    });
}

/**
 * method editEmployee will help to edit employee details
 * @param id
 */
function editEmployee(id) {
    $.ajax({
        url: "http://localhost:8081/ABCCompany/employee/" + id,
        type: 'GET',
        jasonp: "callback",
        contentType: "application/json; charset=utf-8",
        headers: {
            "Content-Type": "application/json; charset=utf-8",
            "Accept": "application/json"
        },
        dataType: "json",
        success: function (result) {
            getId(result);
            window.location.href = "http://localhost:8080/pages/editEmployee.jsp";

        },
        error: function (e) {
            alert("Error" + e);
        }
    });

}
