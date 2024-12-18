---
title: 数据分析
tags: 产品经理
categories: 杂谈
date: 2021-12-20 09:11:13
description: 数据分析是什么？
---

# 产品经理与数据分析

## 提纲

- 为什么要数据分析
- 数据分析常⻅⼯具

- 数据分析的执⾏过程
- 数据分析的思路与框架

- 数据分析的对象和常⻅数据指标

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095641)

- 通过对数据进⾏整理加⼯获得信息和知识，从⽽了解产品的⽣存情况、发现潜在机会、引导和⽀撑产品与运营决策、验证策略效果
- 数据是互联⽹产品经理的福⾳，也是改变互联⽹产品经理与传统软件产品经理/消费品产品经理⼯作性质的核⼼元素

  - 消费品和传统软件产品经理不能掌握所有的数据

- ⽤数据⽽⾮直觉：避免决策视⻆狭窄、避免⽆依据决策
- ⽴场和视⻆之争永⽆⽌境，数据加逻辑聊天⼀招毙命

## ⼏个与数据分析有关的故事

- “半⼩时之内撤下对⽤户转化率有影响的特性”

  - 和无码同一个资方的一家公司 CEO 的故事：神策工具

- “我喜欢 A，我喜欢 B，我喜欢 C……”

  - 方案 C，![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095641)

