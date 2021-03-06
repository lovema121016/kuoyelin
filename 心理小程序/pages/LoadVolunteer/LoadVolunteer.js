var util = require('../../utils/util.js')
var app = getApp();
var baseUrl = app.globalData.host;
Page({

  /**
   * 页面的初始数据
   */
  data: {
    time:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that=this;
    var Time = util.formatDate(new Date());
    this.setData({
      time:Time,
    })
  console.log(that.data.time)
    wx.request({
      url: baseUrl + 'load_Volunteer.action',
      data: {
        work_time:that.data.time
      },

      header: {
        'Content-type': 'application/json'
      },
      success: function (res) {
        console.log(res.data)

        that.setData({
          volunteer_all: res.data,

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