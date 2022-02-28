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
                    "https://a.appsimg.com/upload/brand/upcb/2021/10/28/134/ias_05d938b1f90a15ab08214a9e09620c4b.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://a.appsimg.com/upload/brand/upcb/2021/07/30/85/ias_006e66b078b36cd8fb08e58d94ed48db.jpg!75.webp",
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
                    "https://a.appsimg.com/upload/brand/upcb/2022/01/22/91/ias_b3f5914dd548f14af3524fd1f6f075c6.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://a.appsimg.com/upload/brand/upcb/2021/07/30/19/ias_7f836a3bca5438264e85d20e63da2b74.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://a.appsimg.com/upload/brand/upcb/2022/01/21/14/ias_c035aa93a67d366bb6153c496a976f27.jpg!75.webp",
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
                    "url": "https://img.icons8.com/bubbles/2x/commercial.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "母婴",
                    "url": "https://img.icons8.com/bubbles/2x/boy-stroller.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "美妆",
                    "url": "https://img.icons8.com/bubbles/2x/dressing-table.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "鞋包",
                    "url": "https://img.icons8.com/bubbles/2x/girl-and-shoe.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "女装",
                    "url": "https://img.icons8.com/bubbles/2x/coco-chanel.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "运动",
                    "url": "https://img.icons8.com/bubbles/2x/women-hammer-throw.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "家装",
                    "url": "https://img.icons8.com/bubbles/2x/gingerbread-house.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "evttckTag": "",
                    "type": "",
                    "title": "家电",
                    "url": "https://img.icons8.com/bubbles/2x/resume.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "玩具",
                    "url": "https://img.icons8.com/bubbles/2x/teddy-bear.png",
                  },
                  {
                    "event": {
                      "type": "url",
                      "arguments": "12425",
                    },
                    "type": "",
                    "title": "零食",
                    "url": "https://img.icons8.com/bubbles/2x/milkshake.png",
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
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/12/29/18/2d1118f7-df8e-4c1b-b7af-3f68b1bb3977_353x353_90.jpg",
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
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/12/20/159/0d87ec0b-4975-4198-8e24-ad3bdc8c2e4f_353x353_90.jpg",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/603410/2021/1231/36/31946bfb-f607-416e-8c54-00e8a5205646_353x353_90.jpg",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/603410/2022/0210/171/91b20d84-c065-42c7-97c7-bdd783bfa228_353x353_90.jpg",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/12/22/105/8a7e3ac9-e227-44e7-a801-76ae4b2fb269_353x353_90.jpg",
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
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcpos/1100002986/2022/0112/195/e5e4eb90-ff81-4f28-ba05-00b39fabbe04.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/638906/2022/0218/115/441125f7-1374-400a-895a-a37ac778452a.jpg!75.webp",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/114579/2021/1103/16/6f4f0d54-3ccc-4ba5-9292-66abb105ff80.jpg!75.webp",
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
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2022/02/23/62/8ff520b4-254f-4b34-a2c0-4d5cc8935413_353x353_90.jpg",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2022/02/23/178/cc5b6a88-8d1a-41ed-be94-898bf1d8c0b1_353x353_90.jpg",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2022/02/23/79/a3f226f6-67ec-4293-8404-816ed702955b_353x353_90.jpg",
                "width": 40
              },
              {
                "event": {
                  "type": "url",
                  "arguments": "12425",
                },
                "height": 40,
                "url":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2022/02/23/142/84b58507-3d06-4ce5-8a08-3c7f23b50db0_353x353_90.jpg",
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
              {
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/07/29/34/14bd0ad3-2ceb-4b2f-b364-78fc818418da_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/604501/2020/1102/167/ed33a71d-92f6-455a-9705-6fced4aac8f3_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/07/29/30/aae0479d-c143-4c34-ae1c-f71a0115d790_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/604501/2020/0518/35/f4ee5ac5-00f9-4649-985a-9e900bcb8f7f_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/604501/2021/0723/35/95bd3bee-a65c-4908-8bb2-bab43dd5bee5_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/10/08/103/134826ed-d08f-4f18-9ede-c7161c2081e7_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/11/02/120/06233447-27ab-4126-9329-6da16e6a642e_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/11/02/173/7fbbdc60-83a7-4931-9fa7-00ae04c2b77d_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/08/24/42/132a3791-973a-431c-8eda-b8409b6395bd_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/103539/2019/0620/95/ac2d999c-e441-4b35-ad84-f797a4d0362c_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2020/07/10/64/b6270afc-d948-4e80-b512-1816d2e59d9f_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/12/20/159/f1167637-5c52-4efd-beb7-39f78a4e76d8_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00100302/10000601/1651400668-2629897758863650856-2629897758863655018-1_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/615472/2021/0318/22/281a3125-73f1-4319-802f-b46dae69983f_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00615472/10025337/17328022-2101569250182373376-2101569250182377476-1_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvop/00615472/10025337/449024859-459162723575128064-459162723575132165-1_353x353_90.jpg",
                "platform": "斐乐",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2022/01/17/134/8e691da5-88cd-4a6f-a507-ea7ca456cdcc_353x353_90.jpg",
                "platform": "puma",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/613928/2021/0705/20/2983ca5e-3c7f-43e6-a5fc-50214713a6cd_353x353_90.jpg",
                "platform": "puma",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/09/29/60/be9b076c-f782-469b-99d6-48cf320c4b2b_353x353_90.jpg",
                "platform": "puma",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/640356/2021/1206/9/343acdd6-7838-4dd6-90ea-bb0b00bcf09d_353x353_90.jpg",
                "platform": "回力",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/618621/2022/0111/166/5d5182c2-6025-45e6-9e44-f887bba1c113_353x353_90.jpg",
                "platform": "回力",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
                "id": "p001",
                "imgUrl":
                    "https://h2.appsimg.com/a.appsimg.com/upload/merchandise/pdcvis/2021/09/29/162/2bee35d2-0a0a-46a4-9d9f-9b11035a142b_353x353_90.jpg",
                "platform": "回力",
                "tag": "大牌",
                "name": "运动上衣",
                "content": "黑色",
                "price": "400",
                "originalPrice": "420",
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
            "mItemMargin": {"bottom": 20, "left": 10, "right": 10, "top": 10},
            "mCardModel": {
              "backgroundColor": "rgba(150,190,200,1)",
              "borderColor": "rgba(150,190,200,1)",
              "mItemBorderRadius": {"bottomLeft": 0, "bottomRight": 0, "topLeft": 0, "topRight": 0},
              "gradientColors": ["rgba(250,190,200,1)", "rgba(150,190,100,1)"],
              "mItemPadding": {"bottom": 0, "left": 0, "right": 0, "top": 0},
              "mItemMargin": {"bottom": 0, "left": 0, "right": 0, "top": 5},
            },
            "isNameShow": true,
            "priceAlign": "left",
          }
        },
      ]
    };
  }
}
