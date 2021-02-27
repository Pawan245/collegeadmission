

$(document).ready(function () {


    $('#studentvr').click(function () {


        var person = prompt("Please enter message", "");
        if (person != null) {




            $('#bj').show();
            $('#studentvr').hide();



            $.ajax({
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                url: "studentverifydtl.aspx/savex",
                data: "{'datan':'" + person + "'}",
                success: function (data) {
                    
                        if (data.d == "success") {

                            alert("Successfull");
                        }


                        if (data.d == "error") {
                            alert("Record not found");
                            $('#bj').hide();
                            $('#studentvr').show();
                        }



                    


                },
                error: function (rt) {
                    alert("Something went wrong");
                    $('#bj').hide();
                    $('#studentvr').show();
                }

            });








        }

    });




})

