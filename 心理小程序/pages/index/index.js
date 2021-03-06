//index.js
//获取应用实例
const app = getApp()

var baseUrl = app.globalData.host;
Page({
  data: {
    motto: '立即体验',
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo'),
    value: '',
    nickname: ''
  },
  //事件处理函数
  bindViewTap: function() {
    var that = this;
    wx.switchTab({
      url: '/pages/home/home'
    })
    wx.request({
      url: baseUrl + 'login.action',
      data: {
        nickname: that.data.userInfo,
        username: that.data.userInfo.nickName
      },

      header: {
        'Content-type': 'application/json'
      },

      success: function(res) {
        console.log("成功")
      },

    })
    console.log(that.data.nickname);
  },
  onLoad: function() {
    if (app.globalData.userInfo) {
      this.setData({
        userInfo: app.globalData.userInfo,
       
        hasUserInfo: true
      })
    } else if (this.data.canIUse) {
      // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
      // 所以此处加入 callback 以防止这种情况
      app.userInfoReadyCallback = res => {
        this.setData({
          userInfo: res.userInfo,
        
          hasUserInfo: true
        })
      }
    } else {
      // 在没有 open-type=getUserInfo 版本的兼容处理
      wx.getUserInfo({
        success: res => {
          app.globalData.userInfo = res.userInfo
          this.setData({
            userInfo: res.userInfo,
          
            hasUserInfo: true
          })
        }
      })
    }

  },
  getUserInfo: function(e) {
    console.log(e)
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
     
      hasUserInfo: true
    })
  },
  onLaunch: function() {
    var that = this;
    //调用系统API获取设备的信息
    wx.getSystemInfo({
      success: function(res) {
        var kScreenW = res.windowWidth / 375
        var kScreenH = res.windowHeight / 603
        wx.setStorageSync('kScreenW', kScreenW)
        wx.setStorageSync('kScreenH', kScreenH)
      }

    })
    that.setStorageSync({
      value: wx.getStorageSync('user_openid')
    })

    console.log(that.data.value)
  }

})