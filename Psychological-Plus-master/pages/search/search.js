var util = require('../../utils/util.js')
var app = getApp();
var baseUrl = app.globalData.host;

Page({

  /**
   * 页面的初始数据
   */
  data: {
    SearchInput:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
    app.getUserInfo(function (userInfo) {
      console.log(userInfo);
      //更新数据
      that.setData({
        userInfo: userInfo
      })
    })
  
  },
  SearchInput: function (e) {
    var that = this
    that.setData({
      SearchInput:e.detail.value
    })
    console.log("strFind=" + that.data.SearchInput);
    if (that.data.SearchInput == null || that.data.SearchInput == "") {
      wx.showToast({
        title: '输入为空',
        icon: 'loading',
      })
    }
    wx.request({
      url: baseUrl + 'Search_test.action',
      data: {
        title: that.data.SearchInput
      },

      header: { 'Content-type': 'application/json' },
      success: function (res) {
        console.log(res.data)
        that.setData({
          search_result: res.data,

        })

      },

    })
   // if (strFind != "") {
    //  WxSearch.updateHotMindKeys(that, strFind); //更新热门搜索和搜索记忆提示
   //   var nPos;
   //   var resultPost = [];
    //  for (var i in smoodList) {
    //    var sTxt = smoodList[i].acttypeName || ''; //活动的标题
    //    nPos = sTxt.indexOf(strFind);
     //   if (nPos >= 0) {//如果输入的关键字在该活动标题中出现过,则匹配该活动
     //     resultPost.push(smoodList[i]); //将该活动加入到搜索到的活动列表中
    //    }
   //   }
    //  that.setData({
    //    moodList: resultPost
    //  })
    //}
  },
  //点击某条查询结果可进入测试界面
  click_ceshi(e) {
    var that = this;
    var id = e.currentTarget.dataset.id;
    var title = e.currentTarget.dataset.name;
    wx.redirectTo({
      url: '../ceshi/ceshi?id=' + id + '&title=' + title,

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