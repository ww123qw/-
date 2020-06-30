/*// 支部每日登录人数
var myChart = echarts.init(document.getElementById('gttmoe'));
var option = {
title: {
text: '',

top:0,
left:16,

textStyle:{
fontWeight:'100',
fontSize:18,
color:'#1ed7ff'
}
},
tooltip: {
trigger: 'axis',
formatter: '得分:{c}',
axisPointer : {            // 坐标轴指示器，坐标轴触发有效
type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
}

},
grid:{
x:34,
y:20,
width:360,
height:110,



},
xAxis: {
splitLine:{
show:true,
lineStyle:{
color: ['#25386E', '#25386E'],
width: 1
}
},

axisLine: {
//onZero: false,
lineStyle: {
color: '#1ed7ff'
}
},
axisTick: {
show: false
},
data: [1,2,3,4,5,6,7,8,9,10,11,12]
},
yAxis: {
splitLine:{
show:true,
lineStyle:{
color: ['#343057', '#343057'],
width: 1,
type: 'dashed'
}
},

axisLine: {
//onZero: false,
lineStyle: {
color: '#1ed7ff'
}
},
axisTick: {
show: false
},

data: [ 00,10,20,30,40,50],
type: 'value'

},
series: [{

data:[

79.709,

60.460,

76.759,

78.851,

80.716,

19.018,
19.018,
19.018,
19.018,
19.018,
80.018,
20.018,
],
type: 'line',
itemStyle:{
mormal:{
lineStyle:{
color:'#1ed7ff'
}
}
},
smooth: true
}]
};

myChart.setOption(option);

*/

/*// 支部考核成绩总体趋势
var myChart = echarts.init(document.getElementById('bgtmoe'));
var option = {
title: {
text: '',

top:0,
left:16,

textStyle:{
fontWeight:'100',
fontSize:18,
color:'#1ed7ff'
}
},
tooltip: {
trigger: 'axis',
formatter: '得分:{c}',
axisPointer : {            // 坐标轴指示器，坐标轴触发有效
type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
}

},
grid:{
x:34,
y:20,
width:360,
height:125,



},
xAxis: {
splitLine:{
show:true,
lineStyle:{
color: ['#25386E', '#25386E'],
width: 1
}
},

axisLine: {
//onZero: false,
lineStyle: {
color: '#1ed7ff'
}
},
axisTick: {
show: false
},
data: [1,2,3,4,5,6,7,8,9,10,11,12]
},
yAxis: {
splitLine:{
show:true,
lineStyle:{
color: ['#343057', '#343057'],
width: 1,
type: 'dashed'
}
},

axisLine: {
//onZero: false,
lineStyle: {
color: '#1ed7ff'
}
},
axisTick: {
show: false
},

data: [ 00,10,20,30,40,50],
type: 'value'

},
series: [{

data:[

79.709,

60.460,

76.759,

78.851,

80.716,

19.018,
19.018,
19.018,
19.018,
19.018,
80.018,
20.018,
],
type: 'line',
itemStyle:{
mormal:{
lineStyle:{
color:'#1ed7ff'
}
}
},
smooth: true
}]
};

myChart.setOption(option);



*/
// 支部考核排名

var myChart = echarts.init(document.getElementById('fetmoe'));
var option = {
title: {
text: '',
top:10,
left:25,
textStyle:{
fontWeight:'00',
fontSize:20,
color:'#ff5858'
}
},
legend: {
orient: 'vertical',
right: 20,
bottom: 50,
textStyle:{
color:'#fff'
},
data: ["参与组织生活","凝聚力","战斗力",]
},
series: [{
name: '考核情况',
type: 'pie',
radius : ['30%', '40%'],
center:['30%','50%'],
data: [
{value:3.6,name:'参与组织生活'},
{value:1.81,name:'凝聚力'},
{value:3.98,name:'战斗力'},
]
}]
}; 
// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option); 
