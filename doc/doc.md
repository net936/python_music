
# 开发文档



## 功能介绍


- 音乐管理：管理系统可以录入、修改和查询音乐的基本信息，如名称、歌手、简介等。
- 类型管理：系统可以管理音乐的类型信息，包括类型的名称等。
- 评论管理：管理和浏览整个网站的评论信息。
- 用户管理：管理和浏览网站的用户信息，可以新增、编辑和删除用户。
- 统计分析：系统可以根据音乐的活动数据和用户参与度进行统计和分析，帮助管理员了解整个系统的状况。
- 消息管理：音乐管理员可以在系统上发布消息，整个网站的用户都能收到。
- 广告管理：音乐管理员可以在系统上发布广告消息，然后在详情页面右侧展示。
- 意见反馈：音乐管理员可以在后台查看浏览用户提交的意见反馈信息。
- 系统信息：管理员可以查看系统的基本信息，包括系统名称、服务器信息、内存信息、cpu信息、软件信息等。
- 注册登录：用户通过注册和登录后，才能使用网站。
- 门户浏览：用户进入首页后，可以浏览音乐列表信息，包括最新、最热。
- 热门推荐：基于协同过滤推荐算法的热门推荐。
- 用户中心：包括用户基本资料修改、用户基本信息、密码、收藏点赞等。
- 意见反馈：包括用户提交意见反馈的入口页面。
- 模糊搜索：顶部搜索功能，支持模糊搜索音乐信息。
- 音乐评论：详情页下侧用户可以评论音乐。

## 开发环境

- 后端： Python 3.8 + Django 3.2
- 前端： Javascript + Vue
- 数据库：MySQL 5.7
- 开发平台：Pycharm + vscode
- 运行环境：Windows 10/11

## 关键技术

- 前端技术栈 ES6、vue、vuex、vue-router、vue-cli、axios、antd
- 后端技术栈 Python、Django、pip

### 后端技术

#### django框架

Django是一款基于Python开发的全栈式一体化Web应用框架。2003年问世之初，它只是美国一家报社的内部工具，2005年7月使用BSD许可证完成了开源。Django采用MTV设计模式，即Model（模型）+ Template（模板）+ View（视图）。它遵循MVC设计，并且内置了对象关系映射（ORM）层，使得开发者无需关心底层的数据存取细节，可以更专注于业务逻辑的开发。

Django的目的是削减代码量，简单且迅速地搭建以数据库为主体的复杂Web站点。它是全栈式框架，因此安装起来很简单，而且使用者众多。这使得Django除具有完备的官方文档之外，还有大量的关联文档、丰富的第三方库可供使用。与其他框架相比，Django用起来要轻松得多。

优点：
- 提供了定义序列化器Serializer的方法。可以快速根据Django ORM或者其他库自动序列化或反序列化。
- 提供了丰富的类视图MIXIN扩展类。可以简化视图的编写。
- 具有丰富的定制层级。包括函数视图、类视图，还可以将视图与自动生成API结合，满足各种需求。
- 支持多种身份认证和权限认证方式。
- 内置了限流系统。

### 前端技术

- npm：node.js的包管理工具，用于统一管理我们前端项目中需要用到的包、插件、工具、命令等，便于开发和维护。
- ES6：Javascript的新版本，ECMAScript6的简称。利用ES6我们可以简化我们的JS代码，同时利用其提供的强大功能来快速实现JS逻辑。
- vue-cli：Vue的脚手架工具，用于自动生成Vue项目的目录及文件。
- vue-router： Vue提供的前端路由工具，利用其我们实现页面的路由控制，局部刷新及按需加载，构建单页应用，实现前后端分离。
- vuex：Vue提供的状态管理工具，用于统一管理我们项目中各种数据的交互和重用，存储我们需要用到数据对象。
- Ant-design：基于MVVM框架Vue开源出来的一套前端ui组件。

## 运行步骤

### 软件准备

