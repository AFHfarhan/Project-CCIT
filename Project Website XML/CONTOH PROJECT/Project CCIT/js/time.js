<!--
function showTime() {
    var a_p = "";
	var ppem = "Jam";
	var pemberitahuan = "Sekarang";
    var today = new Date();
    var curr_hour = today.getHours();
    var curr_minute = today.getMinutes();
if (curr_hour < 12) {
    a_p = "AM";
} else {
    a_p = "PM";
}
    if (curr_hour == 0) {
        curr_hour = 12;
    }
    if (curr_hour > 12) {
        curr_hour = curr_hour - 12;
    }
    curr_hour = checkTime(curr_hour);
    curr_minute = checkTime(curr_minute);
 document.getElementById('digiclock').innerHTML=curr_hour + ":" + curr_minute + " " + a_p + " " + ppem + " " + pemberitahuan;
    }

function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}
setInterval(showTime, 500);
//-->