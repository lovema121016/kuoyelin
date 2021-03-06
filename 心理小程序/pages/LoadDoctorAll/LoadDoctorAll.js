var util = require('../../utils/util.js')
var app = getApp();
var baseUrl = app.globalData.host;
Page({

  /**
   * 页面的初始数据
   */
  data: {
    userInfo: {},
    nickname:'',
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    var that = this
    app.getUserInfo(function(userInfo) {
      console.log(userInfo);
      //更新数据
      that.setData({
        userInfo: userInfo
      })
    })
    that.setData({

      doctor_id: options.id
    })
    wx.request({
      url: baseUrl + 'Load_doctorAll_information.action',
      data: {
        id: options.doctor_id
      },

      header: {
        'Content-type': 'application/json'
      },
      success: function(res) {
        console.log(res.data)

        that.setData({
          doctor_all: res.data,

        })

      },



    })
  },
  click_yuyue: function(e) {
    var that = this;
    var id = e.currentTarget.dataset.id;
    console.log(id)
    wx.request({
      url: baseUrl + 'Insert_Yuyue.action',
      data: {
        id: e.currentTarget.dataset.id,
        nickname: that.data.userInfo
      },

      header: {
        'Content-type': 'application/json'
      },
      success: function(res) {
        wx.showToast({
          title: '预约成功',
          icon: 'succes',
          duration: 1000,
          mask: true
        })

      },



    })
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