1. Python 3.8 [下载地址](https://www.python.org/ftp/python/3.8.10/python-3.8.10-amd64.exe)
2. MySQL 5.7 [下载地址](https://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-community-5.7.44.0.msi)
3. Node [下载地址](https://nodejs.org/dist/v18.20.2/node-v18.20.2-x64.msi)

### 后端运行步骤

(1) 安装依赖，cd进入server目录下，执行
```
pip install -r requirements.txt
```

(2) 创建数据库，创建SQL如下：
```
CREATE DATABASE IF NOT EXISTS python_db[your dbname] DEFAULT CHARSET utf8 COLLATE utf8_general_ci
```
(3) 恢复数据库数据。在mysql下依次执行如下命令：

```
mysql> use xxx(数据库名);
mysql> source D:/xxx/xxx/xxx.sql;
```

(4) 配置数据库。在server目录下的server下的settings.py中配置您的数据库账号密码

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'python_db',   # 您的数据库
        'USER': 'root',        # 您的用户名
        'PASSWORD': '4643830', # 您的密码
        'HOST': '127.0.0.1',
        'PORT': '3306',
        'OPTIONS': {
            "init_command": "SET foreign_key_checks = 0;",
        }
    }
}
```

(5) 启动django服务。在server目录下执行：
```
python manage.py runserver
```

### 前端运行步骤

(1) 安装依赖，cd到web目录，执行:
```
npm install 
```
(2) 运行项目
```
npm run dev
```

然后访问前端地址。即可

## 代码结构

### 后端结构

```
server  
├── myapp            // 主应用
│       └── auth                     // 认证管理
│       └── middlewares              // 中间件
│       └── permission               // 权限
│       └── views                    // 视图与接口（主要业务代码）
│       └── models.py                // 状态码
│       └── serializers.py           // 状态码
│       └── urls.py                  // 状态码
│       └── utils.py                 // 状态码
├── server             // 配置目录
├── upload             // 静态资源目录
├── requiements.txt    // 依赖项
```

### 前端结构

```
├── build                      // 构建相关  
├── public                     // 公共文件
│   ├── favicon.ico            // favicon图标
│   └── index.html             // html模板
├── src                        // 源代码
│   ├── api                    // 所有请求
│   ├── assets                 // 主题 字体等静态资源
│   ├── router                 // 路由
│   ├── store                  // 全局 store管理
│   ├── utils                  // 全局公用方法
│   ├── views                  // view界面
│   ├── App.vue                // 入口页面
│   ├── main.js                // 入口 加载组件 初始化等
│   └── settings.js            // 系统配置
├── .eslintignore              // 忽略语法检查
├── .eslintrc.js               // eslint 配置项
├── .gitignore                 // git 忽略项
├── babel.config.js            // babel.config.js
├── package.json               // package.json
└── vite.config.js             // vue配置
```

## 数据库设计

数据库设计，请见doc文件夹下的《表结构word文档》。


## 开发流程


下面是主要功能的开发流程，包括音乐管理、用户管理、分类管理、评论管理、统计分析、登录注册、热门推荐等功能。


**音乐管理功能的开发流程**

第一步：编写实体类

在server下的myapp下的models.py下面新建Thing类。并写入相关代码（参考models.py文件）

第二步：编写序列化层

在server下的myapp下的serializers.py下新建ThingSerializer类，并相关代码。

第三步：编写views层

在server的myapp下的views下，新建Thing.py代码，并写入代码，实现增删改查

然后将该接口添加到urls.py中即可。

第四步：编写界面和API

打开前端web工程，在views文件夹下新建thing.vue文件，并填入代码（请参看thing.vue文件）


**分类管理功能的开发流程**

第一步：编写实体类

在server下的myapp下的models.py下面新建Classification类。并写入相关代码（参考models.py文件）

第二步：编写序列化层

在server下的myapp下的serializers.py下新建ClassificationSerializer类。

第三步：编写views层

在server的myapp下的views下，新建classification.py代码，并写入代码，实现增删改查

然后将该接口添加到urls.py中即可。

第四步：编写界面和API

打开前端web工程，在views文件夹下新建classification.vue文件，并填入代码（请参看classification.vue文件）


**用户管理功能的开发流程**

第一步：编写实体类

在server下的myapp下的models.py下面新建User类。并写入相关代码（参考models.py文件）

第二步：编写序列化层

在server下的myapp下的serializers.py下新建UserSerializer类。

第三步：编写views层

在server的myapp下的views下，新建User.py代码，并写入代码，实现增删改查

然后将该接口添加到urls.py中即可。

第四步：编写界面和API

打开前端web工程，在views文件夹下新建user.vue文件，并填入代码（请参看user.vue文件）


**评论管理功能的开发流程**

第一步：编写实体类

在server下的myapp下的models.py下面新建Comment类。并写入相关代码（参考models.py文件）

第二步：编写序列化层

在server下的myapp下的serializers.py下新建CommentSerializer类。

第三步：编写views层

在server的myapp下的views下，新建Comment.py代码，并写入代码，实现增删改查

然后将该接口添加到urls.py中即可。

第四步：编写界面和API

打开前端web工程，在views文件夹下新建comment.vue文件，并填入代码（请参看comment.vue文件）



**统计分析功能的开发流程**


第一步：编写views层

在server的myapp下的views下，新建overview.py代码，并写入代码，实现统计功能。

然后将该接口添加到urls.py中即可。

第二步：编写界面和API

打开前端web工程，在views文件夹下新建overview.vue文件，并填入代码（请参看overview.vue文件）

**登录注册功能的开发流程**

第一步：编写views层

在server的myapp下的views下，新建user.py代码，并写入登录和注册代码。

然后将该接口添加到urls.py中即可。

第二步：编写界面和API

打开前端web工程，在views文件夹下新建登录页面login.vue 和 注册页面register.vue 文件。


**热门推荐功能的开发流程**

第一步：记录用户浏览记录

在thing.py的detail接口中记录用户的浏览记录。作为协同过滤推荐算法的基础。

第二步：推荐接口

在thing.py中编写推荐接口recommend，recommend调用UserCF.py中的推荐方法。实现推荐。

推荐的大概逻辑是：通过计算皮尔逊相关系数先找出距离相近的用户，然后获取用户评分最高的物品前几名。推荐给当前用户。

UserCF.py文件是协同过滤算法的核心文件，建议仔细研读。

第二步：编写界面和API

打开前端web工程，在views文件夹下新建recommend.vue页面，用于推荐数据的展示。

更多关于协同过滤的知识，请参考：
https://blog.csdn.net/net19880504/article/details/137772131



## 重要模块实现

### 分页实现

基于ant-design框架的a-table的分页插件。

```
// 分页变量

  const data = reactive({
    dataList: [],
    loading: false,
    keyword: '',
    selectedRowKeys: [] as any[],
    pageSize: 10,
    page: 1,
  });
  
// 分页插件
:pagination="{
          size: 'default',
          current: data.page,
          pageSize: data.pageSize,
          onChange: (current) => (data.page = current),
          showSizeChanger: false,
          showTotal: (total) => `共${total}条数据`,
        }"

