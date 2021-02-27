$(document).ready(function () {




    $('#btnRegisteredzx').click(function () {
        var flag = 0;
        var x = document.getElementById("datatable190").rows.length;

        var table = $('#datatable190').DataTable();

       // alert(table.cell().data());
        if (table.cell().data() === undefined) {
            flag = 1;
            alert("Please Add Certificate");
        }





        if (($('#txtSecureCode').val() == '')) {




            alert("Enter Captcha code");


            flag = 1;
        }


        if (flag == 0) {


            if (navigator.onLine) {

                var result = confirm("Edit not allowed after submit do you want continue?");
                if (result) {


                    $('#bj').show();
                    $('#btnRegisteredzx').hide();



                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "OtherDetails.aspx/saven",
                        data: "{'data':'" + $('#form2').serialize() + "'}",
                        success: function (response) {


                            if (response.d == "empty") {

                                $('#btnRegisteredzx').show();
                                alert("Invalid Captcha Code");
                                $('#bj').hide();

                            }


                            if (response.d == "error") {

                                alert("Something went wrong");

                                $('#btnRegisteredzx').show();
                                $('#bj').hide();



                            }
                            else if (response.d == "success") {
                                $('#bj').hide();

                                $("#form2")[0].reset();
                                window.location.replace("Dashboard");
                                // alert('succccc');




                            }





                        },

                        error: function (ty) {
                            alert(ty.d);
                            $('#bj').hide();

                        }








                    });






                }
            }
            else {
                alert("You are offline.");
            }

        }


    });




    $('#ddlGenderm').on('change', function () {


        if ($('#ddlGenderm').val() != 'df') {
            $('#addqualificationlm').hide();

            var fileupload = document.getElementById("FileUpload1");
            var filePath = document.getElementById("spnFilePath");

            fileupload.click();

            fileupload.onchange = function () {
                var fileName = fileupload.value.split('\\')[fileupload.value.split('\\').length - 1];
                filePath.innerHTML = "<b>Selected File: </b>" + fileName;

                $('#addqualificationlm').show();
            };
        }
    })







    jQuery(function () {

        if ($("#prt").val() != '') {
            jQuery('#prt').click();
        }
    });


    jQuery(function () {

        if ($("#prtm").val() != '') {
            jQuery('#prtm').click();
        }
    });

    jQuery(function () {

        if ($("#prtmm").val() != '') {


            jQuery('#prtmm').click();
        }
    });

    jQuery(function () {

        if ($("#prtmmk").val() != '') {


            jQuery('#prtmmk').click();
        }
    });


    $('#prtmmk').click(function () {

        //  alert($("#prt").val());
        var tukk = $("#prtmmk").val();

        $("#bov2").show();


        $.ajax({
            type: "POST",
            dataType: "json",
            url: "Reg.asmx/savttt",
            "data": {
                "data": tukk
            },
            timeout: 60000,
            success: function (data) {


                $('#datatable190').dataTable({

                    destroy: true,
                    "fnCreatedRow": function () {

                        $("#bov2").hide();
                    },

                    "initComplete": function (settings, json) {
                        $("#bov2").hide();

                    },
                    data: data,
                    columns: [
                        {

                            "data": "sr"



                        },
                        {

                            "data": "title"



                        },
                        {
                            "data": "id2",
                            'render': function (ft) {
                                if (ft != '') {
                                    return '<input type="button" id="piok' + ft + '" onclick="myFun' + ft + '()"   disabled="disabled"  class="button" name="Refreshtt" value="Delete"/><script>function myFun' + ft + '() { cvx(' + ft + ');}</script>'
                                }
                                else {
                                    return null;
                                }
                            }

                        }


                    ]


                });



            },
            error: function nm(ex) {
                alert(ex);
            }

        });



    });


    $('#prtmm').click(function () {

        //  alert($("#prt").val());
        var tukk = $("#prtmm").val();

        $("#bov2").show();


        $.ajax({
            type: "POST",
            dataType: "json",
            url: "Reg.asmx/savtt",
            "data": {
                "data": tukk
            },
            timeout: 60000,
            success: function (data) {


                $('#datatable190').dataTable({

                    destroy: true,
                    "fnCreatedRow": function () {

                        $("#bov2").hide();
                    },

                    "initComplete": function (settings, json) {
                        $("#bov2").hide();

                    },
                    data: data,
                    columns: [
                        {

                            "data": "sr"



                        },
                        {

                            "data": "title"



                        },
                        {
                            "data": "id2",
                            'render': function (ft) {
                                if (ft != '') {
                                    return '<input type="button" id="piok' + ft + '" onclick="myFun' + ft + '()"    class="button" name="Refreshtt" value="Delete"/><script>function myFun' + ft + '() { cvx(' + ft + ');}</script>'
                                }
                                else {
                                    return null;
                                }
                            }

                        }


                    ]


                });



            },
            error: function nm(ex) {
                alert(ex);
            }

        });



    });









    $('#prtm').click(function () {

        //  alert($("#prt").val());
        var tukk = $("#prtm").val();

        $("#bov2").show();


        $.ajax({
            type: "POST",
            dataType: "json",
            url: "Reg.asmx/savt",
            "data": {
                "data": tukk
            },
            timeout: 60000,
            success: function (data) {


                $('#datatable190').dataTable({

                    destroy: true,
                    "fnCreatedRow": function () {

                        $("#bov2").hide();
                    },

                    "initComplete": function (settings, json) {
                        $("#bov2").hide();

                    },
                    data: data,
                    columns: [
                        {

                            "data": "exam"



                        },
                        {

                            "data": "pmonth"



                        },
                        {
                            "data": "pyear"
                        },
                        {
                            "data": "id"
                        },
                        {
                            "data": "id2",
                            'render': function (ft) {
                                if (ft != '') {
                                    return '<input type="button" id="piok' + ft + '" onclick="myFun' + ft + '()"   disabled="disabled"   class="button" name="Refresht" value="Edit"/><script>function myFun' + ft + '() { cvx(' + ft + ');}</script>'
                                }
                                else {
                                    return null;
                                }
                            }


                        },
                        {
                            "data": "id2",
                            'render': function (ft) {
                                if (ft != '') {
                                    return '<input type="button" id="pio' + ft + '" onclick="myFun' + ft + '()"   disabled="disabled"  class="button" name="Refresht" value="Delete"/><script>function myFun' + ft + '() { cvx(' + ft + ');}</script>'
                                }
                                else {
                                    return null;
                                }
                            }

                        }


                    ]


                });



            },
            error: function nm(ex) {
                alert(ex);
            }

        });



    });



    $('#prt').click(function () {

        //  alert($("#prt").val());
        var tukk = $("#prt").val();

        $("#bov2").show();


        $.ajax({
            type: "POST",
            dataType: "json",
            url: "Reg.asmx/sav",
            "data": {
                "data": tukk
            },
            timeout: 60000,
            success: function (data) {


                $('#datatable190').dataTable({

                    destroy: true,
                    "fnCreatedRow": function () {

                        $("#bov2").hide();
                    },

                    "initComplete": function (settings, json) {
                        $("#bov2").hide();

                    },
                    data: data,
                    columns: [
                        {

                            "data": "exam"



                        },
                        {

                            "data": "pmonth"



                        },
                        {
                            "data": "pyear"
                        },
                        {
                            "data": "id"
                        },
                        {
                            "data": "id2",
                            'render': function (ft) {
                                if (ft != '') {
                                    return '<input type="button" id="piok' + ft + '" onclick="myFun' + ft + '()"    class="button" name="Refresht" value="Edit"/><script>function myFun' + ft + '() { cvx(' + ft + ');}</script>'
                                }
                                else {
                                    return null;
                                }
                            }


                        },
                        {
                            "data": "id2",
                            'render': function (ft) {
                                if (ft != '') {
                                    return '<input type="button" id="pio' + ft + '" onclick="myFun' + ft + '()"    class="button" name="Refresht" value="Delete"/><script>function myFun' + ft + '() { cvx(' + ft + ');}</script>'
                                }
                                else {
                                    return null;
                                }
                            }

                        }


                    ]


                });



            },
            error: function nm(ex) {
                alert(ex);
            }

        });



    });





















    $('#sdk').click(function () {



        var flag = 0;

        if ($('#lastqulafication').val() == 'df') {

            alert("Please Select Last Qualification");

            flag = 1;
        }

        if (($('#FirstName').val() == '') || ($('#FirstName').val() == 'Name')) {

            alert("Enter your Exam Name");

            flag = 1;
        }


        if (($('#MiddleName1').val() == '') || ($('#MiddleName1').val() == 'Name')) {

            alert("Enter Board/University Name");

            flag = 1;
        }


        if (($('#datepicker').val() == '') || ($('#datepicker').val() == 'Name')) {

            alert("Enter Obtain Marks/Percentage/Grade Points");

            flag = 1;
        }



        if (($('#mothertounge').val() == '') || ($('#mothertounge').val() == 'Name')) {

            alert("Enter Out of Marks/Percentage/Grade Points");

            flag = 1;
        }


        if ($('#ddlGender').val() == 'df') {

            alert("Please Select Passing Month");

            flag = 1;
        }



        if (($('#txtEmail').val() == '') || ($('#txtEmail').val() == 'Name')) {

            alert("Please Enter Passing Year");

            flag = 1;
        }

        if ($('#ddlGender2').val() == 'df') {

            alert("Please Select Passing Class");

            flag = 1;
        }






        if (($('#txtEmail2').val() == '') || ($('#txtEmail2').val() == 'Name')) {

            alert("Please Enter Seat No");

            flag = 1;
        }




        if (flag == 0) {


            if (navigator.onLine) {

                var result = confirm("Edit not allowed after submit do you want continue?");
                if (result) {


                    $('#bj2').show();
                    $('#btnRegistered').hide();


                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "AcademicDetails.aspx/savet",
                        data: "{'datar':'" + $('#fm').serialize() + "'}",
                        success: function (response) {




                            if (response.d == "error") {

                                alert("Something went wrong");

                                $('#btnRegistered').show();
                                $('#bj2').hide();



                            }
                            else if (response.d == "success") {
                                $('#bj2').hide();

                                $("#fm")[0].reset();
                                hth();
                                jQuery(function () {

                                    jQuery('#prt').click();

                                });





                            }





                        },

                        error: function (ty) {
                            alert(ty.d);


                        }








                    });






                }
            }
            else {
                alert("You are offline.");
            }

        }










    });















    $('#btr').click(function () {

        $.ajax({
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            url: "Default.aspx/savexy",
            //  data: "{'datan':'" + datay + "','datar':'" + datax + "'}",
            success: function (responsex) {

                if (responsex.d == "success") {
                    window.location.replace("Default");
                }


            },
            error: function (rt) {
                alert("Something went wrong");
            }

        });
    });



    $('#seter').change(function () {
        if ($(this).is(":checked")) {






            $('#pdatepicker').val($('#datepicker').val());
            $('#pddlGender').val($('#ddlGender').val());
            $('#pddlbloodgroupp').val($('#ddlbloodgroupp').val());
            $('#pciyn').val($('#ciyn').val());
            $('#ppinn').val($('#pinn').val());
            $('#pland').val($('#land').val());
            $('#pmobilenum').val($('#mobilenum').val());
        }
        else {



            $('#pdatepicker').val('');
            $('#pddlGender').val('------------Select Country------------');
            $('#pddlbloodgroupp').val('------------Select State------------');
            $('#pciyn').val('');
            $('#ppinn').val('');
            $('#pland').val('');
            $('#pmobilenum').val('');
        }

    });




    $('#btnRegisteredwe').click(function () {
        var flag = 0;



        if (($('#txtSecureCode').val() == '')) {




            alert("Enter Captcha code");


            flag = 1;
        }



        var x = document.getElementById("datatable190").rows.length;
        var table = $('#datatable190').DataTable();


        if (table.cell().data() === undefined) {
            flag = 1;
            alert("Please Add Education");
        }



        if (flag == 0) {


            if (navigator.onLine) {

                var result = confirm("Edit not allowed after submit do you want continue?");
                if (result) {


                    $('#bj').show();
                    $('#btnRegistered').hide();
                    var df = $('#txtSecureCode').val();

                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "AcademicDetails.aspx/save",
                        data: "{'datar':'" + df + "'}",
                        success: function (response) {


                            if (response.d == "empty") {

                                $('#btnRegistered').show();
                                alert("Invalid Captcha Code");
                                $('#bj').hide();

                            }


                            if (response.d == "error") {

                                alert("Something went wrong");

                                $('#btnRegistered').show();
                                $('#bj').hide();



                            }
                            else if (response.d == "success") {
                                $('#bj').hide();

                                $("#form2")[0].reset();
                                window.location.replace("OtherDetails");
                                // alert('succccc');



                            }





                        },

                        error: function (ty) {
                            alert(ty.d);


                        }








                    });






                }
            }
            else {
                alert("You are offline.");
            }

        }


    });








    $('#btnRegisterednt').click(function () {



        var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        var fg = /[0-9]{10}/;
        var flag = 0;



        if ($('#pdatepicker').val() == '' || $('#datepicker').val() == '') {
            alert("Input your address");
            flag = 1;
        }


        if ($('#pddlGender').val() == 'df' || $('#ddlGender').val() == 'df') {
            alert("Select your Country");
            flag = 1;
        }
        if ($('#pddlbloodgroupp').val() == 'df' || $('#ddlbloodgroupp').val() == 'df') {
            alert("Select your State");
            flag = 1;
        }
        if ($('#pciyn').val() == '' || $('#ciyn').val() == '') {
            alert("Input your City");
            flag = 1;
        }
        if ($('#ppinn').val() == '' || $('#pinn').val() == '') {
            alert("Input your Pin Code");
            flag = 1;
        }



        if ($('#pmobilenum').val() == '' || $('#mobilenum').val() == '') {
            alert("Input your Mobile Number");
            flag = 1;
        }
        else if (!fg.test($('#pmobilenum').val()) || !fg.test($('#mobilenum').val())) {

            alert("Please input a valid mobile");

            flag = 1;
        }













        if (($('#txtSecureCode').val() == '')) {




            alert("Enter Captcha code");


            flag = 1;
        }


        if (flag == 0) {


            if (navigator.onLine) {

                var result = confirm("Edit not allowed after submit do you want continue?");
                if (result) {


                    $('#bj').show();
                    $('#btnRegistered').hide();


                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "PostalDetails.aspx/save",
                        data: "{'datar':'" + $('#form2').serialize() + "'}",
                        success: function (response) {


                            if (response.d == "empty") {

                                $('#btnRegistered').show();
                                alert("Invalid Captcha Code");
                                $('#bj').hide();

                            }


                            if (response.d == "error") {

                                alert("Something went wrong");

                                $('#btnRegistered').show();
                                $('#bj').hide();



                            }
                            else if (response.d == "success") {
                                $('#bj').hide();

                                $("#form2")[0].reset();
                                window.location.replace("apply");
                                // alert('succccc');



                            }





                        },

                        error: function (ty) {
                            alert(ty.d);


                        }








                    });






                }
            }
            else {
                alert("You are offline.");
            }

        }








    });












    $('#btnRegisteredcret').click(function () {



        var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        var fg = /[0-9]{10}/;
        var flag = 0;





        if ($('#lastqulafication').val() == 'df') {

            alert("Please Select Last Qualification");

            flag = 1;
        }

        if ($('#FirstName').val() == '') {

            alert("Please Enter Exam Name");

            flag = 1;
        }



        if ($('#boardorunivercity').val() == 'df') {

            alert("Please Select Board/University Name");

            flag = 1;
        }



        if ($('#LastName2').val() == 'df') {

            alert("Please Select  full marks");

            flag = 1;
        }

        if ($('#datepickert').val() == '') {

            alert("Please enter obtain marks");

            flag = 1;
        }


        if ($('#txtEmail').val() == '') {

            alert("Please enter passing year");

            flag = 1;
        }







        if (($('#txtSecureCode').val() == '')) {




            alert("Enter Captcha code");


            flag = 1;
        }


        if (flag == 0) {


            if (navigator.onLine) {

                var result = confirm("Edit not allowed after submit do you want continue?");
                if (result) {


                    $('#bj').show();
                    $('#btnRegisteredcret').hide();


                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "CriteriaDetails.aspx/save",
                        data: "{'datar':'" + $('#form2').serialize() + "'}",
                        success: function (response) {


                            if (response.d == "empty") {

                                $('#btnRegisteredcret').show();
                                alert("Invalid Captcha Code");
                                $('#bj').hide();

                            }


                            if (response.d == "error") {

                                alert("Something went wrong");

                                $('#btnRegisteredcret').show();
                                $('#bj').hide();



                            }
                            else if (response.d == "success") {
                                $('#bj').hide();

                                $("#form2")[0].reset();
                                window.location.replace("PostalDetails");
                                // alert('succccc');



                            }





                        },

                        error: function (ty) {
                            alert(ty.d);


                        }








                    });






                }
            }
            else {
                alert("You are offline.");
            }

        }








    });






    $("#statustxtx").text('');
    $("#statustxt").text('');

    $('#btnRegistered').click(function () {



        var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        var fg = /[0-9]{10}/;
        var flag = 0;


        if (($('#FirstName').val() == '') || ($('#FirstName').val() == 'Name')) {

            alert("Enter your first name");

            flag = 1;
        }

        if ($('#mobilenumt').val() == '' || $('#mobilenumt').val() == '') {
            alert("Input your Mobile Number");
            flag = 1;
        }
        else if (!fg.test($('#mobilenumt').val()) || !fg.test($('#mobilenumt').val())) {

            alert("Please input a valid mobile");

            flag = 1;
        }





        if (($('#datepicker').val() == '') || ($('#datepicker').val() == 'Name')) {

            alert("Please Enter your Date of Birth");

            flag = 1;
        }




        if ($('#ddlGender').val() == 'df') {

            alert("Please Select Gender");

            flag = 1;
        }



        if ($('#ddlbloodgroupp').val() == 'df') {

            alert("Please Select Blood Group");

            flag = 1;
        }


        if ($('#ddlGendert').val() == 'df') {

            alert("Please Select Caste");

            flag = 1;
        }

        if ($('#ddlbloodgrouppt').val() == 'df') {

            alert("Please Select Disability");

            flag = 1;
        }



        if (($('#txtEmail').val() == '') || ($('#txtEmail').val() == 'Email')) {
            alert("Enter Email-id");
            flag = 1;
        }
        else if (!filter.test($('#txtEmail').val())) {
            alert("Please enter valid email-id");
            flag = 1;
        }

        if (($('#txtEmail2').val() == '') || ($('#txtEmail2').val() == 'Email')) {
            alert("Enter Email-id");
            flag = 1;
        }
        else if (!filter.test($('#txtEmail2').val())) {
            alert("Please enter valid email-id");
            flag = 1;
        }

        if ($('#FatherName').val() == '') {

            alert("Please Enter Father Name");

            flag = 1;
        }





        if ($('#MotherName').val() == '') {

            alert("Please Enter Mother Name");

            flag = 1;
        }


        if ($('#dddlpoccu').val() == 'df') {

            alert("Please Select Occupation");

            flag = 1;
        }


        if (($('#TxtPemail').val() == '') || ($('#TxtPemail').val() == 'Email')) {
            alert("Enter Email-id");
            flag = 1;
        }
        else if (!filter.test($('#TxtPemail').val())) {
            alert("Please enter valid email-id");
            flag = 1;
        }




        if (($('#txtSecureCode').val() == '')) {




            alert("Enter Captcha code");


            flag = 1;
        }



        if ($("#myUploadedImg").attr('src') === undefined) {




            alert("Please Upload your Photo");


            flag = 1;
        }

        if ($("#myUploadedImgx").attr('src') === undefined) {




            alert("Please Upload your Signature");


            flag = 1;
        }







        if (flag == 0) {


            if (navigator.onLine) {

                var result = confirm("Edit not allowed after submit do you want continue?");
                if (result) {


                    $('#bj').show();
                    $('#btnRegistered').hide();


                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Default.aspx/save",
                        data: "{'datar':'" + $('#form2').serialize() + "'}",
                        success: function (response) {


                            if (response.d == "empty") {

                                $('#btnRegistered').show();
                                alert("Invalid Captcha Code");
                                $('#bj').hide();

                            }


                            if (response.d == "error") {

                                alert("Something went wrong");

                                $('#btnRegistered').show();
                                $('#bj').hide();



                            }
                            else if (response.d == "success") {
                                $('#bj').hide();

                                $("#form2")[0].reset();
                                window.location.replace("Registrationmessage");
                                // alert('succccc');



                            }





                        },

                        error: function (ty) {
                            alert(ty.d);


                        }








                    });






                }
            }
            else {
                alert("You are offline.");
            }

        }








    });

    $('#Button12').click(function () {


        $('#Button12').hide();
        $('#bj').show();
        var datay = $('#suv').val();
        $.ajax({
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            url: "Default.aspx/savexx",
            data: "{'datay':'" + datay + "'}",
            success: function (responsex) {

                $('#imgCaptcha').attr({
                    src: responsex.d,
                    title: "",
                    alt: ""
                });


                $('#imgCaptcha').load(function () {
                    $('#bj').hide();
                    $('#Button12').show();

                });
            }

        });
    });


    $('#picload').click(function () {
        // ShowProgress();
        var fileUpload = $("#f_UploadImage").get(0);
        var files = fileUpload.files;



        // Looping over all files and add it to FormData object  

        if (files.length > 0) {




            // Create FormData object  
            var fileData = new FormData();

            // Looping over all files and add it to FormData object  
            for (var i = 0; i < files.length; i++) {
                fileData.append('file', files[i]);

            }



            sendFile(fileData, "0");
        }
        else {
            alert("Please Select your File ");
        }
    });





    $('#picloadx').click(function () {
        // ShowProgress();
        var fileUpload = $("#f_UploadImagex").get(0);
        var files = fileUpload.files;



        // Looping over all files and add it to FormData object  

        if (files.length > 0) {
            var fileData = new FormData();

            // Looping over all files and add it to FormData object  
            for (var i = 0; i < files.length; i++) {
                fileData.append('file', files[i]);

            }



            sendFile(fileData, "1");
        }
        else {
            alert("Please Select your File ");
        }
    });




    $('#addqualificationlm').click(function () {
        // ShowProgress();
        var fileUpload = $("#FileUpload1").get(0);
        var files = fileUpload.files;



        // Looping over all files and add it to FormData object  

        if (files.length > 0) {
            var fileData = new FormData();

            // Looping over all files and add it to FormData object  
            for (var i = 0; i < files.length; i++) {
                fileData.append('file', files[i]);
                fileData.append('title', $('#ddlGenderm').val());
            }



            sendFile(fileData, "2");
        }
        else {
            alert("Please Select your File ");
        }
    });






    $('#btnSubmitd').click(function (e) {




        var datay = $("#uid").val();
        var datax = $("#pass").val();

        var flag = 0;

        if ($("#uid").val() == '') {

            alert("Input ID");
            $('#bj').hide();

            flag = 1;
        }
        if ($("#pass").val() == '') {

            alert("Input password");
            $('#bj').hide();
            flag = 1;
        }

        if (flag == 0) {
            $('#bj').show();
            $('#btnSubmitd').hide();
            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                url: "Login.aspx/savex",
                data: "{'datan':'" + datay + "','datar':'" + datax + "'}",
                success: function (data) {
                    var result = jQuery.parseJSON(data.d);
                    var prc, sta;
                    for (var i = 0; i < result.length; i++) {
                        prc = result[i].processcomp;
                        sta = result[i].status;


                        //alert(sta);
                        ///  alert(prc);
                        if (sta == "success" && prc == "1") {

                            window.location.replace("CriteriaDetails");
                        }

                        if (sta == "success" && prc == "2") {

                            window.location.replace("PostalDetails");
                        }
                        if (sta == "success" && prc == "3") {

                            window.location.replace("apply");
                        }

                        if (sta == "success" && prc == "4") {

                            window.location.replace("statusrecord");
                        }


                        if (sta == "success" && prc == "5") {

                            window.location.replace("Dashboard");
                        }
                        if (sta == "error") {
                            alert("Invalid id or password");
                            $('#bj').hide();
                            $('#btnSubmitd').show();
                        }
                        if (sta == "errorx") {
                            alert("Try again..");
                            $('#bj').hide();
                            $('#btnSubmitd').show();
                        }


                    }


                },
                error: function (rt) {
                    alert("Something went wrong");
                    $('#bj').hide();
                    $('#btnSubmitd').show();
                }

            });
        }

    });








})





