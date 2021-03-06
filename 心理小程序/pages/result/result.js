var util = require('../../utils/util.js')
var app = getApp();
var baseUrl = app.globalData.host;
Page({

  /**
   * 页面的初始数据
   */
  data: {
    id: 0,
    sum_grade: 0,
    jieguo: '',
    num: 1,
    nickname: '',
    userInfo: '',
    content: '',
    hidden: true,
    postjieguo: ''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {

    var that = this;
    app.getUserInfo(function(userInfo) {
      console.log(userInfo);
      //更新数据
      that.setData({
        userInfo: userInfo
      })
    })
    console.log('hahahahahh')
    that.setData({
      sum_grade: options.sum_grade,
      nickname: that.data.userInfo
    })

    console.log(that.data.nickname)
    wx.request({
      url: baseUrl + 'load_Grade.action',
      data: {
        id: options.id,
        sum_grade: options.sum_grade,
        nickname: that.data.nickname
      },

      header: {
        'Content-type': 'application/json'
      },
      success: function(res) {
        console.log(res.data)
        that.setData({
          panduan: res.data,

        })

      },

    })
    console.log(that.data.sum_grade)

  },



  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {

  },


  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  }
})