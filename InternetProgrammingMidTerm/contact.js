//JavaScript for contact
function store(){
        var inputa= document.getElementById("Email").value;
        localStorage.setItem("Email", inputa);

        var inputb= document.getElementById("Name");
        localStorage.setItem("Name", inputb.value);

        var inputc= document.getElementById("Surname");
        localStorage.setItem("Surname", inputc.value);

        var inputd= document.getElementById("studentID");
        localStorage.setItem("studentID", inputd.value);

        var inpute= document.getElementById("Note");
        localStorage.setItem("Note", inpute.value);


        var studentInfo = { "Student" : [ 
          { "Name"  : inputb.value, "Surname" : inputc.value , "Email": inputa, "studentID" : inputd.value, "Note" : inpute.value},]    
       }
       console.log(studentInfo)
      }


function validateForm() {
        var x = document.forms["myForm"]["Name"].value;
        if (x == "") {
          alert("Name must be filled out");
          return false;
        }
        var y = document.forms["myForm"]["Surname"].value;
        if (y == "") {
          alert("Surname must be filled out");
          return false;
        }
        var z = document.forms["myForm"]["Email"].value;
        if (z == "") {
          alert("Email must be filled out");
          return false;
        }
        var f = document.forms["myForm"]["studentID"].value;
        if (f == "") {
          alert("Student ID must be filled out");
          return false;
        }
      }