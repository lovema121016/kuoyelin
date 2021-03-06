//app.js
App({
  onLaunch: function() {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)
  },
  getUserInfo: function(cb) {
    var that = this
    if (this.globalData.userInfo) {
      typeof cb == "function" && cb(this.globalData.userInfo)
    } else {
      //调用登录接口
      wx.login({
        success: function() {
          wx.getUserInfo({
            success: function(res) {
              that.globalData.userInfo = res.userInfo
              typeof cb == "function" && cb(that.globalData.userInfo)
            }
          })
        }
      })
    }
  },
  globalData: {
    userInfo: null,
    // host: 'http://localhost:8080/kuoyelin/'
    //  host: 'http://58.87.120.8/kuoyelin/'
    //  host:'http://192.168.43.65:8080/kuoyelin/'
    host: 'https://www.kuoyelindc.com/kuoyelin/'
    //host: 'http://39.96.56.188:8080/FenCi2.0/'
  }
})