
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
bottom: 70,
textStyle:{
color:'#1ed7ff'
},
data: ["参与组织生活","凝聚力","战斗力",]
},
series: [{
name: '考核情况',
type: 'pie',
radius : ['30%', '40%'],
center:['30%','50%'],
data: [
{value:3.6,name:'参与组织生活' ,itemStyle:{color:'#2DC5C3'}},
{value:1.81,name:'凝聚力',itemStyle:{color:'#FFA60A'}}, 
{value:3.98,name:'战斗力',itemStyle:{color:'#006CFF'}},
]
}]
}; 
// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option); 


// 支部每日登录人数
var myChart = echarts.init(document.getElementById('fefetmoe'));
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











 
     
        //党(工)委数----------------------------------------------------------------
        
        //年龄
        var myChart = echarts.init(document.getElementById('dangweiChat'));
        var option = {
                tooltip: {
                    formatter: "{b}: {c} ({d}%)"
                },
                series: [
                    {
                        name:'年龄',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{per|{d}%} ',
                                rich: {
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                     per: {
                                         color: '#1ed7ff',
                                        //backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:9, name:'镇（街道）',itemStyle:{color:'#2DC5C3'}},
                            {value:13, name:'区直机关',itemStyle:{color:'#FFA60A'}}, 
                            {value:3, name:'卫生教育',itemStyle:{color:'#006CFF'}},
                            {value:1, name:'国有企业',itemStyle:{color:'#FF9F9F'}},
                            {value:3, name:'两新组织',itemStyle:{color:'#fff'}},

                        ]
                    }
                ]
            };
        
        myChart.setOption(option);
          //年龄
     

        //年龄
        var myChart = echarts.init(document.getElementById('nianl'));
        var option = {
                tooltip: {
                    formatter: "{b}: {c} ({d}%)"
                },
                series: [
                    {
                        name:'年龄',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{per|{d}%} ',
                                rich: {
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                     per: {
                                        color: '#1ed7ff',
                                        //backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:3498, name:'35岁以下',itemStyle:{color:'#2DC5C3'}},
                            {value:5259, name:'36至60岁',itemStyle:{color:'#FFA60A'}}, 
                            {value:5105, name:'61岁以上',itemStyle:{color:'#006CFF'}},

                        ]
                    }
                ]
            };
        
        myChart.setOption(option);
         //学历
        var myChart = echarts.init(document.getElementById('xuel'));
        var option = {
                tooltip: {
                    formatter: "{b}: {c} ({d}%)"
                },
                series: [
                    {
                        name:'学历',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{per|{d}%} ',
                                rich: {
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                     per: {
                                         color: '#1ed7ff',
                                        //backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:1807, name:'初中及以下' ,itemStyle:{color:'#2DC5C3'}},
                            {value:2244, name:'中专、高中、中技',itemStyle:{color:'#FFA60A'}}, 
                            {value:6281, name:'大专及以上',itemStyle:{color:'#006CFF'}},
                            {value:3530, name:'其他',itemStyle:{color:'#FF9F9F'}},
                        ]
                    }
                ]
            };

        myChart.setOption(option);
        //职业
        var myChart = echarts.init(document.getElementById('zhiy'));
        var option = {
                tooltip: {
                    formatter: "{b}: {c} ({d}%)"
                },
                series: [
                    {
                        name:'职业',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{per|{d}%} ',
                                rich: {
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                     per: {
                                         color: '#1ed7ff',
                                        //backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:4248, name:'公职人员',itemStyle:{color:'#2DC5C3'}},
                            {value:394, name:'农牧渔民',itemStyle:{color:'#FFA60A'}}, 
                            {value:2144, name:'离退休',itemStyle:{color:'#006CFF'}},
                            {value:357, name:'非公组织',itemStyle:{color:'#FF9F9F'}},
                            {value:6719, name:'其它职业',itemStyle:{color:'#fff'}},

                        ]
                    }
                ]
            };

        myChart.setOption(option);
        //性别
        var myChart = echarts.init(document.getElementById('xinb'));
        var option = {
                tooltip: {
                    formatter: "{b}: {c} ({d}%)"
                },
                series: [
                    {
                        name:'性别',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{per|{d}%} ',
                                rich: {
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                     per: {
                                         color: '#1ed7ff',
                                        //backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:9311, name:'男党员',itemStyle:{color:'#2DC5C3'}},
                            {value:4551, name:'女党员',itemStyle:{color:'#FFA60A'}}, 


                        ]
                    }
                ]
            };

        myChart.setOption(option);
        
        // 支部
        var myChart = echarts.init(document.getElementById('branchChart'));
        var option = {
                tooltip: {
                    formatter: "{b}: {c} ({d}%)"
                },
                series: [
                    {
                        name:'类型',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{per|{d}%} ',
                                rich: {
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                     per: {
                                         color: '#1ed7ff',
                                        //backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:997, name:'其他',itemStyle:{color:'#2DC5C3'}},
                            {value:14, name:'城市社区',itemStyle:{color:'#FFA60A'}}, 
                            {value:4, name:'建制村',itemStyle:{color:'#006CFF'}},
                        ]
                    }
                ]
            };

        myChart.setOption(option);
        
         // 民族
        var myChart = echarts.init(document.getElementById('minz'));
        var option = {
                tooltip: {
                    formatter: "{b}: {c} ({d}%)"
                },
                series: [
                    {
                        name:'民族',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{per|{d}%} ',
                                rich: {
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                     per: {
                                         color: '#1ed7ff',
                                        //backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:38, name:'少数民族',itemStyle:{color:'#2DC5C3'}},
                            {value:13824, name:'汉族',itemStyle:{color:'#FFA60A'}}, 


                        ]
                    }
                ]
            };

        myChart.setOption(option);
     

