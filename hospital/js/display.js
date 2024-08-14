var picture = document.querySelector("body");
var Isblue = false;
setInterval(function() {
    if (Isblue) {
        picture.style.backgroundImage = "url('images/background7.jpeg')";
        picture.style.backgroundSize = "cover";
    } else {
        picture.style.backgroundImage = "url('images/background8.jpeg')";
        picture.style.backgroundSize = "cover";
    }
    Isblue = !Isblue;
}, 10000);