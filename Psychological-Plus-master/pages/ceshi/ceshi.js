var util = require('../../utils/util.js')
var app = getApp();
var baseUrl = app.globalData.host;


Page({

  /**
   * 页面的初始数据
   */
  data: {
  ind:0,
  num:1,
  timu_List:[],
  content_List:[],
  sum_grade:0,
  test_id:0,
  title:''
  },
radioChange(e){

  var that=this;
  var sum_gra=e.detail.value;
  var postlength=e.currentTarget.dataset.postlength;

  console.log(sum_gra);
  if(that.data.num<=postlength){
  that.setData({  
     num: that.data.num + 1,
     sum_grade:parseInt(that.data.sum_grade)+parseInt(sum_gra)
  })
    console.log(sum_gra)
 console.log(that.data.sum_grade)
  }
  if(that.data.num>postlength) {
    wx.redirectTo({
      url: '../result/result?sum_grade='+that.data.sum_grade+'&id='+that.data.test_id,

    })
  
  }
  
},

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
   
    console.log('hahahahahh')
    that.setData({
      title:options.title,
      test_id:options.id
    })
    console.log(that.data.test_id)
    console.log(that.data.title)
    wx.request({
      url: baseUrl + 'loadTest_paper.action',
      data:{
        id:options.id
      },
     
      header: { 'Content-type': 'application/json' },
      success: function (res) {
        console.log(res.data)
        that.setData({
          result: res.data,
        
        })

      },

      
    
    })
    


  },


  
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
    
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
    
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    
  }
})