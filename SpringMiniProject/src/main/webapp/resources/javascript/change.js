// $(document).ready(function dos() {
//     $('#main_menu > li > a').click(function () {
//         $(this).next($('.snd_menu sub_menu')).slideToggle('fast');
//     })
//
// })
// function blink() {
//     target.classList.toggle("active");
//
// }
//
// let target = document.querySelector("#dynamic");
//
//
// function randomString() {
//     let stringArr = ["대한민국 입시 부동의 1위", "Study and Changes Life", "2021년도 합격률 98%",
//         "학생 맞춤형 공부법", "최고의 강사 최고의 커리큘럼", "10년 연속 합격률 95% 달성"];
//     let selectString = stringArr[Math.floor(Math.random() * stringArr.length)];
//     let selectStringArr = selectString.split("");
//
//     return selectStringArr;
// }
//
// function resetTyping() {
//     target.textContent = "";
//
//     dynamic(randomString());
// }
// function dynamic(randomArr) {
//
//     if (randomArr.length > 0) {
//         // target.textContent += randomArr.shift();
//         setTimeout(function () {
//             dynamic(randomArr);
//         }, 80);
//     } else {
//         setTimeout(resetTyping, 3000);
//     }
//
// }
//
// // dynamic(randomString());
//
//
//
// setInterval(blink, 500);
//
//
// var dday = new Date("November 17, 2023, 0:00:00").getTime();
//
// setInterval(function () {
//
//     var today = new Date().getTime();
//     var gap = dday - today;
//     var day = Math.ceil(gap / (1000 * 60 * 60 * 24));
//     var hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
//     var min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));
//     var sec = Math.ceil((gap % (1000 * 60)) / 1000);
//     document.getElementById("count").innerHTML = "<b>2022년도 수능 D-DAY&nbsp;</b>  " + day + "일 " + hour + "시간 " + min + "분 " + sec + "초";
// }, 1000);