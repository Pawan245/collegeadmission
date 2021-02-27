$(document).ready(function () {

    var cy = 0;

    $('#paymentc').click(function () {


       



        var result = confirm("Do you want continue?");
        if (result) {

            var gt;
            $('#bj').show();
            $('#paymentc').hide();



            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                url: "statusrecord.aspx/paymentforreg",
                data: "{'hons':'45'}",
                success: function (response) {

                   
                        $('#bj').hide();
                    window.location.replace(response.d);

                    
                    





                },

                error: function (ty) {
                    alert(ty.d);
                    $('#bj').hide();
                    $('#addprogram').show();
                }








            });






        }


    });

    
   
   


    $('#paymentforadmission').click(function () {






        var result = confirm("Do you want continue?");
        if (result) {

            var gt;
            $('#bj').show();
            $('#paymentc').hide();



            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                url: "statusrecord.aspx/paymentforregaq",
                data: "{'hons':'45'}",
                success: function (response) {


                    $('#bj').hide();
                    window.location.replace(response.d);








                },

                error: function (ty) {
                    alert(ty.d);
                    $('#bj').hide();
                    $('#addprogram').show();
                }








            });






        }


    });



    $('#paymentcb').click(function () {






        var result = confirm("Do you want continue?");
        if (result) {

            var gt;
            $('#bj').show();
            $('#paymentc').hide();



            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                url: "statusrecord.aspx/paymentforregaqprint",
                data: "{'hons':'45'}",
                success: function (response) {


                    $('#bj').hide();
                    window.location.replace(response.d);








                },

                error: function (ty) {
                    alert(ty.d);
                    $('#bj').hide();
                    $('#addprogram').show();
                }








            });






        }


    });


})