function sendFile(fileData, type) {


    if (type == "0") {
        $.ajax({
            type: 'post',
            url: 'uploadfilex1.ashx',
            data: fileData,
            xhr: function () {  // Custom XMLHttpRequest
                var myXhr = $.ajaxSettings.xhr();
                if (myXhr.upload) { // Check if upload property exists
                    //update progressbar percent complete
                    $("#statustxt").text('0%');
                    $('#picload').hide();
                    // For handling the progress of the upload
                    myXhr.upload.addEventListener('progress', progressHandlingFunction, false);

                }
                return myXhr;
            },
            success: function (status) {
                if (status != 'error') {
                    var my_path = "MediaUploader/" + status;
                    $("#myUploadedImg").attr("src", my_path);
                    $('#picload').hide();

                }
                if (status == 'errory') {
                    $('#picload').show();

                    $("#statustxt").text('');
                    alert("Accepted file size is 20kb-150kb");

                }
                if (status == 'errorz') {
                    $('#picload').show();

                    $("#statustxt").text('');
                    alert("Invalid file format ,Acceptable format is : jpeg,jpg,png ");


                }

            },
            processData: false,
            contentType: false,
            error: function () {
                alert("Whoops something went wrong!");
            }
        });

    }
    if (type == "1") {
        $.ajax({
            type: 'post',
            url: 'upload21.ashx',
            data: fileData,
            xhr: function () {  // Custom XMLHttpRequest
                var myXhr = $.ajaxSettings.xhr();
                if (myXhr.upload) { // Check if upload property exists
                    //update progressbar percent complete
                    $("#statustxtx").text('0%');
                    $('#picloadx').hide();
                    // For handling the progress of the upload
                    myXhr.upload.addEventListener('progress', progressHandlingFunctionx, false);

                }
                return myXhr;
            },
            success: function (status) {
                if (status != 'error') {
                    var my_path = "MediaUploader/" + status;
                    $("#myUploadedImgx").attr("src", my_path);
                    $('#picloadx').hide();

                }
                if (status == 'errory') {
                    $('#picloadx').show();

                    $("#statustxtx").text('');
                    alert("Accepted file size is 20kb-150kb");


                }
                if (status == 'errorz') {
                    $('#picloadx').show();

                    $("#statustxtx").text('');
                    alert("Invalid file format ,Acceptable format is : jpeg,jpg,png ");


                }

            },
            processData: false,
            contentType: false,
            error: function () {
                alert("Whoops something went wrong!");
            }
        });
    }


    if (type == "2") {

        //  alert("hhhhg");
        $.ajax({



            type: 'post',
            url: 'upload212.ashx',
            data: fileData,
            xhr: function () {  // Custom XMLHttpRequest
                var myXhr = $.ajaxSettings.xhr();
                if (myXhr.upload) { // Check if upload property exists
                    //update progressbar percent complete
                    $("#statustxt").text('0%');
                    $('#addqualificationlm').hide();
                    // For handling the progress of the upload
                    myXhr.upload.addEventListener('progress', progressHandlingFunctionxt, false);

                }
                return myXhr;
            },
            success: function (status) {
                if (status != 'error') {
                    if ($("#prtmm").val() != '') {
                        jQuery('#prtmm').click();
                    }

                }
                if (status == 'errory') {
                    $('#addqualificationlm').show();

                    $("#statustxt").text('');
                    alert("Accepted file size is 1 MB");


                }
                if (status == 'errorz') {
                    $('#addqualificationlm').show();

                    $("#statustxt").text('');
                    alert("Invalid file format ,Acceptable format is : .jpeg,.jpg,.png,.bmp,.pdf,.doc,docx ");


                }

            },
            processData: false,
            contentType: false,
            error: function () {
                alert("Whoops something went wrong!");
            }
        });
    }







}

