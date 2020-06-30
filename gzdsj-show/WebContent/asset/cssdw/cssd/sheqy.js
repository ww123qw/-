/*// 支部每日登录人数
var myChart = echarts.init(document.getElementById('gttmoe'));
var option = {
title: {
text: '',

top:0,
left:20,

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
x:45,
y:20,
width:350,
height:120,



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

 lineStyle:{
color:'#1ed7ff'
},

areaStyle: {
  color: {
    
    type: 'linear',
    x: 0,
    y: 0,
    x2: 0,
    y2: 1,
    colorStops: [{
     offset: 0,color: 'rgba(20,200,212,0.5)'
    }, {    
        offset: 1, color: 'rgba(20,200,212,0)'
    }],
             
  }    
},
   itemStyle:{
        color:'#1ed7ff',
    },
type: 'line',



smooth: true
}]
};

myChart.setOption(option);



// 支部考核成绩总体趋势
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
x:40,
y:40,
width:350,
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
 lineStyle:{
color:'#1ed7ff'
},

areaStyle: {
  color: {
    
    type: 'linear',
    x: 0,
    y: 0,
    x2: 0,
    y2: 1,
    colorStops: [{
      offset: 0,color: 'rgba(20,200,212,0.5)'
    }, {    
        offset: 1, color: 'rgba(20,200,212,0)'
    }],
             
  }    
},
   itemStyle:{
        color:'#1ed7ff',
    },
type: 'line',



smooth: true
}]
};

myChart.setOption(option);



    var myChart = echarts.init(document.getElementById('mghe'));
// Generate data
var category = [];
var dottedBase = +new Date();
var lineData = [];
var barData = [];




// option
option = {
    backgroundColor: '#081e62',
    // tooltip: {
    //     trigger: 'axis',
    //     axisPointer: {
    //         type: 'shadow'
    //     }
    // },
    legend: {
        data: ['line', 'bar'],
        textStyle: {
            color: '#1ed7ff'
        }
    },
    
    xAxis: {
       data: ['正常支部数 ', '受警告支部数', '非正常支部数', '非正常支部数'],
       splitLine: {show: false},
              
          axisLine: {
            lineStyle: {
                color: '#1ed7ff'
            }
        }
           
            
        
    },
    
      textStyle:{
                  color: '#1ed7ff'
                },
    yAxis: {
        splitLine: {show: false},
        axisLine: {
            lineStyle: {
                color: '#1ed7ff'
            }
        }
    },
    
    series: [{
        name: 'r',
        type: 'bar',
        barWidth: 30,
           label: {
                normal: {
                    show: true,
                    position: 'top',
                    color: '#1ed7ff'
                }
            },

        itemStyle: {
            normal: {
                barBorderRadius: 15,
                color: new echarts.graphic.LinearGradient(
                    0, 0, 0, 1,
                    [
                          {offset: 0, color: 'rgba(20,200,212,0.5)'},
                        {offset: 0.2, color: 'rgba(20,200,212,0.2)'},
                        {offset: 1, color: 'rgba(20,200,212,0)'}
                    ]
                )
            }
        },
         z: -12,
       data:[10, 52, 334, 390]
    }]
};
myChart.setOption(option);


*/