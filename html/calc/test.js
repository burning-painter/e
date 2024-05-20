function passValue()
{
    var element = document.getElementById("sc");
    var final = eval(element.value);
    element.value=final;
}


function scUpdate(value1) {
    var element = document.getElementById("sc");
    element.value += value1;
}

function allclear()
{
    var element = document.getElementById("sc");
    element.value="";
}

function cls() {
    var element = document.getElementById("sc");
    var length = element.value.length;
    element.value = element.value.substring(0, length - 1);
}
