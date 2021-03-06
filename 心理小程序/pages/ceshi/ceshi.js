var util = require('../../utils/util.js')
var app = getApp();
var baseUrl = app.globalData.host;


Page({

  /**
   * 页面的初始数据
   */
  data: {
    ind: 0,
    num: 1,
    timu_List: [],
    content_List: [],
    sum_grade: 0,
    test_id: 0,
    title: ''
  },
  radioChange(e) {

    var that = this;
    var sum_gra = e.detail.value;
    var postlength = e.currentTarget.dataset.postlength;

    console.log(sum_gra);
    if (that.data.num <= postlength) {
      that.setData({
        num: that.data.num + 1,
        sum_grade: parseInt(that.data.sum_grade) + parseInt(sum_gra)
      })
      console.log(sum_gra)
      console.log(that.data.sum_grade)
    }
    if (that.data.num > postlength) {
      var that = this
      that.setData({
        num: that.data.num - 1
      })
      wx.showModal({
        title: '提示',
        content: '是否提交测试结果',
        showCancel: true, //是否显示取消按钮
        cancelText: "否", //默认是“取消”
        cancelColor: 'skyblue', //取消文字的颜色
        confirmText: "是", //默认是“确定”
        confirmColor: 'skyblue', //确定文字的颜色
        success: function(res) {
          if (res.cancel) {
            //点击取消,默认隐藏弹框
            that.setData({
              judge: 0,
            })

          } else {
            //点击确定

            that.setData({
              judge: 1,
            })
            if (that.data.judge == 1) {
              wx.redirectTo({
                url: '../result/result?sum_grade=' + that.data.sum_grade + '&id=' + that.data.test_id,

              })
            }
          }
        },
        fail: function(res) {}, //接口调用失败的回调函数
        complete: function(res) {}, //接口调用结束的回调函数（调用成功、失败都会执行）
      })




    }

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    var that = this;

    console.log('hahahahahh')
    that.setData({
      title: options.title,
      test_id: options.id
    })
    console.log(that.data.test_id)
    console.log(that.data.title)
    wx.request({
      url: baseUrl + 'loadTest_paper.action',
      data: {
        id: options.id
      },

      header: {
        'Content-type': 'application/json'
      },
      success: function(res) {
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