function progressHandlingFunction(e) {
    if (e.lengthComputable) {
        var percentage = Math.floor((e.loaded / e.total) * 100);
        $("#statustxt").text(percentage + '%');
        // alert(sd);
        //update progressbar percent complete
        // statustxt.html(percentage + '%');
        console.log("Value = " + e.loaded + " :: Max =" + e.total);
    }
}

function progressHandlingFunctionx(e) {
    if (e.lengthComputable) {
        var percentage = Math.floor((e.loaded / e.total) * 100);
        $("#statustxtx").text(percentage + '%');
        // alert(sd);
        //update progressbar percent complete
        // statustxt.html(percentage + '%');
        console.log("Value = " + e.loaded + " :: Max =" + e.total);
    }
}


function progressHandlingFunctionxt(e) {
    if (e.lengthComputable) {
        var percentage = Math.floor((e.loaded / e.total) * 100);
        $("#statustxt").text(percentage + '%');
        // alert(sd);
        //update progressbar percent complete
        // statustxt.html(percentage + '%');
        console.log("Value = " + e.loaded + " :: Max =" + e.total);
    }
}

function ShowProgress() {
    setTimeout(function () {
        var modal = $('<div />');
        modal.addClass("modal");
        $('body').append(modal);
        var loading = $(".loading");
        loading.show();
        var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
        var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
        loading.css({ top: top, left: left });
    }, 200);



}

function hth() {
    var modal = document.getElementById('myModal');

    modal.style.display = "none";
}