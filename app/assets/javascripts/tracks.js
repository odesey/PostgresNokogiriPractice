// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
    $('#play-button').click(function(){
        soundManager.play('mySound');
        $(this).toggle();
        $('#pause-button').toggle();
    });
    $('#pause-button').click(function(){
        soundManager.pause('mySound');
        $(this).toggle();
        $('#play-button').toggle();
    });
    $('#stop-button').click(function(){
        soundManager.stop('mySound');
    });
});