var picture = document.querySelector("body");
var Isblue = false;
setInterval(function() {
    if (Isblue) {
        picture.style.backgroundImage = "url('/img/background/background7.jpeg')";
        picture.style.backgroundSize = "cover";
    } else {
        picture.style.backgroundImage = "url('/img/background/background8.jpeg')";
        picture.style.backgroundSize = "cover";
    }
    Isblue = !Isblue;
}, 10000);