- Google 的 41 种蓝⾊和 $200M
- “按钮颜⾊也能带来区别？”

  - ![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

数据分析、AB测试的重要性。

## 数据分析的常⻅⼯具

- **GoogleAnalytics** / MixPanel / Growing IO / Sensors Data / 友盟

  - 二爷入门就是从 GoogleAnalytics 入门的，还有文档，带有强烈的数据分析的方法论和价值观的东西

- ⼩程序：⼩程序数据助⼿ / 阿拉丁

  - 小程序日志打到 Googleanalytics

- Tableau / Excel / Python / Google Sheets / SQL
- R / MatLab ……

⼏个关键词：Excel 公式、透视表、VBA、Google Script、Python Excel

## 数据分析的执⾏过程

1. 数据规划（设定⽬标）
2. 数据埋点/记录（技术⽀持与实现）
3. 数据收集与整理（原始数据 → 结构化数据）
4. **数据统计与分析（从数据 → 信息/知识）**
5. **结论或⾏动（信息 → 决策/⾏动）**

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

- 虚荣指标

  - 和产品没啥关系，很宏大的指标，PV/UV/DAU

- 利益相关者

  - 从用户角度做价值判断
  - 对于抽奖助手来说，抽奖发起数量是一个很关键的指标

- 提前发现问题

  - 能够提前发现问题的指标，也可以作为关键指标
  - 滞后指标：例如收入，收入是很滞后的



设定策略水位数值

- 双十一在最后几个小时会有一个大额红包，这都是为了冲击GMV而算出来的一个数值

## 数据埋点

- ⼀般说到数据埋点，都指的是⾏为数据的收集
- 本质上是⼀个带了各种各样线索的请求记录，是⽆状态的

- 数据埋点需求，与其描述埋点的⽅案，不如告诉 BI 或⼯程师你想⼲什么
- ⼤部分的数据埋点需求基于事件（⻚⾯访问也算事件），列出想要的时间列表和分类即可

- 很难⼀次就打全打对，从⼩事开始打，⽐如⼀个按钮，然后逐渐研究更⼤的故事

\* 若公司存在完善的打点和数据收集流程与规范，以上都不算

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

## 数据收集与整理

- 将原始的异构数据，整理为可以进⾏筛选/统计/处理的结构化数据
- 这⾥的⼤部分⼯作都是数据⼯程师/数据⼯具完成的，这⼀步产品经理介⼊不多

- 然⽽……

BTW. 怎么收集竞争对⼿的数据？ 怎么收集⾏业数据？

## 数据统计与分析

- 指标 和 维度

  - 指标：某⼀件事情的度量数值，⽐如⽤户量、访问量、访问时⻓、转化率等，通常与具体业务的中间⽬标或最终⽬标直接相关
  - 维度：对指标进⾏不同细分的⽅式，⽐如⽤户量可以分为新⽤户⽼⽤户、安卓⽤户 iOS ⽤户、付费⽤户免费⽤户等，不同的细分⽅式，代表了不同的分析⻆度

## 结论或⾏动

- 数据分析要指向⼀个⽬标，信息/知识/决策/原则
- 「⽬标」是数据分析的起点，也是终点

- 对外：数据报告、数据洞察、业务策略结论
- 对内：⾏业认知、做事的经验和原则

  - 满减是最好用的
  - 晚上 8 点钟发文的流量高

## 数据分析的思路和框架

- 偏向以⽤户、⾏为为核⼼：⽤户是谁、从哪⾥来、到哪⾥去
- 偏向流量：流量成本、变现效率、可持续性

- 偏向卖货：流量、转化、⽑利
- 偏向 SaaS：客户分类、留存与激活、收⼊规模与效率

- 平台型产品：各⻆⾊利益博弈、货币化率

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

- 用户产品：工具、新闻站点、游戏

  - 关注用户的行为，也就是用户数据
  - 最重要的就是用户在整体的框架里面做了哪些动作，如何收获我们希望创造的价值

  - 例子：readhub，分析用户如何浏览新闻，怎么打开新闻，有没有浏览信源，如何追寻来龙去脉，有没有订阅公司订阅关键词

- 流量型产品：抽奖助手既是流量型也是平台型

  - 利用流量变现来赚钱，流量结构怎么样，如何获客的

- 社区产品：内容生产者和消费者的供求关系，分发效率
- 平台产品：双边市场有人买卖，都会去读经济学，基尼系数，判断贫富差距的系数

  - 货币化率：这个平台上所有的交易，平台有多少营收
  - 拼多多的货币化率很低，京东极高

- SaaS：软件即服务

  - 留存与激活
  - 收入规模与效率

- 卖货：流量、转化、毛利，电商类产品的模型
- TO B 产品

  - 业务利益：业务诉求和产生的利益
  - 用户行为是怎么样的

  - 流程成本：企业都是要提高信息化效率的，所以一定要关注成本
  - 客户满意度：核心关键人员打分，取平均

没有任何一个用户产品是干干净净的用户产品。

每一个框架都是一个角度，都不可能用一个框架来分析。

## 数据分析对象

- ⽤户属性数据：⼀组画像

  - ![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

- ⽤户⾏为数据：⼀张地图

  - 用户从哪来到哪去，看了什么页面，下了什么订单
  - 方法：漏斗或者一张地图

  - ![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)
  - ![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

- 业务数据：⼀堆图表

  - 来自实际数据库里面的数据
  - ![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

- 财务数据：钱

  - 营收成本利润、开销方式

- ⾏业数据：⼏个数字

  - 大的数字

- 宏观数据

  - 大的数字

## 数据分析常⻅指标与释义

- ⽤户属性数据 - 技术参数、地理位置、年龄、性别、地区……

  - 技术参数：浏览器版本、系统版本等

- ⽤户⾏为数据 - PV、UV、（PV/UV）、VV、UPV、DAU、MAU、（DAU / MAU）、WAU、AAC、MAC、WAC、CTR、留存、来源、访问时⻓……

  - PV：页面访问量
  - UV：独立访问者，也就是访问用户，UV 计算需要考虑统计的时间范围，比如日 UV 还是周 UV

    - 通过 cookie 来计算，但是是机器的维度

  - PV/UV：访问深度，当然希望深度越深越好
  - VV：video view，视频播放量

  - UPV：uniq page view，每个页面访问的去重数目
  - DAU：日活跃用户，daily active user

    - 怎么才叫活跃，只要打开 app 就叫活跃、只有停留多长时间的才叫 A，或者用了某些模块才叫 A
    - IMEI，来根据手机设备来算

  - MAU、WAU：月活 周活
  - 月DAU之和/MAU：数字越大，表示粘性越大，产品吸引力越大，范围 1-30

    - 高频产品小于 10 可能会有问题

  - AAC/MAC：anual active consumer，年度活跃买家，MAC 月度活跃买家

    - 外部用 AAC 讲故事，内部用 MAC，AAC 能够用运营手段快速撬动
    - AAC、MAC 这两个很可能是不同团队的 KPI

  - CTR：点击率
  - 留存：次日留存，周留存、月留存、三月留存，新增留存，活跃留存

  - 来源：朋友圈、看一看
  - 访问时长

- 业务数据 - （跟你相关）如：课程数量、训练营数量、订单数、发帖量、包裹数……
- 财务数据 - GMV、ARPU、LTV、客单价、复购率、转化率、Take Rate……

  - GMV：商品交易总额，代表了时长的繁荣程度，GMV 究竟包括什么？未支付订单？退款、拒收订单等等
  - ARPU：单用户平均收入，ARPDU，单用户日平均收入

  - 流量型产品，小程序一个 DAU，几分钱，APP 端可能是几毛钱
  - LTV：life time value，生命周期总价值，一个用户总共可以赚多少钱

  - Take Rate：货币化率，代表了产品的变现强悍程度

- ⾏业数据 - TAM、CAC、TAC……

  - TAM：市场天花板
  - CAC：客户获取成本

  - TAC：流量获取指标

- 宏观数据 - ⾏业市场规模、GDP 占⽐

> - 最重要的是，有你⾃⼰的指标定义，⽽不是⼀个业界通⾏的「虚荣指标」
> - 所有的指标应该在脑海中组成⼀张「数据⼤图」，知道它们之间的关系
>
> - 让数据成为⾃⼰的语⾔，⽤数据重构直觉，⽽不是⽤情绪和好恶来构建直觉

# 用户数据

## 提纲

- ⽤户属性
- ⽤户⾏为数据

- ⽤户分类与⽤户标签
- 案例的分析思路

## ⽤户属性 · ⽤户是谁

- 通⽤：年龄、性别、地区、终端、分辨率、⽹络条件……
- 业务：社交、来源、职业、家庭关系、学历、ID……

- 来⾃数据⼯具/⽤户调研/业务数据表
- 快速辅助决策

- 应指向⽤户画像
- 形成对⽤户好恶的感性直觉理解

> 对用户理解越深，那么对用户属性标签理解就会越深越具体
>
> 最重要的目的就是快速辅助我们做决策
>
> 不要从硬性的标签来理解用户，要从感性直觉角度来来理解用户——龙哥不喜欢打标签

## ⽤户⾏为 · ⽤户从哪⾥来，到哪⾥去

- 互联⽹产品数据分析中最重要的分析领域

  - 最重要的分析数据就是用户行为

- 宏观分析和局部观察两种

  - 用户行为数据分为两种

- 数据获取：⽤户⾏为⽇志

  - 案例，公众号读完率和流失率数据

- 常⽤⼯具：漏⽃/地图
- 思路：从微观轨迹到宏观数据

- 从⽤户的⻆度看产品，标记在每⼀时刻可能做什么，去哪⾥
- 核⼼路径是什么？路径上的核⼼环节是什么？

  - 通过设计的核心路径，用户在这些核心环节哪里会流失？为什么会流失？

## AirPlay ⾛⼀波，在 App Store 的界⾯上找⼀下感觉

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

卡片的给人的认路的负担是非常低的

就诊问问也采用了卡片的设计

- 整体的信息架构：有四个大的模块

  - Today 以卡片的形式展现

⻚⾯：

- Portal：今⽇推荐、游戏、App、搜索
- List：应⽤列表

- Detail：专⽂推荐、应⽤详情
- 动作：分享、获取（点击获取 → 确认）、退出 …

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095642)

- 设计的核心路径上，用户的漏斗是怎么样的

## ⽤户分类与⽤户标签

- ⽤户是谁 × ⽤户做了什么 → ⽤户标签

  - 新⽤户 & ⽼⽤户
  - ⾼频⽤户 & 低频⽤户

  - 浏览⽤户 & 下载⽤户
  - 免费⽤户 & 付费⽤户

  - 新购⽤户 & 复购⽤户
  - ⽆⽀付路径⽤户 & ⽀付宝⽤户 & 银⾏卡⽤户

  - ⽣产⼒⼯具⽤户 & 游戏⽤户 & 创造⼒⼯具⽤户
  - ⽣产⽤户 & 消费⽤户

  - L1 L2 L3 L4

## ⽤户产品的数据模型

- 假设⼀个关键⽬标：提⾼ App 下载量
- 以终为始，倒推实现路径

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

## 基于数据反推的策略

- 针对 App Store 新⽤户提供搜索引导

  - ⽬标：提⾼新⽤户进⼊搜索⻚ → 输⼊搜索词 → 提交搜索 → 浏览并点击搜索结果的⽐例

- 针对低频⽤户发送 Push，直接导⼊搜索结果⻚

  - ⽬标：提⾼低频⽤户进⼊搜索⻚ → 浏览并点击 → ⾃⾏输⼊搜索词的⽐例

- 针对免费⽤户，优先展示免费 App 的搜索结果⻚

  - ⽬标：提⾼免费⽤户的搜索列表⾄应⽤详情的转化率

- 还有很多，当我们将框架建好后，数据填充其间，就可以集中考虑策略了

## 作业

- 挑选⼀个你喜欢的产品（结构简单⼀点），做⼀个⽤户路径地图
- 针对这个路径地图，做⼀个漏⽃模型，填⼊你认为合理的数字

- （选做）根据这个你假设的数字，提出下⼀步的优化重点
- （选做）针对优化重点，提出⼀到两个改进⽅案

# 流量型产品的分析逻辑

## 提纲

- 什么是「流量型产品」，与「⽤户产品」有区别吗？
- 流量型产品的分析指标与维度

  - 获客
  - 留存

  - 引荐

## 流量型产品？不就是⽤户产品吗？

- 流量的背后是真实的⽤户，流量的起承转合是真实的⽤户场景
- 所谓的流量型产品其实就是⽤户产品，只不过分析模型常交叉

- ⽤户产品关注⽤户⾏为轨迹，流量产品关注流量获取和引荐
- 平台获利视⻆与⽤户获利视⻆ —— 都不可或缺

  - 分析流量时，⽬标通常是「引流」&「获利」&「规模」
  - 分析⽤户时，⽬标通常是「⽤户价值」&「⽤户体验」

- 流量常常伴随的⼀个话题是「增⻓」

  - 做用户增长通常需要一个情商非常高，因为和其他产品团队都是并列的，但是工作又需要其他所有产品经理配合
  - 所以资深的产品经理可能才适合做用户增长

## 流量型产品的分析框架 · 经典的海盗模型

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

AARRR 模型

- 首先是获取用户
- 激活：可能是注册成功才算激活，有的下载了 app 就算激活

- 留存：过了一段时间又使用，就说是用户留存下来了。这是整个产品模型最重要的



获取和留存是最重要的两个环节

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

留存、变现和引荐，很多时候是可以分开来理解的。

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

- 要先看流量的来源和占比
- 饼图统一分析用户来源

  - direct：直接来的
  - referral：引荐来的

  - organic search：自然搜索
  - paid search：

- 第二个是用户来源的占比
- 第三个是营销活动带来用户的占比

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

- 我们的产品流量占比多大是健康的？

## 流量型产品的分析框架——获取

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220092119)

- app 的获客来源

  - app store 主动下载

    - 最重要的是做 ASO、SEO，让在搜索中排在前面
    - 品牌就是做广告

    - 口碑传播建立起来之后，力量摧枯拉朽

  - 地推

    - 获客成本很高，管理成本也很高，但是很有效
    - 鸡蛋是最好的获客产品

  - 广告投放

    - 广点通、穿山甲
    - 甚至是厕所关注公众号出纸

    - 广告联盟水面下有很多流量

  - 自有流量池

    - 流量品类：美团的高频打低频
    - 利润品类

    - 强带弱网络效应：通讯工具、聊天软件都是有网络效应的；电商平台也是有网络效应的

  - 社交网络

    - 可能是最重要的获客渠道

  - 商务换量

### 问题

- 问题 1：流量结构是什么？是否健康？

  - 去哪儿的流量来源大部分来自于百度，导致没有任何议价能力，这就是不健康
  - 流量来自于模板消息，这也是不健康的，模板消息关掉，整个流量来源没有了

- 问题 2：流量规模是否能够⽀撑业务？天花板在哪⾥？是否有可持续性？

  - 强网络效应的产品如果流量来自于地推，那就是流量规模不能够支撑业务
  - 做厕所扫码出纸的创业，天花板就是全国的厕所；快递柜就全国的小区和写字楼；

  - 很多流量渠道没有可持续性：模板消息、微信朋友圈获客、营销活动

- 问题 3：流量属性与业务是否匹配？

  - 流量渠道要与产品调性匹配

- 问题 4：流量成本是否合理？

  - 100块钱买一个团长是否划算？

- 问题 5：到哪⾥找/买到与业务匹配的更多流量？

  - 在做流量规划时或分析时，要考虑这个问题



- 分析维度：来源 / 渠道 / 成本
- 指标：

  - 新⽤户数（规模）
  - CAC/TAC（流量成本）（eCPM / CPC / CPA）

    - eCPM：展示一千次，我给你100块钱
    - CPC：点击一次付一次钱

    - CPA：用户产生一次行为，我给你一次钱
    - CPS：只有卖出去了才给流量主钱

  - ROI（流量质量）

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

- 公域：一个渠道来自于视频号的推荐
- 私域：另一个流量来自于朋友圈转发带来的流量

- 卖艺就是通过粉丝打赏获取流量

视频号和抖音快手的区别在哪里？

需要建立一个思考结构，流量的来源是怎么样的，获客结构是怎么样的。

## 留存

手枪图

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

- 问题 1：⽤户从哪⾥回来了？（留存渠道）
- 问题 2：做了什么事情的⽤户回来了？回来⼲什么了？（留存⾏为）

- 问题 3：⽤户时隔多久回来了？（留存周期）
- 问题 4：流失⽤户为什么流失了？

### 概念

新增留存：某个周期内获取的新⽤户，在⼀段时间后再次执⾏留存⾏为的⽐例。

活跃留存：某个周期内执⾏某⾏为的⽤户，在⼀段时间后再次执⾏留存⾏为的⽐例。

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

- 小张永远不计算入留存框架

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

- 手枪图🔫
- 留存率

- 次日留存、三日留存、七日留存、十四日、三十日

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

从图中能分析出什么问题？

- 后期留存很平稳
- 有三天颜色很深

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220095643)

- 什么样的留存数据是健康的？

  - Facebook 游戏的留存，次日留存 40%

- 跟产品有关系，readhub 就不是一个新增留存高的产品，对老用户好

### 留存的作用

- 留存分析是产品数据分析中最重要的主题
- 不分⻘红皂⽩的次⽇留存可能也是⼀个「虚荣指标」

  - 按渠道/按模块/按分类去做留存分析
  - 留存⾏为不应仅仅是「打开」

  - 需要根据业务特性确定留存定义
  - 例：抽奖助手的留存分析，一定会对抽奖发起人分析，所以需要对留存进行细致分析

- 留存数据给产品经理的三个作⽤

  - 观察产品健康度、验证运营和产品特性有效性、启发改进⽅案

### 留存的信息和方法

- 留存数据可以给我们的信息

  - 渠道或营销活动的获客是否有效
  - 吸引⽤户的特性是什么？功能还是某个事实

- 提⾼留存的⽅法

  - 改进产品
  - 使⽤钩⼦

  - - 想要快速拉留存的一个方法，push，小程序模板消息，EDM，短信等等
    - 即刻，拼多多，知乎的 push 很有意思

## 引荐

- 问题 1：⽤户激励是什么？在什么场景下最容易引发推荐⾏为？

  - 最有用的就是钱
  - 心理需求也很重要：得到一直没有做分享有赏；得到希望用户看到内容好才会分享

  - 身份认知激励：「我是第几个点赞的」，医生身份的认证，强化自己是医生，二爷做过的一个医疗产品

- 问题 2：推荐⾏为的全路径中的数据转化如何？
- 问题 3：⼀个新⽤户可以带来多少新⽤户？

  - K（周期） = 感染率 × 转化率

    - K 大于 1 的话，就会指数级增长

  - 本质也是⼀种获客，也有 CAC，也应该回到整体的获客模型中观察

获客最有效的，都是社交网络

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220092251)

![](https://s3plus.meituan.net/v1/mss_f32142e8d47149129e9550e929704625/yzz-test-image/20211220092257)

- 转化入口很重要
- 分享后的文案很重要

- 两个我可能会做的事情：

  - 显示详情标题提到上面
  - 纵向推荐与该课程有关的其他课程

- 拼多多很厉害

  - 用多个手机尝试同一个流程

- 要有数据意识

当我们想要分析用户路径的时候，先分析所有的用户路径，然后找到一条核心路径进行分析

1. 整体的用户路径（把实际的界面图给列出来）
2. 选出一条核心路径分析
