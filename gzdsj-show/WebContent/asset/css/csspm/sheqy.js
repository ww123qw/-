

        var myChart = echarts.init(document.getElementById('digetu'));
        var option = {
                title: {
                    text: '',

                    top:10,
                    left:25,

                    textStyle:{
                        fontWeight:'100',
                        fontSize:18,
                        color:'#ff5858'
                    }
                },
                tooltip: {
                    trigger: 'axis',
                    formatter: '得分:{c}<br/> 分排：12',
                     axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
                        }

                },
                grid:{
                     x:40,
                     y:50,
                     width:540,
                     height:200
                },
                xAxis: {
                    splitLine:{
                            show:true,
                            lineStyle:{
                                color: ['#343057', '#343057'],
                                width: 1
                            }
                        },

                    axisLine: {
                        //onZero: false,
                        lineStyle: {
                            color: '#fff'
                        }
                    },
                    axisTick: {
                        show: false
                        },
                    data: [0,1,2,3,4,5,6,7,8,9,10,11,12]
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
                            color: '#fff'
                        }
                    },
                    axisTick: {
                        show: false
                        },

                    data: [0,10,20,30,40,50,60,70,80,90,100],
                    type: 'value'

                },
                series: [{
                    data: [10, 30, 20, 40, 43, 52, 62, 70, 43,88, 40, 43, 52],
                    type: 'line',
                    itemStyle:{
                        mormal:{
                            lineStyle:{
                                color:'#6f8cff'
                            }
                        }
                    },
                    smooth: true
                }]
            };

        myChart.setOption(option);





     
        var myChart = echarts.init(document.getElementById('dsdgetu'));
       var option = {
                title: {
                    text: '',

                    top:10,
                    left:25,

                    textStyle:{
                        fontWeight:'100',
                        fontSize:18,
                        color:'#ff5858'
                    }
                },
                tooltip: {
                    trigger: 'axis'


                },
                grid:{
                     x:40,
                     y:50,
                      width:540,
                     height:200
                },
                xAxis: {
                    splitLine:{
                            show:true,
                            lineStyle:{
                                color: ['#343057', '#343057'],
                                width: 1
                            }
                        },

                    axisLine: {
                        //onZero: false,
                        lineStyle: {
                            color: '#fff'
                        }
                    },
                    axisTick: {
                        show: false
                        },
                    data: [0,1,2,3,4,5,6,7,8,9,10,11,12]
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
                            color: '#fff'
                        }
                    },
                    axisTick: {
                        show: false
                        },

                    data: [0,10,20,30,40,50,60,70,80,90,100],
                    type: 'value'

                },
                series: [{
                    name:'数据1',
                    data: [10, 30, 20, 40, 43, 52, 62, 70, 43,88, 40, 43, 52],
                    type: 'line',
                    itemStyle:{
                        mormal:{
                            lineStyle:{
                                color:'#6f8cff'
                            }
                        }
                    },
                    smooth: true
                },{
                    name:'数据2',
                    data: [10, 20, 30, 40, 50, 60, 62, 75, 43,88, 45, 43, 52],
                    type: 'line',
                    itemStyle:{
                        mormal:{
                            lineStyle:{
                                color:'#6f8cff'
                            }
                        }
                    }
                    //smooth: true
                },
                {
                    name:'数据3',
                    data: [5, 20, 18, 32, 80, 60, 92, 25, 43,88, 45, 42, 12],
                    type: 'line',
                    itemStyle:{
                        mormal:{
                            lineStyle:{
                                color:'#6f8cff'
                            }
                        }
                    }
                    //smooth: true
                }]
            };

        myChart.setOption(option);


var myChart = echarts.init(document.getElementById('fetmoe'));
var option = {
title: {
text: '',
top:0,
left:195,
textStyle:{
fontWeight:'00',
fontSize:20,
color:'#1ed7ff'
}
},
legend: {
orient: 'vertical',
right: 120,
bottom: -550,
textStyle:{
color:'#1ed7ff'
},
data: ["战斗力",]
},
series: [{
name: '考核情况',
type: 'pie',
radius : ['45%', '60%'],
center:['50%','40%'],
data: [
{value:28,name:'' ,itemStyle:{color:'#2DC5C3'}},
{value:22,name:'',itemStyle:{color:'#081F62'}}, 

]
}]
}; 
// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option); 



var myChart = echarts.init(document.getElementById('fetmer'));
var option = {
title: {
text: '',
top:0,
left:195,
textStyle:{
fontWeight:'00',
fontSize:20,
color:'#1ed7ff'
}
},
legend: {
orient: 'vertical',
right: 120,
bottom: -550,
textStyle:{
color:'#1ed7ff'
},
data: ["战斗力",]
},
series: [{
name: '考核情况',
type: 'pie',
radius : ['45%', '60%'],
center:['50%','40%'],
data: [
{value:32,name:'' ,itemStyle:{color:'#FFD171'}},
{value:18,name:'',itemStyle:{color:'#081F62'}}, 

]
}]
}; 
// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option); 



var myChart = echarts.init(document.getElementById('fetmsa'));
var option = {
title: {
text: '',
top:0,
left:195,
textStyle:{
fontWeight:'00',
fontSize:20,
color:'#1ed7ff'
}
},
legend: {
orient: 'vertical',
right: 120,
bottom: -550,
textStyle:{
color:'#1ed7ff'
},
data: ["战斗力",]
},
series: [{
name: '考核情况',
type: 'pie',
radius : ['45%', '60%'],
center:['50%','40%'],
data: [
{value:45,name:'' ,itemStyle:{color:'#FF0078'}},
{value:5,name:'',itemStyle:{color:'#081F62'}}, 

]
}]
}; 
// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option); 