```

### 请求工具实现

前端的请求工具是基于axios开发的，位于utils的http文件夹中。封装了request请求和拦截器。

```
const service: AxiosInstance = axios.create({
  // baseURL: import.meta.env.BASE_URL + '',
  baseURL: BASE_URL + '',
  timeout: 15000,
});

// axios实例拦截请求
service.interceptors.request.use(
  (config: InternalAxiosRequestConfig) => {
    config.headers.ADMINTOKEN = localStorage.getItem(ADMIN_USER_TOKEN);
    config.headers.TOKEN = localStorage.getItem(USER_TOKEN);

    return config;
  },
  (error: AxiosError) => {
    return Promise.reject(error);
  },
);

// axios实例拦截响应
service.interceptors.response.use(
  (response: AxiosResponse) => {
    if (response.status == 200) {
      if (response.data.code == 0 || response.data.code == 200) {
        return response;
      } else {
        return Promise.reject(response.data);
      }
    } else {
      return Promise.reject(response.data);
    }
  },
  // 请求失败
  (error: any) => {
    console.log(error.response.status);
    if (error.response.status == 404) {
      // todo
    } else if (error.response.status == 403) {
      // todo
    }
    return Promise.reject(error);
  },
);

```

### 权限控制模块

权限控制使用了BaseAuthentication实现的，具体代码可参考authentication.py

```
from rest_framework import exceptions
from rest_framework.authentication import BaseAuthentication
from myapp.models import User

