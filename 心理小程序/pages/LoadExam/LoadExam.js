var app = getApp();
var baseUrl = app.globalData.host;
Page({
  data: {
     ceshi:10,
  },
  // 滚动切换标签样式
  switchTab: function(e) {
    this.setData({
      currentTab: e.detail.current
    });
    this.checkCor();
  },
  // 点击标题切换当前页时改变样式
  swichNav: function(e) {
    var cur = e.target.dataset.current;
    if (this.data.currentTaB == cur) {
      return false;
    } else {
      this.setData({
        currentTab: cur
      })
    }
  },
  //判断当前滚动超过一屏时，设置tab标题滚动条。
  checkCor: function() {
    if (this.data.currentTab > 4) {
      this.setData({
        scrollLeft: 300
      })
    } else {
      this.setData({
        scrollLeft: 0
      })
    }
  },
  /**ceshiChuanzhi: function(options) {
    var that=this;
    wx.request({
      url: baseUrl + 'load_doctor.action',
      data: {
        ceshi: that.data.ceshi
        },

      header: {
        'Content-type': 'application/json'
      },
      success: function (res) {
        console.log(res.data)
        that.setData({
          result: res.data,

        })

      },



    })

  },**/
  onLoad: function() {
    var that = this;
    //  高度自适应
    wx.getSystemInfo({
      success: function(res) {
        var clientHeight = res.windowHeight,
          clientWidth = res.windowWidth,
          rpxR = 750 / clientWidth;
        var calc = clientHeight * rpxR - 180;
        console.log(calc)
        that.setData({
          winHeight: calc
        });
      }
    });
    wx.request({
      url: baseUrl + 'loadTest.action',
      header: {
        'Content-type': 'application/json'
      },
      success: function(res) {
        console.log(res.data)
        that.setData({
          type: res.data,
        })
      }
    })
  },
})