$(document).ready(function () {

    var cy = 0;

    $('#paymentc').click(function () {


        if (!validate()) {
            return;
        }



      

            var result = confirm("Edit not allowed after submit do you want continue?");
            if (result) {

                var gt;
                $('#bj').show();
                $('#paymentc').hide();

                if ($('#spnn').text() == 'yes') {
                    gt = $('#hmarks').val();
                }
                else {
                    gt = '0';
                }
                

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    url: "apply.aspx/paymentapi",
                    data: "{'hons':'" + $('#lastqulafication').val() + "','hmarkst':'" + gt + "','clg':'" + $('#clggg').val() + "','totalhm':'" + $('#honstotalmarks').val() + "', 'cs':'" + $('#compsularysubject').val() + "', 'nrs':'" + $('#selectnrb').val() + "', 'subone':'" + $('#lastqulaficationt').val() + "', 'subtwo':'" + $('#lastqulaficationtt').val() + "'}",
                    success: function (response) {




                        if (response.d == "error") {

                            alert("Something went wrong");

                            $('#addprogram').show();
                            $('#bj').hide();



                        }


                        if (response.d == "success") {
                            $('#bj').hide();
                            window.location.replace("statusrecord");

                           





                        }





                    },

                    error: function (ty) {
                        alert(ty.d);
                        $('#bj').hide();
                        $('#addprogram').show();
                    }








                });






            }
        

    });
   





    function validate() {
        var g = true;




        if ($('#clggg').val() == 'df') {
            g = false;
            alert("Please select College")
        }



        if ($('#lastqulafication').val() == 'df') {
            g = false;
            alert("Please select Hons. Subject")
        }

        


        if ($('#spnn').text() == 'yes') {

           
            if ($('#hmarks').val() == '') {
                g = false;
                alert("Please enter marks");
            }


            if ($('#honstotalmarks').val() == 'df') {
                g = false;
                alert("Please select total marks");
            }









        }
      



        if ($('#compsularysubject').val() == 'df') {
            g = false;
            alert("Please select COMPULSORY SUBJECTS");
        }




        if ($('#selectnrb').val() == 'df') {
            g = false;
            alert("Please select NRB Subject");
        }



        if ($('#lastqulaficationt').val() == 'dfrt') {
            g = false;
            alert("Please select Subsidiary Subjects 1");
        }


        if ($('#lastqulaficationtt').val() == 'dfr') {
            g = false;
            alert("Please select Subsidiary Subjects 2");
        }

        return g;

    }










})








