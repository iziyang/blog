---
title: 解决方案设计
tags: 产品经理
categories: 杂谈
date: 2021-06-07 08:00:41
---

**这是我学习二爷的产品训练营第三部分的学习笔记。**

# 解决方案的设计与积累

之前讲过产品思维是什么，这里再回顾一下。产品思维就是：

- 用什么方法 3
- 解决谁的 1
- 什么问题 2

这里优先级我也标出来了，谁也就是用户是排在第一位的，问题第二位，用什么方法是第三位。这一部分就开始讲如何做解决方案。

下面是本次的提纲。

- ⼏个关于解决⽅案的概述

- ⾮功能解决⽅案
  - 功能解决⽅案
  - ⽬标指标化
  - ⽤户与系统的交互框架
  - 功能设计的⼏条原则
  - MVP 与 AB Testing
  - ⽅案设计⼯具箱
- ⼀个 Demo：如何从 Medium 中开始探索

## 解决方案概述

- 解决⽅案的前提是明确了「利益相关者」和「待解决的问题」
  - 这一点前面也说过了，我们一定是先明确「谁」和「问题」，最后才是解决方案

- 出解决⽅案是产品经理的天职，不要直接转发
  - 不能把看似伪装成解决方案的需求直接转发给开发，我们需要去分析需求，最终出一个解决方案

- 注意 X-Y Problem，核⼼关注 X
  - 有一个问题 X，然后我们想到了一个解决方案 Y，然后核心就可能关注在 Y 上面了
  - 之前在阿里的时候，有一个想要获取某一个产品页面数据的需求，于是自然而然就想到了通过爬虫来获取，还考虑了很多的法律风险。但其实后来尝试联系了这个作者之后，对方直接给了一个接口出来，直接调用就可以了

- ⼤量的练习/模仿/储备，然后跳出框架（Jazz）
  - 初入行的产品经理容易眼高手低，一定要自己做出一个不一样的东西，但其实首先要有一个框架，通过大量的联系模仿，最后才能跳出框架

- 解决⽅案不要局限于「功能」
  - 文案、设计等等

## 非功能解决方案

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20210607081900)

例如很多人在取票的时候，会忘记拿走身份证，那是加上一系列的交互和文字提示，还是改变产品的设计，让用户没有办法放身份证？这里应该已经一目了然了。

- 能不能靠文案解决问题？

- - 某电商巨头的产品文案是总裁写的
  - 某招聘网站，把求职招聘改成高薪职位
  - 在发布视频状态的时候，录制完视频会出现一个「就这样」的按钮，其实龙哥就是通过这种方式来降低心理压力

- 能不能靠规则、制度解决问题？

- - 微博关注 30 天内不能评论
  - 电商大促的活动，临时增加规则，多少积分，多少天没有登录不能参加活动等

- 能不能靠商业手段解决问题？

- - 在之前PC 时代，有一个朋友做直播带货，要处理退货问题，退回来的货物要重新上架、清洗、整理等等，后面讨论了很多工单系统应该支持退货流程，但最后还是直接销毁成本最低

- 能不能靠运营解决问题？
  - 后面再详细讲解

## 在解决方案开始之前：目标指标化

- 卫哲的 3+1

- - 3：需求是从哪⾥来的？⽬标客户是谁？// 有多少⼈有这样的需求？这个需求紧迫吗？// 他们的痛是什么？**场景是什么？（⽤产品之前/之后）**

- - - 原来是怎么解决的，用了你的产品之后有什么区别？

- - 1：解决之后在数据上会有什么表现？

- - - **做产品的本能反应，在数据上会有什么反映**

- - - - 做了购物车之后用户交易额会增长、单量会增长
      - **要事先埋点**

- Numbers lend an air of legitimacy and credibility.

- - 微信公众号放出的数据，刚开始只有订阅人数，后面增加了阅读量

- 拆解宏观商业⽬标，分解为特性设计的微观⽬标

- - 按钮的点击比例，红包的领取人数，和宏观商业目标的关系是什么

- 指标是对业务的理解，不是标准字典；指标是结果的展现，⽽不是操作的抓⼿

- - 北极星指标，七日三活，而不是所谓的 DAU 等泛泛的指标
  - 推特关注超过 30 人，一定会成为推特的长期用户
  - 面试的时候会面试关注什么指标，如果只有日活和次留，那就是不合格的
  - 指标是果，而不是因，一定是做了某些事情之后，指标的提升是一个自然而然的结果
  - 网站产品是跟用户的分成比例以及用增的关系
