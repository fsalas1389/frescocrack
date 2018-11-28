$(document).ready(function() {
    $( "#btnSubmit" ).click(function() {
        var preguntas = $('#txtPreguntas').val();
        preguntas = JSON.parse(preguntas);
        var examen = $('#txtExamen').val();
        examen =  JSON.parse(examen);
        for (x= 0; x< examen.sections[0].questions.length; x++){
            examen.sections[0].questions[x].answer_ids[0] = 0;
        }

        var counter = 0;
        for (y= 0; y< examen.sections[0].questions.length; y++){
            //var question = resolver.assessment.sections[0].questions[y];
            var question = preguntas.assessment.sections[0].questions[y];
            for (i = 0; i < question.answers.length; i++){
                var answer = question.answers[i];
                examen.sections[0].questions[y].answer_ids[0] = answer.id;

                var response = getTest(examen);
                response = JSON.parse(response.responseText);
               if(response.assessment.total_correct_answers == y+1){
                    break;
               }
            }
        }

        alert("Finish");
    });

});

//function getJson(){
//    var id = $('#txtIdTest').val();
//    var autorizacion = $('#txtAutorizacion').val();
//    return $.ajax({
//      url: 'https://play-api.fresco.me/api/v1/assessments/get_quiz_details.json?id=' + id,
//      headers: {
//        'X-Api-Key': autorizacion,
//      },
//      success: function(){},
//      dataType: 'application/json',
//      async: false
//    });
//}
function getTest(data){
    var autorizacion = $('#txtAutorizacion').val();
    return $.ajax({
      url: 'https://play-api.fresco.me/api/v1/assessments/post_result.json',
      data: { data: JSON.stringify(data) },
      type: "POST",
      headers: {
        'X-Api-Key': autorizacion,
      },
      success: function(){},
      dataType: 'application/json',
      async: false
    });
}