$(document).ready(function () {




    /*********************submit selected student ************************************************/


    $('#hubmit').click(function () {
        $("html, body").animate({ scrollTop: 0 }, 0);

        var xut = $('input[ name="passzzqcaster" ]:checked').length;


        if ($('input[ name="passzzqcaster" ]:checked').length > 0) {

            $('input[ name="passzzqcaster"]').each(function () {

                if (this.checked) {



                   

                    $("#bov2").show();
                    $('#refresh8').hide();
                    $('#refresh').hide();
                    $('#refresh9').hide();
                    var xcn = $(this).val();
                   // alert(xcn);
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        url: "Reg.asmx/Verifi",
                        data: "{'OR_CODE':'" + xcn + "','message':'"+$("#showlisttext").val()+"'}",

                        success: function (response) {


                            cy++;
                            $('#stk').text(cy + "    Items changed successfully");

                            if (xut == cy) {
                                // $("#bov").hide();
                                // $('#refresh8').show();
                                // $('#refresh').show();
                                // $('#refresh9').show();
                                window.location.reload(true);

                            }
                        },

                        error: function nm(r) {
                            alert(r);
                            $("#bov2").hide();
                            $('#refresh8').show();
                            $('#refresh').show();
                            $('#refresh9').show();
                            alert("Something went wrong");

                        }

                    });




                }


            });

        }
        else {
            alert("Select an items.");
        }

    });

    /****************************************************************************************************/













    $('#showlistk').click(function (e) {
        if ($(this).hasClass('checkedAll')) {
            $('input[ name="passzzqcaster" ]').prop('checked', false);
            $(this).removeClass('checkedAll');

            var tablee = $('#datatable').DataTable();
            tablee.$('tr').removeClass('selected');

        } else {
            $('input[ name="passzzqcaster" ]').prop('checked', true);
            $(this).addClass('checkedAll');
            var tablee = $('#datatable').DataTable();
            tablee.$('tr').addClass('selected');
        }
    });






    $('#showlist').click(function () {

        if (!validatecasting()) {
            return;
        }


        $.ajax({
            type: "POST",
            dataType: "json",
            url: "Reg.asmx/getallprogramvmerit",
            "data": {
                "data": tukkm,
                "honstype": $('#ContentPlaceHolder1_ddlcoursename').val(),
                "category": $('#ContentPlaceHolder1_ddlcategoryname').val()
            },
            timeout: 60000,
            success: function (data) {

            
             var tg=    $('#datatable').dataTable({
                    iDisplayLength: $("#ContentPlaceHolder1_txttotalseat").val(),
                    destroy: true,
                    columnDefs: [
                        {
                            targets: [13],//when sorting age column
                            orderData: [13, 8] //sort by age then by salary
                        }
                    ],
                    order: [13, 'Desc'],
                    "lengthChange": false,
                    //  "pageLength": 1000,
                    "fnCreatedRow": function () {

                        $("#bov2").hide();
                    },
                    "fnRowCallback" : function(nRow, aData, iDisplayIndex){
                $("td:first", nRow).html(iDisplayIndex +1);
               return nRow;
            },
                    "initComplete": function (settings, json) {
                        $("#bov2").hide();

                    },
                    data: data,
                    columns: [

                        { "data": "srno" },

                      
                        
                        {

                            "data": "regid"



                        },



                        { "data": "names" },
                        { "data": "fname" },
                        { "data": "mname" },
                        { "data": "lastqq" },
                        { "data": "passinyy" },







                        {

                            "data": "honss"



                        },
                        {
                            "data": "totalobt"
                        },


                        {

                            "data": "fullmark"



                        },
                        {

                            "data": "percentage"



                        },
                        {
                            "data": "honsmarks"
                        },

                        {

                            "data": "honstotal"



                        },
                        {

                            "data": "honsper"



                        },
                        {
                            "data": "caste"
                        },


                        {

                            "data": "gender"



                        },
                        {

                            "data": "disability"



                        },

                        {
                            "data": "regid",
                            'render': function (ft) {
                                if (ft != '') {
                                    return '<a class="green" href="viewdata?id=' + ft + '"  target="_blank"><i class="ace-icon fa fa-pencil bigger-130"></i></a>  <input type="checkbox" name="passzzqcaster" value="' + ft + '">';


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



















    var cy = 0;

    var tukkm = "l";



   

    /***************************************Load All Caste start here **************************************************************/

    var tukkm = "l";



    $.ajax({
        type: "POST",
        dataType: "json",
        url: "Reg.asmx/getallgender",
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

        if ($('#ContentPlaceHolder1_ddlSession').val() == 'df') {
            g = false;
            alert("Please select session");
        }


        if ($('#ContentPlaceHolder1_ddlcollegename').val() == 'df') {
            g = false;
            alert("Please select college");
        }


        if ($('#ContentPlaceHolder1_ddlcoursename').val() == 'df') {
            g = false;
            alert("Please select couse");
        }

        if ($('#ContentPlaceHolder1_ddlcategoryname').val() == 'df') {
            g = false;
            alert("Please select Category");
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
                    url: "Gendersetup.aspx/createcasteapp",
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
                            alert('Gender Added Successfully');


                            $('#programname').val("");


                            var tukkm = "l";



                            $.ajax({
                                type: "POST",
                                dataType: "json",
                                url: "Reg.asmx/getallgender",
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
                        url: "Reg.asmx/getallgender",
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
                        url: "Admin_addgender.aspx/delprogram",
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