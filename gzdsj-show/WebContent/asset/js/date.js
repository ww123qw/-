
var isnMonths = new initArray("1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月")
var isnDays = new initArray("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日");
today = new Date();
function initArray() {
	for (i = 0; i < initArray.arguments.length; i++)
	this[i] = initArray.arguments[i];
}
function getFullYear(d) {
	yr = d.getYear();
	if (yr < 1000) yr += 1900;
	return yr;
}
var StrTemp = getFullYear(today) + "年" + "" + isnMonths[today.getMonth()];
StrTemp = StrTemp + "" + today.getDate() + "日&nbsp;" + isnDays[today.getDay()];
document.write(StrTemp);