# 接口认证
class AdminTokenAuthtication(BaseAuthentication):
    def authenticate(self, request):
        adminToken = request.META.get("HTTP_ADMINTOKEN")

        print("检查adminToken==>" + adminToken)
        users = User.objects.filter(admin_token=adminToken)
        """
        判定条件：
            1. 传了adminToken 
            2. 查到了该帐号 
            3. 该帐号是管理员或演示帐号
        """
        if not adminToken or len(users) == 0 or users[0].role == '2':
            raise exceptions.AuthenticationFailed("AUTH_FAIL_END")
        else:
            print('adminToken验证通过')


```



### 路由模块实现

前端的路由是基于vue-router框架实现的，路由文件位于src的rooter的root.js文件中。预览如下：

```
  {
    path: '/admin',
    name: 'admin',
    redirect: '/admin/thing',
    component: () => import('/@/views/admin/main.vue'),
    children: [
      { path: 'overview', name: 'overview', component: () => import('/@/views/admin/overview.vue') },
      { path: 'thing', name: 'thing', component: () => import('/@/views/admin/thing.vue') },
      { path: 'comment', name: 'comment', component: () => import('/@/views/admin/comment.vue') },
      { path: 'user', name: 'user', component: () => import('/@/views/admin/user.vue') },
      { path: 'classification', name: 'classification', component: () => import('/@/views/admin/classification.vue') },
      { path: 'ad', name: 'ad', component: () => import('/@/views/admin/ad.vue') },
      { path: 'notice', name: 'notice', component: () => import('/@/views/admin/notice.vue') },
      { path: 'loginLog', name: 'loginLog', component: () => import('/@/views/admin/login-log.vue') },
      { path: 'opLog', name: 'opLog', component: () => import('/@/views/admin/op-log.vue') },
      { path: 'errorLog', name: 'errorLog', component: () => import('/@/views/admin/error-log.vue') },
      { path: 'sysInfo', name: 'sysInfo', component: () => import('/@/views/admin/sys-info.vue') },
    ]
  },
```

### 限速功能实现

限流(Throttle)就是限制客户端对API 的调用频率，是API开发者必须要考虑的因素。比如个别客户端(比如爬虫程序)短时间发起大量请求，超过了服务器能够处理的能力，将会影响其它用户的正常使用。又或者某个接口占用数据库资源比较多，如果同一时间该接口被大量调用，服务器可能会陷入僵死状态。为了保证API服务的稳定性，并防止接口受到恶意用户的攻击，我们必须要对我们的API服务进行限流。

我们使用了django的AnonRateThrottle限流类来实现的。可以参见myapp的auth目录下的MyRateThrottle.py文件

```
class MyRateThrottle(AnonRateThrottle):
    THROTTLE_RATES = {"anon": "2/min"}  # 限流每分钟只能请求2次
```

当某个api接口需要限流的时候，只需要添加注解即可，如下所示

```
@api_view(['POST'])
@throttle_classes([MyRateThrottle]) # 限流注解
def create(request):
    serializer = CommentSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)

    return APIResponse(code=1, msg='创建失败')
```

## 常见问题

- 数据库版本有要求吗？

需要mysql 5.7以上

- 前端 npm install 失败怎么办？

使用国内镜像安装，设置命令为：
```
npm config set registry https://registry.npm.taobao.org
```

- 提示"演示账号无法操作"，怎么办？

将用户的权限提高，修改b_user表的role字段

- 如何更换后端请求地址

修改store文件夹下的constants.js文件中的BASE_URL，改成你自己的后端地址

- 如何新增页面

在views文件夹下创建新的vue文件，写入界面代码，然后在router的root.js中添加路由即可。





