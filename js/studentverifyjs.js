

$(document).ready(function () {


    $('#createcasteadmin').click(function () {


        if (!validatecasting()) {
            return;
        }



       
          


                $('#bj').show();
                $('#createcasteadmin').hide();



            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                url: "verifystudent.aspx/savex",
                data: "{'datan':'" + $('#programname').val() + "'}",
                success: function (data) {
                    var result = jQuery.parseJSON(data.d);
                    var prc, sta;
                    for (var i = 0; i < result.length; i++) {
                        prc = result[i].regid;
                        sta = result[i].status;


                        //alert(sta);
                        ///  alert(prc);
                        if (sta == "success") {

                            window.location.replace(prc);
                        }

                       
                        if (sta == "error") {
                            alert("Record not found");
                            $('#bj').hide();
                            $('#createcasteadmin').show();
                        }
                        


                    }


                },
                error: function (rt) {
                    alert("Something went wrong");
                    $('#bj').hide();
                    $('#createcasteadmin').show();
                }

            });






           

    });

})



function validatecasting() {
    var g = true;

    if ($('#programname').val() == '') {
        g = false;
        alert("Please enter Registration Number");
    }






    return g;

}


