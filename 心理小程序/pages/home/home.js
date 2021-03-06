var util = require('../../utils/util.js')
var app = getApp();
var baseUrl = app.globalData.host;
Page({

  /**
   * 页面的初始数据
   */
  data: {
    mode: "scaleToFill",
    arr: [],
    indicatorDots: true,
    autoplay: true,
    interval: 2000,
    duration: 1000,
    currentTab: 0,
    userInfo: {},
    imgUrls: ["../../images/1.jpg", "../../images/2.jpg", "../../images/3.jpg", "../../images/4.jpg"]

  },
  navbarTap: function(e) {
    this.setData({
      currentTab: e.currentTarget.dataset.idx
    })
  },
  //点击搜索

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {

    var array = this.data.arr
    for (let i = 1; i < 3; i++) {
      array.push("../../images/" + i + ".jpg")
    }
    this.setData({
      nickname: options.nickname,
      arr: array
    })

    var that = this
    //以调用应用实例的方法获取全局数据
    app.getUserInfo(function(userInfo) {
      console.log(userInfo);
      //更新数据
      that.setData({
        userInfo: userInfo
      })
    })
    wx.request({
      url: baseUrl + 'load_high_test.action',
      data: {

      },

      header: {
        'Content-type': 'application/json'
      },
      success: function(res) {
        console.log(res.data)
       
        that.setData({
          high_test_jieguo: res.data,
          
        })

      },



    })
  },
  click_search: function() {
    wx.navigateTo({
      url: '/pages/search/search',
    });
  },
  click_LoadDoctor: function () {
    wx.navigateTo({
      url: '../LoadDoctor/LoadDoctor',
    });
  },
  click_ArticleAll:function(e){
    var that = this;
    var id = e.currentTarget.dataset.id;
    console.log(id)
    wx.navigateTo({
      url: '../LoadArticleAll/LoadArticleAll?article_id='+id,
    })
    
  },
  click_DoctorAll: function (e) {
    var that = this;
    var id = e.currentTarget.dataset.id;
    console.log(id)
    wx.navigateTo({
      url: '../LoadDoctorAll/LoadDoctorAll?doctor_id='+id,
    })
  },
  click_ceshi(e) {
    var that = this;
    var id = e.currentTarget.dataset.id;
    var title = e.currentTarget.dataset.name;
    wx.navigateTo({
      url: '../ceshi/ceshi?id=' + id + '&title=' + title,

    })
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {


  },

  /**
   * 生命周期函数--监听页面显示
   *
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

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {

  },


})