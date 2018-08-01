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

    var employeeId = localStorage.getItem('employeeId');//taking user selected employeeID from localstorage

    getEmployee(employeeId);

    $('.buttonUp').click(function (e) {
        e.preventDefault();
        // phoneNumberValidation();
    });

    /**
     * will set selected employee details
     * @param id
     */
    function getEmployee(id) {
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
                setData(result);
            },
            error: function (e) {
                alert("Error" + e);
            }
        });
    }

    function setData(employee) {
        var employeeId = employee.id;
        var employeeName = employee.name;
        var email = employee.email;
        var telephone = employee.telephone;
        var address = employee.address;

        $('#id').val(employeeId);
        $('#name').val(employeeName);
        $('#address').val(address);
        $('#email').val(email);
        $('#telephone').val(telephone);

    }

    function updateEmployee(id) {
        var formData = {
            name: $("#name").val(),
            address: $("#address").val(),
            telephone: $("#number").val(),
            email: $("#email").val()
        };

        $.ajax({
            url: "http://localhost:8081/ABCCompany/update/" + id,
            type: "PUT",
            data: JSON.stringify(formData),
            contentType: "application/json; charset=utf-8",
            dataType: 'json',
            success: function (result) {
                alert("Update Successful");
                console.log(result);
            },
            error: function (e) {
                alert("Error!" + e);
                console.log("ERROR: ", e);
            }
        });

    }
    function resetData() {
        $("#name").val("");
        $("#address").val("");
        $("#number").val("");
        $("#email").val("");
    }

});

