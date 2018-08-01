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

    $('.buttonSub').click(function (e) {
        e.preventDefault();
        phoneNumberValidation();
    });

    function createEmployee() {
        var formData = {
            name: $("#name").val(),
            address: $("#address").val(),
            telephone: $("#number").val(),
            email: $("#email").val()
        };

        $.ajax({
            type: "POST",
            url: "http://localhost:8081/ABCCompany/create",
            data: JSON.stringify(formData),
            contentType: "application/json; charset=utf-8",
            dataType: 'json',
            success: function (result) {
                alert("Registration Successful");
                console.log(result);
            },
            error: function (e) {
                alert("Error!" + e);
                console.log("ERROR: ", e);
            }
        });

        resetData();

    }

    function resetData() {
        $("#name").val("");
        $("#address").val("");
        $("#number").val("");
        $("#email").val("");
    }
});


