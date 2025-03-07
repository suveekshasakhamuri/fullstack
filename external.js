function addition()
        {
           let a=parseInt(document.getElementById("t1").value);
           let b=parseInt(document.getElementById("t2").value);
           let c=a+b;
           //alert("Addition is "+c);
           //document.write("Addition is "+c);
           document.getElementById("p1").innerHTML="Addition is "+c;
        }