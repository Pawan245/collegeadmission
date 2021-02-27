$(document).ready(function () {
    var cy = 0;
  
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

    /***************************************Load All Caste start here **************************************************************/

    var tukkm = "l";



    $.ajax({
        type: "POST",
        dataType: "json",
        url: "Reg.asmx/getallblood",
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

    /*******************************************************Load caste here end*******************************************************/    


    /****************************************Validate for casting********************************************************************************/
    function validatecasting() {
        var g = true;

        if ($('#programname').val() == '') {
            g = false;
            alert("Please enter Blood Group  name")
        }






        return g;

    }

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
                    url: "Bloodgroupsetup.aspx/createcasteapp",
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
                            alert('Blood Group Added Successfully');


                            $('#programname').val("");


                            var tukkm = "l";



                            $.ajax({
                                type: "POST",
                                dataType: "json",
                                url: "Reg.asmx/getallblood",
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
                        url: "Reg.asmx/getallblood",
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
                        url: "Addbloodgrouptoadmin.aspx/delprogram",
                        data: "{'data1':'" + nj + "','data2':'" + xut + "'}",

                        success: function (response) {

                            if (response.d == "success") {
                                cy++;
                                $('#stkn').text(cy + "    Items Added successfully");

                                if (xu == cy) {

                                    $("#bov2").hide();

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