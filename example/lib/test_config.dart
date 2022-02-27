class MConfig {
  Map<String, dynamic> pageConfig = getTextPage();

  static Map<String, dynamic> getTextPage() {
    return {
      //"version": "1",
      "pageInfoModel": {
        "title": "test page",
        "description": "这是一个页面",
        "backgroundColor": "rgba(220,220,225,1)"
      },
      //"publishAt": 13,
      "id": "001",
      "layout": [
        {
          "mType": "MBanner",
          "config": {
            "imageList": [
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://img30.360buyimg.com/seckillcms/s750x360_jfs/t1/96220/15/22419/59388/620c65b7E2be9dc75/b673ffdd73d6201c.jpg!cc_750x360.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "evttckTag": "",
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00102138/10034042/1744028780-1905662496485494784-968913783329288192-1_396x396_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/618540/2021/1224/57/d5047fb7-eef2-4a91-86c3-d01971992a7d_396x396_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "width": 40
              },
            ],
            "backgroundImage":
                "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00102138/10034042/1744028780-1905662496485494784-968913783329288192-1_396x396_85.jpg!75.webp",
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
            "mItemMargin": {"bottom": 0, "left": 0, "right": 0, "top": 20},
            "indicatorModel": {
              "indicatorColor": "rgba(255,255,255,0.2)",
              "indicatorRadius": 10,
            },
            "mCardModel": {
              "mItemBorderRadius": {"bottomLeft": 0, "bottomRight": 0, "topLeft": 0, "topRight": 0},
              "gradientColors": ["rgba(250,190,200,1)", "rgba(150,190,100,1)"],
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 0, "left": 0, "right": 0, "top": 0},
            },
          }
        },
        {
          "mType": "MKingKongArea",
          "config": {
            "shrinkWrap": true,
            "titleColor": "rgba(0,0,0,1)",
            "iconPageList": [
              {
                "pageTitle": "金刚区1",
                "iconGroupList": [
                  {
                    "event": {
                      "type": "url",
                      "arguments": "https://www.baidu.com/",
                    },
                    "type": "",
                    "title": "推荐",
                    "url":
                        "https://img30.360buyimg.com/seckillcms/s750x360_jfs/t1/96220/15/22419/59388/620c65b7E2be9dc75/b673ffdd73d6201c.jpg!cc_750x360.webp",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "母婴",
                    "url":
                        "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "美妆",
                    "url":
                        "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00102138/10034042/1744028780-1905662496485494784-968913783329288192-1_396x396_85.jpg!75.webp",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "鞋包",
                    "url":
                        "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/618540/2021/1224/57/d5047fb7-eef2-4a91-86c3-d01971992a7d_396x396_85.jpg!75.webp",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "女装",
                    "url":
                        "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "运动",
                    "url":
                        "https://img30.360buyimg.com/seckillcms/s750x360_jfs/t1/96220/15/22419/59388/620c65b7E2be9dc75/b673ffdd73d6201c.jpg!cc_750x360.webp",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "家装",
                    "url":
                        "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "evttckTag": "",
                    "type": "",
                    "title": "家电",
                    "url":
                        "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00102138/10034042/1744028780-1905662496485494784-968913783329288192-1_396x396_85.jpg!75.webp",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "家装",
                    "url":
                        "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "家电",
                    "url":
                        "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00102138/10034042/1744028780-1905662496485494784-968913783329288192-1_396x396_85.jpg!75.webp",
                  },
                ]
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 4, "left": 4, "right": 4, "top": 4},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 10},
            "spaceBetween": 5,
            "indicatorModel": {
              "indicatorColor": "rgba(255,20,70,1)",
              "indicatorRadius": 10,
            },
            "mCardModel": {
              "backgroundColor": "rgba(255,255,255,0.5)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 4, "left": 4, "right": 4, "top": 4},
              "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 10},
            }
          }
        },
        {
          "mType": "MText",
          "config": {
            "data": "图片组",
            "style": {"fontSize": "large", "fontWeight": "normal", "color": "rgba(255,20,70,1)"},
            "textAlign": "center",
            "mCardModel": {
              "borderColor": "rgba(1,150,180,1)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 2, "left": 2, "right": 2, "top": 2},
              "mItemMargin": {"bottom": 0, "left": 120, "right": 120, "top": 10},
            },
            "event": {
              "type": "url",
              "arguments": "https://www.baidu.com",
            },
          }
        },
        {
          "mType": "MText",
          "config": {
            "data": "type 1-1",
            "style": {"fontSize": "small", "fontWeight": "medium", "color": "rgba(125,125,20,1)"},
            "textAlign": "center",
          }
        },
        {
          "mType": "MImage",
          "config": {
            "styleType": "1-1",
            "spaceBetween": 5,
            "backgroundColor": "rgba(255,300,4,1)",
            "picList": [
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://img30.360buyimg.com/seckillcms/s750x360_jfs/t1/96220/15/22419/59388/620c65b7E2be9dc75/b673ffdd73d6201c.jpg!cc_750x360.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "width": 40
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 10, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            "mCardModel": {
              "borderColor": "rgba(1,150,180,1)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            }
          },
        },
        {
          "mType": "MText",
          "config": {
            "data": "type 1-2",
            "style": {"fontSize": "small", "fontWeight": "medium", "color": "rgba(125,125,20,1)"},
            "textAlign": "center",
          }
        },
        {
          "mType": "MImage",
          "config": {
            "styleType": "1-2",
            "spaceBetween": 4,
            "backgroundColor": "rgba(12,255,4,1)",
            "picList": [
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00102138/10034042/1744028780-1905662496485494784-968913783329288192-1_396x396_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/618540/2021/1224/57/d5047fb7-eef2-4a91-86c3-d01971992a7d_396x396_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "width": 40
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 10, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            "mCardModel": {
              "backgroundColor": "rgba(200,150,180,1)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            }
          },
        },
        {
          "mType": "MText",
          "config": {
            "data": "type 1-3",
            "style": {"fontSize": "small", "fontWeight": "medium", "color": "rgba(125,125,20,1)"},
            "textAlign": "center",
          }
        },
        {
          "mType": "MImage",
          "config": {
            "styleType": "1-3",
            "spaceBetween": 4,
            "backgroundColor": "rgba(12,3,255,1)",
            "picList": [
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/142745/2019/1106/107/83a49cd0-8d1c-4bc4-b10c-eed523949d6d_360x456_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2019/09/06/60/495d7c61-11b3-49f0-a1fd-fca1b4540f4f_360x456_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/11/23/197/61cdde45-6605-40a6-a287-18d9ebd427e3_360x456_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "width": 40
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 10, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            "mCardModel": {
              "backgroundColor": "rgba(120,180,150,1)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            }
          },
        },
        {
          "mType": "MText",
          "config": {
            "data": "type 2-2",
            "style": {"fontSize": "small", "fontWeight": "medium", "color": "rgba(125,125,20,1)"},
            "textAlign": "center",
          }
        },
        {
          "mType": "MImage",
          "config": {
            "styleType": "2-2",
            "spaceBetween": 2,
            "backgroundColor": "rgba(12,3,255,1)",
            "picList": [
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/142745/2019/1106/107/83a49cd0-8d1c-4bc4-b10c-eed523949d6d_360x456_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2019/09/06/60/495d7c61-11b3-49f0-a1fd-fca1b4540f4f_360x456_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/11/23/197/61cdde45-6605-40a6-a287-18d9ebd427e3_360x456_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "width": 40
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 10, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            "mCardModel": {
              "backgroundColor": "rgba(120,180,200,1)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            }
          },
        },
        {
          "mType": "MText",
          "config": {
            "data": "type 1&2",
            "style": {"fontSize": "small", "fontWeight": "medium", "color": "rgba(125,125,20,1)"},
            "textAlign": "center",
          }
        },
        {
          "mType": "MImage",
          "config": {
            "styleType": "1&2",
            "spaceBetween": 1,
            "backgroundColor": "rgba(12,3,4,255)",
            "picList": [
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/03/17/3/ias_dd9094a8f4c76e3c9c638cc6eaf968ea_224x224_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/03/16/110/ias_0f79182d7333550c8fc977303be39626_224x224_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/05/18/111/ias_3d0ed83acfd989f1e1fa17788f009c74_224x224_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/03/16/94/ias_95f9130873ec5fb3716908927c7ba834_224x224_85.jpg!75.webp",
                "width": 40
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 10, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            "mCardModel": {
              "borderColor": "rgba(120,100,150,1)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 5},
            }
          },
        },
        {
          "mType": "MText",
          "config": {
            "data": "type scroll",
            "style": {"fontSize": "small", "fontWeight": "medium", "color": "rgba(125,125,20,1)"},
            "textAlign": "center",
          }
        },
        {
          "mType": "MImage",
          "config": {
            "styleType": "scroll",
            "spaceBetween": 5,
            "backgroundColor": "rgba(12,3,4,255)",
            "picList": [
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/03/17/3/ias_dd9094a8f4c76e3c9c638cc6eaf968ea_224x224_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/03/16/110/ias_0f79182d7333550c8fc977303be39626_224x224_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/05/18/111/ias_3d0ed83acfd989f1e1fa17788f009c74_224x224_85.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upcb/2021/03/16/94/ias_95f9130873ec5fb3716908927c7ba834_224x224_85.jpg!75.webp",
                "width": 40
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 10, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 5, "left": 10, "right": 10, "top": 5},
            "mCardModel": {
              "backgroundColor": "rgba(150,190,200,1)",
              "borderColor": "rgba(150,190,200,1)",
              "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 10, "left": 1, "right": 1, "top": 5},
            }
          },
        },
        {
          "mType": "MText",
          "config": {
            "data": "瀑布流商品",
            "style": {"fontSize": "large", "fontWeight": "normal", "color": "rgba(255,20,70,1)"},
            "textAlign": "center",
            "mItemPadding": {"bottom": 0, "left": 10, "right": 10, "top": 0},
            "mItemMargin": {"bottom": 0, "left": 0, "right": 0, "top": 10},
          }
        },
        {
          "mType": "MProduct",
          "config": {
            "styleType": "",
            "spaceBetween": 6,
            "backgroundColor": "rgba(255,0,0,1)",
            "productList": [
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00133120/10020427/893228695-3261246117856067584-3261246117856067586-50_420_531_512x648_90.jpg",
                "platform": "wahaha",
                "tag": "特卖",
                "name": "裤子",
                "content": "男士长裤",
                "price": "89",
                "originalPrice": "99",
                "discount": "0.2",
                "coupon": "优惠券5元",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/605177/2021/0702/47/789ce2e4-a042-47fe-aa43-f177a4e3b8fb_420_531_360x456_85.jpg!75.webp",
                "platform": "wahaha",
                "tag": "早春特卖",
                "name": "婴儿连体装-童装",
                "content": "三色可选、卡通印花",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/108523/2022/0216/19/34bf9f7f-8964-4efb-9e50-b916341ec8c6_420_531_360x456_85.jpg!75.webp",
                "tag": "3月8号",
                "name": "男童上衣",
                "content": "酷boy，潮",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "coupon": "优惠券5元",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/147351/2021/1008/98/f2342bf7-76b4-47b8-9165-a8b07bc3311c_420_531_360x456_85.jpg!75.webp",
                "platform": "wahaha",
                "name": "袜子",
                "content": "长袜，棉",
                "coupon": "优惠券5元",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/612662/2021/0731/158/659214a3-e3aa-48da-b993-fede308c47bd_420_531_360x456_85.jpg!75.webp",
                "platform": "wahaha",
                "tag": "早春特卖",
                "name": "上衣",
                "content": "上衣",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/112483/2020/1230/38/7e129ebd-243a-4b8a-81a3-c3ece10cdf71_420_531_360x456_85.jpg!75.webp",
                "tag": "六·一",
                "name": "童鞋",
                "content": "白，防水、透气",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "coupon": "优惠券5元",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/08/05/37/8e1bd51c-346d-4d68-ad00-6a7428c3e07a_420_531_360x456_85.jpg!75.webp",
                "platform": "wahaha",
                "tag": "早春特卖",
                "name": "太阳镜",
                "content": "粉红少女",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "r123",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/03/15/87/620da2bc-5fab-406e-9ab9-8187631ccbd1_420_531_360x456_85.jpg!75.webp",
                "tag": "3月8号",
                "name": "皮带",
                "content": "少女",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "coupon": "优惠券5元",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 4, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 10},
            "mCardModel": {
              "backgroundColor": "rgba(150,190,200,1)",
              "borderColor": "rgba(150,190,200,1)",
              "mItemBorderRadius": {"bottomLeft": 0, "bottomRight": 0, "topLeft": 0, "topRight": 0},
              "gradientColors": ["rgba(250,190,200,1)", "rgba(150,190,100,1)"],
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 10, "left": 0, "right": 0, "top": 5},
            },
            "isNameShow": true,
            "priceAlign": "left",
          }
        },
        {
          "mType": "MProduct",
          "config": {
            "styleType": "",
            "spaceBetween": 6,
            "backgroundColor": "rgba(12,3,4,255)",
            "productList": [
              {
                "id": "p001",
                "imgUrl":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "platform": "wahaha",
                "tag": "特卖",
                "name": "杯子",
                "content": "情侣杯",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "coupon": "优惠券5元",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "p002",
                "imgUrl":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "platform": "wahaha",
                "tag": "早春特卖",
                "name": "杯子",
                "content": "情侣杯",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "p003",
                "imgUrl":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "tag": "3月8号",
                "name": "杯子",
                "content": "情侣杯",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "coupon": "优惠券5元",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "p004",
                "imgUrl":
                    "https://res-test.regoo.com/images/waybill/gcp_merchant_960e796037bcf4d224137f691f1638a4.jpeg",
                "platform": "wahaha",
                "name": "杯子",
                "content": "情侣杯",
                "coupon": "优惠券5元",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "p005",
                "imgUrl":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "platform": "wahaha",
                "tag": "早春特卖",
                "name": "杯子",
                "content": "情侣杯",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "p006",
                "imgUrl":
                    "https://i.picsum.photos/id/23/200/300.jpg?hmac=NFze_vylqSEkX21kuRKSe8pp6Em-4ETfOE-oyLVCvJo",
                "tag": "3月8号",
                "name": "杯子",
                "content": "情侣杯",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "coupon": "优惠券5元",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "p007",
                "imgUrl":
                    "https://i.picsum.photos/id/620/200/300.jpg?hmac=ZLg-jrbFo8ASzAzQlxN4yMTNJJBpZtcpDXfwBxAvcT4",
                "platform": "wahaha",
                "tag": "早春特卖",
                "name": "杯子",
                "content": "情侣杯",
                "price": "20",
                "originalPrice": "22",
                "discount": "0.2",
                "currency": "￥",
                "eventList": [
                  {
                    "type": "url",
                    "arguments": "12425",
                  },
                ],
              },
              {
                "id": "p008",
                "imgUrl":
                    "https://i.picsum.photos/id/23/200/300.jpg?hmac=NFze_vylqSEkX21kuRKSe8pp6Em-4ETfOE-oyLVCvJo",
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
              },
            ],
            "mItemBorderRadius": {"bottomLeft": 8, "bottomRight": 8, "topLeft": 8, "topRight": 8},
            "mItemPadding": {"bottom": 4, "left": 10, "right": 10, "top": 2},
            "mItemMargin": {"bottom": 10, "left": 10, "right": 10, "top": 10},
            "isNameShow": true,
            "priceAlign": "left",
          }
        },
      ]
    };
  }
}
