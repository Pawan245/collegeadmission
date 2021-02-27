$(document).ready(function () {

    var cy = 0;

    $('#addprogram').click(function () {


        if (!validate()) {
            return;
        }



        if (navigator.onLine) {

            var result = confirm("Edit not allowed after submit do you want continue?");
            if (result) {


                $('#bj').show();
                $('#addprogram').hide();



                $.ajax({
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    url: "Admin_AddSubject.aspx/createprogram",
                   data: "{'data1':'" + $('#programname').val() + "','data2':'" + $('#Text1').val() + "','data3':'" + $('#Text2').val() + "'}",
                    success: function (response) {




                        if (response.d == "error") {

                            alert("Something went wrong");

                            $('#addprogram').show();
                            $('#bj').hide();



                        }


                        if (response.d == "success") {
                            $('#bj').hide();
                            $('#addprogram').show();


                            $('#programname').val("");
                            $('#Text1').val("");
                            $('#Text2').val("");



                            alert('Program Created Successfully');
                            var tukkm = "l";



                            $.ajax({
                                type: "POST",
                                dataType: "json",
                                url: "Reg.asmx/getallprogram",
                                "data": {
                                    "data": tukkm
                                },
                                timeout: 60000,
                                success: function (data) {


                                    $('#datatable').dataTable({

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

                                                "data": "programname"



                                            },
                                            {

                                                "data": "session"



                                            },
                                            {
                                                "data": "maxsubject"
                                            },
                                            {
                                                "data": "id",
                                                'render': function (ft) {
                                                    if (ft != '') {
                                                        return '<input type="checkbox" name="passzzq" value="' + ft + '">'
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


                        }





                    },

                    error: function (ty) {
                        alert(ty.d);
                        $('#bj').hide();
                        $('#addprogram').show();
                    }








                });






            }
        }
        else {
            alert("You are offline.");
        }

    });

       

       
    $('#addprogramn').click(function () {


        if (!validate2()) {
            return;
        }



        if (navigator.onLine) {

            var result = confirm("Edit not allowed after submit do you want continue?");
            if (result) {


                $('#bj').show();
                $('#addprogramn').hide();



                $.ajax({
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    url: "SubjectSetup.aspx/subjectsetup",
                    data: "{'data1':'" + $('#programname').val() + "','data2':'" + $('#Text1').val() + "','data3':'" + $('#Text2').val() + "'}",
                    success: function (response) {




                        if (response.d == "error") {

                            alert("Something went wrong");

                            $('#addprogramn').show();
                            $('#bj').hide();



                        }


                        if (response.d == "success") {
                            $('#bj').hide();
                            $('#addprogramn').show();
                            alert('Subject Added Successfully');


                            $('#programname').val("");
                            $('#Text1').val("");
                            $('#Text2').val("");

                            var tukkm = "l";



                            $.ajax({
                                type: "POST",
                                dataType: "json",
                                url: "Reg.asmx/getallsubject",
                                "data": {
                                    "data": tukkm
                                },
                                timeout: 60000,
                                success: function (data) {


                                    $('#datatable2').dataTable({

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

                                                "data": "programname"



                                            },
                                            {

                                                "data": "session"



                                            },
                                            {
                                                "data": "maxsubject"
                                            },
                                            {
                                                "data": "id",
                                                'render': function (ft) {
                                                    if (ft != '') {
                                                        return '<input type="checkbox" name="passzzq" value="' + ft + '">'
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




                        }





                    },

                    error: function (ty) {
                        alert(ty.d);
                        $('#bj').hide();
                        $('#addprogramn').show();
                    }








                });






            }
        }
        else {
            alert("You are offline.");
        }

    });



    /********************************Load program**************************************/
    var tukkm = "l";



    $.ajax({
        type: "POST",
        dataType: "json",
        url: "Reg.asmx/getallprogram",
        "data": {
            "data": tukkm
        },
        timeout: 60000,
        success: function (data) {


            $('#datatable').dataTable({

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

                        "data": "programname"



                    },
                    {

                        "data": "session"



                    },
                    {
                        "data": "maxsubject"
                    },                    
                    {
                        "data": "id",
                        'render': function (ft) {
                            if (ft != '') {
                                return '<input type="checkbox" name="passzzq" value="' + ft + '">'                             }
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


    /************************************************************************************/



    /**********************Load Subject ********************/

    var tukkm = "l";



    $.ajax({
        type: "POST",
        dataType: "json",
        url: "Reg.asmx/getallsubject",
        "data": {
            "data": tukkm
        },
        timeout: 60000,
        success: function (data) {


            $('#datatable2').dataTable({

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

                        "data": "programname"



                    },
                    {

                        "data": "session"



                    },
                    {
                        "data": "maxsubject"
                    },
                    {
                        "data": "id",
                        'render': function (ft) {
                           
                                return '<input type="checkbox" name="passzzq" value="' + ft + '">'
                           
                        }


                    }


                ]


            });



        },
        error: function nm(ex) {
            alert(ex);
        }

    });
















/***************************************************************/


    /***************************************Load All Caste start here **************************************************************/

    var tukkm = "l";



    $.ajax({
        type: "POST",
        dataType: "json",
        url: "Reg.asmx/getallcaste",
        "data": {
            "data": tukkm
        },
        timeout: 60000,
        success: function (data) {


            $('#datatablecaste').dataTable({

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

                        "data": "programname"



                    },
                    {

                        "data": "session",
                         'render': function (ft) {

                             if (ft == 'na') {
                                 return 'Active'
                             }
                             else {
                                 return'Deactive'
                             }

                        }



                    },
                    {
                        "data": "maxsubject"
                    },
                    {
                        "data": "id",
                        'render': function (ft) {

                            return '<input type="checkbox" name="passzzqcaste" value="' + ft + '">'

                        }


                    }


                ]


            });



        },
        error: function nm(ex) {
            alert(ex);
        }

    });




    /*******************************************************Load caste here end*******************************************************/





    $('#addlng').unbind("click").click(function () {

        var xu = $('input[ name="passzzq" ]:checked').length;
       // alert(xu);
        if (xu==1) {
            $('input[ name="passzzq"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    var modal = document.getElementById('myModal');
                    modal.style.display = "block";





                    var tukkm = "l";



                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: "Reg.asmx/getallsubject",
                        "data": {
                            "data": tukkm
                        },
                        timeout: 60000,
                        success: function (data) {


                            $('#datatable2').dataTable({

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

                                        "data": "programname"



                                    },
                                    {

                                        "data": "session"



                                    },
                                    {
                                        "data": "maxsubject"
                                    },
                                    {
                                        "data": "id",
                                        'render': function (ft) {

                                            return '<input type="checkbox" name="passzzqtm" value="' + ft + '">'

                                        }


                                    }


                                ]


                            });



                        },
                        error: function nm(ex) {
                            alert(ex);
                        }

                    });

                }

                });
        }


        else {
            alert("Select at least one item");

        }

    });



    $('#addln').unbind("click").click(function () {
        addlng
        var xu = $('input[ name="passzzqtm" ]:checked').length;
        var xut = $('input[ name="passzzq" ]:checked').val();
        if ($('input[ name="passzzqtm" ]:checked').length > 0) {
            $('input[ name="passzzqtm"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    //alert(nj);
                    //  deleteprogram(nj,xu);


                    $("#bov2").show();
                    $('#addln').hide();

                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Admin_AddLanguageSubject.aspx/delprogram",
                        data: "{'data1':'" + nj + "','data2':'" + xut + "'}",

                        success: function (response) {

                            if (response.d == "success") {
                                cy++;
                                $('#stkn').text(cy + "    Subject Added successfully");

                                if (xu == cy) {

                                    $("#bov2").hide();

                                    $('#addln').show();
                                    setTimeout(function () { $('#stkn').text(''); }, 5000);




                                    cy = 0;


                                  


                                }
                            }
                            else {
                                $("#bov2").hide();

                                $('#addln').show();
                                alert("Subject already added");
                               // $('#stkn').text("Something went wrong");
                              
                            }
                        },

                        error: function nm(r) {
                            // alert(r);
                            $("#bov2").hide();
                            $('#addln').show();
                            alert("Something went wrong");

                        }

                    });

                }
            });
        }
        else {
            alert("Select at least one item");

        }
    }
    );


    /***************************************************************/


    $('#generatecategoryaddhons').unbind("click").click(function () {

        var xu = $('input[ name="passzzq" ]:checked').length;
        // alert(xu);
        if (xu == 1) {
            $('input[ name="passzzq"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    var modal = document.getElementById('myModal');
                    modal.style.display = "block";





                    var tukkm = "l";



                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: "Reg.asmx/getallsubject",
                        "data": {
                            "data": tukkm
                        },
                        timeout: 60000,
                        success: function (data) {


                            $('#datatable2').dataTable({

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

                                        "data": "programname"



                                    },
                                    {

                                        "data": "session"



                                    },
                                    {
                                        "data": "maxsubject"
                                    },
                                    {
                                        "data": "id",
                                        'render': function (ft) {

                                            return '<input type="checkbox" name="passzzqtm" value="' + ft + '">'

                                        }


                                    }


                                ]


                            });



                        },
                        error: function nm(ex) {
                            alert(ex);
                        }

                    });

                }

            });
        }


        else {
            alert("Select at least one item");

        }

    });



    $('#addhons').unbind("click").click(function () {
        var xu = $('input[ name="passzzqtm" ]:checked').length;
        var xut = $('input[ name="passzzq" ]:checked').val();
        if ($('input[ name="passzzqtm" ]:checked').length > 0) {
            $('input[ name="passzzqtm"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    //alert(nj);
                    //  deleteprogram(nj,xu);


                    $("#bov2").show();
                    $('#addhons').hide();

                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Admin_AddHonsSubject.aspx/delprogram",
                        data: "{'data1':'" + nj + "','data2':'" + xut + "'}",

                        success: function (response) {

                            if (response.d == "success") {
                                cy++;
                                $('#stkn').text(cy + "    Subject Added successfully");

                                if (xu == cy) {

                                    $("#bov2").hide();

                                    $('#addhons').show();
                                    setTimeout(function () { $('#stkn').text(''); }, 5000);




                                    cy = 0;





                                }
                            }
                            else {
                                $("#bov2").hide();

                                $('#addhons').show();
                                alert("Subject already added");
                                // $('#stkn').text("Something went wrong");

                            }
                        },

                        error: function nm(r) {
                            // alert(r);
                            $("#bov2").hide();
                            $('#addhons').show();
                            alert("Something went wrong");

                        }

                    });

                }
            });
        }
        else {
            alert("Select at least one item");

        }
    }
    );





    /*****************************************************/





    /***************************************************************/


    $('#generatecategoryaddsubs2').unbind("click").click(function () {

        var xu = $('input[ name="passzzq" ]:checked').length;
        // alert(xu);
        if (xu == 1) {
            $('input[ name="passzzq"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    var modal = document.getElementById('myModal2');
                    modal.style.display = "block";





                    var tukkm = "l";



                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: "Reg.asmx/getallsubject",
                        "data": {
                            "data": tukkm
                        },
                        timeout: 60000,
                        success: function (data) {


                            $('#datatable22').dataTable({

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

                                        "data": "programname"



                                    },
                                    {

                                        "data": "session"



                                    },
                                    {
                                        "data": "maxsubject"
                                    },
                                    {
                                        "data": "id",
                                        'render': function (ft) {

                                            return '<input type="checkbox" name="passzzqtmn" value="' + ft + '">'

                                        }


                                    }


                                ]


                            });



                        },
                        error: function nm(ex) {
                            alert(ex);
                        }

                    });

                }

            });
        }


        else {
            alert("Select at least one item");

        }

    });



    $('#addsub2').unbind("click").click(function () {
        var xu = $('input[ name="passzzqtmn" ]:checked').length;
        var xut = $('input[ name="passzzq" ]:checked').val();
        if ($('input[ name="passzzqtmn" ]:checked').length > 0) {
            $('input[ name="passzzqtmn"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    //alert(nj);
                    //  deleteprogram(nj,xu);


                    $("#bov29").show();
                    $('#addsub2').hide();

                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Admin_AddSubSubject.aspx/delprogram2",
                        data: "{'data1':'" + nj + "','data2':'" + xut + "'}",

                        success: function (response) {

                            if (response.d == "success") {
                                cy++;
                                $('#stkn2').text(cy + "    Subject Added successfully");

                                if (xu == cy) {

                                    $("#bov29").hide();

                                    $('#addsub2').show();
                                    setTimeout(function () { $('#stkn2').text(''); }, 5000);




                                    cy = 0;

                                   



                                }
                            }
                            else {
                                $("#bov29").hide();
                                setTimeout(function () { $('#stkn2').text(''); }, 5000);
                                $('#addsub2').show();
                                alert("Subject already added");
                                // $('#stkn').text("Something went wrong");

                            }
                        },

                        error: function nm(r) {
                            // alert(r);
                            $("#bov29").hide();
                            $('#addsub2').show();
                            alert("Something went wrong");

                        }

                    });

                }
            });
        }
        else {
            alert("Select at least one item");

        }
    }
    );





    /*****************************************************/



    /***************************************************************/


    $('#generatecategoryaddsubs').unbind("click").click(function () {

        var xu = $('input[ name="passzzq" ]:checked').length;
        // alert(xu);
        if (xu == 1) {
            $('input[ name="passzzq"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    var modal = document.getElementById('myModal');
                    modal.style.display = "block";





                    var tukkm = "l";



                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: "Reg.asmx/getallsubject",
                        "data": {
                            "data": tukkm
                        },
                        timeout: 60000,
                        success: function (data) {


                            $('#datatable2').dataTable({

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

                                        "data": "programname"



                                    },
                                    {

                                        "data": "session"



                                    },
                                    {
                                        "data": "maxsubject"
                                    },
                                    {
                                        "data": "id",
                                        'render': function (ft) {

                                            return '<input type="checkbox" name="passzzqtm" value="' + ft + '">'

                                        }


                                    }


                                ]


                            });



                        },
                        error: function nm(ex) {
                            alert(ex);
                        }

                    });

                }

            });
        }


        else {
            alert("Select at least one item");

        }

    });



    $('#addsubs').unbind("click").click(function () {
        var xu = $('input[ name="passzzqtm" ]:checked').length;
        var xut = $('input[ name="passzzq" ]:checked').val();
        if ($('input[ name="passzzqtm" ]:checked').length > 0) {
            $('input[ name="passzzqtm"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    //alert(nj);
                    //  deleteprogram(nj,xu);


                    $("#bov2").show();
                    $('#addsubs').hide();

                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Admin_AddSubSubject.aspx/delprogram",
                        data: "{'data1':'" + nj + "','data2':'" + xut + "'}",

                        success: function (response) {

                            if (response.d == "success") {
                                cy++;
                                $('#stkn').text(cy + "    Subject Added successfully");

                                if (xu == cy) {

                                    $("#bov2").hide();

                                    $('#addsubs').show();
                                    setTimeout(function () { $('#stkn').text(''); }, 5000);




                                    cy = 0;





                                }
                            }
                            else {
                                $("#bov2").hide();

                                $('#addsubs').show();
                                alert("Subject already added");
                                setTimeout(function () { $('#stkn').text(''); }, 5000);   // $('#stkn').text("Something went wrong");

                            }
                        },

                        error: function nm(r) {
                            // alert(r);
                            $("#bov2").hide();
                            $('#addsubs').show();
                            alert("Something went wrong");

                        }

                    });

                }
            });
        }
        else {
            alert("Select at least one item");

        }
    }
    );





    /*****************************************************/









    $('#generatecategory').unbind("click").click(function () {
        var xu = $('input[ name="passzzq" ]:checked').length;

        if ($('input[ name="passzzq" ]:checked').length > 0) {
            $('input[ name="passzzq"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    //alert(nj);
                    //  deleteprogram(nj,xu);


                    $("#bov2").show();
                    $('#generatecategory').hide();

                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Admin_AddSubject.aspx/delprogram",
                        data: "{'data1':'" + nj + "'}",

                        success: function (response) {


                            cy++;
                            $('#stk').text(cy + "    Program Deleted successfully");

                            if (xu == cy) {

                                $("#bov2").hide();

                                $('#generatecategory').show();
                                setTimeout(function () { $('#stk').text(''); }, 5000);

                               


                                cy = 0;


                                jk();


                            }
                        },

                        error: function nm(r) {
                            // alert(r);
                            $("#bov2").hide();
                            $('#generatecategory').show();
                            alert("Something went wrong");

                        }

                    });

                }
            });
        }
                
                
                
        else {
            alert("Select at least one item");

        }
    });








                function validate() {
                    var g = true;

                    if ($('#programname').val() == '') {
                        g = false;
                        alert("Please enter program name")
                    }

                    if ($('#Text1').val() == '') {
                        g = false;
                        alert("Please enter Session name")
                    }


                    if ($('#Text2').val() == '') {
                        g = false;
                        alert("Please enter Max Subject")
                    }





                    return g;

                }





                function validate2() {
                    var g = true;

                    if ($('#programname').val() == '') {
                        g = false;
                        alert("Please enter Subject name")
                    }

                    if ($('#Text1').val() == '') {
                        g = false;
                        alert("Please enter Full Marks ")
                    }


                    if ($('#Text2').val() == '') {
                        g = false;
                        alert("Please enter Pass Marks")
                    }





                    return g;

                }


    /****************************************Validate for casting********************************************************************************/
    function validatecasting() {
        var g = true;

        if ($('#programname').val() == '') {
            g = false;
            alert("Please enter Caste  name")
        }

       




        return g;

    }






    /****************************************************************************************************************************************************/






    /****************************************************Add Caste *****************************************************************************************/

    $('#createcasteadmin').click(function () {


        if (!validatecasting()) {
            return;
        }



        if (navigator.onLine) {

            var result = confirm("Edit not allowed after submit do you want continue?");
            if (result) {


                $('#bj').show();
                $('#createcasteadmin').hide();



                $.ajax({
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    url: "Castesetup.aspx/createcasteapp",
                    data: "{'data':'" + $('#programname').val() + "'}",
                    success: function (response) {




                        if (response.d == "error") {

                            alert("Something went wrong");

                            $('#createcasteadmin').show();
                            $('#bj').hide();



                        }


                        if (response.d == "success") {
                            $('#bj').hide();
                            $('#createcasteadmin').show();
                            alert('Caste Added Successfully');


                            $('#programname').val("");
                           

                            var tukkm = "l";



                            $.ajax({
                                type: "POST",
                                dataType: "json",
                                url: "Reg.asmx/getallcaste",
                                "data": {
                                    "data": tukkm
                                },
                                timeout: 60000,
                                success: function (data) {


                                    $('#datatablecaste').dataTable({

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

                                                "data": "programname"



                                            },
                                            {

                                                "data": "session"



                                            },
                                            {
                                                "data": "maxsubject"
                                            },
                                            {
                                                "data": "id",
                                                'render': function (ft) {
                                                    if (ft != '') {
                                                        return '<input type="checkbox" name="passzzqcaste" value="' + ft + '">'
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




                        }





                    },

                    error: function (ty) {
                        alert(ty.d);
                        $('#bj').hide();
                        $('#createcasteadmin').show();
                    }








                });






            }
        }
        else {
            alert("You are offline.");
        }

    });







    /******************************************************************************************************************************************************/


    /********************************************************  Add Caste In the Program****************************************************************************************/
    $('#addcaste').unbind("click").click(function () {

        var xu = $('input[ name="passzzq" ]:checked').length;
        // alert(xu);
        if (xu == 1) {
            $('input[ name="passzzq"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    var modal = document.getElementById('myModal');
                    modal.style.display = "block";





                    var tukkm = "l";



                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: "Reg.asmx/getallcaste",
                        "data": {
                            "data": tukkm
                        },
                        timeout: 60000,
                        success: function (data) {


                            $('#datatablecastet').dataTable({

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

                                        "data": "programname"



                                    },
                                    {

                                        "data": "session",
                                        'render': function (ft) {

                                            if (ft == 'na') {
                                                return 'Active'
                                            }
                                            else {
                                                return 'Deactive'
                                            }

                                        }



                                    },
                                    {
                                        "data": "maxsubject"
                                    },
                                    {
                                        "data": "id",
                                        'render': function (ft) {

                                            return '<input type="checkbox" name="passzzqcaste" value="' + ft + '">'

                                        }


                                    }


                                ]


                            });



                        },
                        error: function nm(ex) {
                            alert(ex);
                        }

                    });

                }

            });
        }


        else {
            alert("Select at least one item");

        }

    });



    /***************************************Add Caste into DAtabase***********************************************************************************************/

    $('#addcasteintod').unbind("click").click(function () {
       
        var xu = $('input[ name="passzzqcaste" ]:checked').length;
        var xut = $('input[ name="passzzq" ]:checked').val();
        if ($('input[ name="passzzqcaste" ]:checked').length > 0) {
            $('input[ name="passzzqcaste"]:checked').each(function () {



                if (this.checked) {


                    var nj = $(this).val();

                    //alert(nj);
                    //  deleteprogram(nj,xu);


                    $("#bov2").show();
                    $('#addcasteintod').hide();

                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Admin_AddCaste.aspx/delprogram",
                        data: "{'data1':'" + nj + "','data2':'" + xut + "'}",

                        success: function (response) {

                            if (response.d == "success") {
                                cy++;
                                $('#stkn').text(cy + "    Subject Added successfully");

                                if (xu == cy) {

                                    $("#bov2").hide();

                                    $('#addln').show();
                                    setTimeout(function () { $('#stkn').text(''); }, 5000);




                                    cy = 0;





                                }
                            }
                            else {
                                $("#bov2").hide();

                                $('#addcasteintod').show();
                                alert("Subject already added");
                                // $('#stkn').text("Something went wrong");

                            }
                        },

                        error: function nm(r) {
                            // alert(r);
                            $("#bov2").hide();
                            $('#addcasteintod').show();
                            alert("Something went wrong");

                        }

                    });

                }
            });
        }
        else {
            alert("Select at least one item");

        }
    }
    );



    /***********************************************************************************************************************************************************/





    /************************************************************************************************************************************************************************/












            })



function jk() {
    var tukkm = "l";



    $.ajax({
        type: "POST",
        dataType: "json",
        url: "Reg.asmx/getallprogram",
        "data": {
            "data": tukkm
        },
        timeout: 60000,
        success: function (data) {


            $('#datatable').dataTable({

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

                        "data": "programname"



                    },
                    {

                        "data": "session"



                    },
                    {
                        "data": "maxsubject"
                    },
                    {
                        "data": "id",
                        'render': function (ft) {
                            if (ft != '') {
                                return '<input type="checkbox" name="passzzq" value="' + ft + '">'
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

}



function ht() {
    var modal = document.getElementById('myModal');

    modal.style.display = "none";
}


function ht2() {
    var modal = document.getElementById('myModal2');

    modal.style.display = "none";
}