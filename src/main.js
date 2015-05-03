
window.onload = function(){
    console.log('starting');

    var div = document.createElement('DIV');
    document.body.appendChild(div);
    //console.log(document.body);
    var App = require('App');
    new App(div);
}
