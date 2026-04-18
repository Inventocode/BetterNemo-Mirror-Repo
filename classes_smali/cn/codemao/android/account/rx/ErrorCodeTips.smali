.class public Lcn/codemao/android/account/rx/ErrorCodeTips;
.super Ljava/lang/Object;
.source "ErrorCodeTips.java"


# static fields
.field private static volatile instance:Lcn/codemao/android/account/rx/ErrorCodeTips;


# instance fields
.field private sMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Lcn/codemao/android/account/rx/ErrorCodeTips;->initTips()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/rx/ErrorCodeTips;
    .registers 2

    .line 20
    sget-object v0, Lcn/codemao/android/account/rx/ErrorCodeTips;->instance:Lcn/codemao/android/account/rx/ErrorCodeTips;

    if-nez v0, :cond_17

    .line 21
    const-class v0, Lcn/codemao/android/account/rx/ErrorCodeTips;

    monitor-enter v0

    .line 22
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/rx/ErrorCodeTips;->instance:Lcn/codemao/android/account/rx/ErrorCodeTips;

    if-nez v1, :cond_12

    .line 23
    new-instance v1, Lcn/codemao/android/account/rx/ErrorCodeTips;

    invoke-direct {v1}, Lcn/codemao/android/account/rx/ErrorCodeTips;-><init>()V

    sput-object v1, Lcn/codemao/android/account/rx/ErrorCodeTips;->instance:Lcn/codemao/android/account/rx/ErrorCodeTips;

    .line 25
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 28
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/rx/ErrorCodeTips;->instance:Lcn/codemao/android/account/rx/ErrorCodeTips;

    return-object v0
.end method

.method private initTips()V
    .registers 6

    .line 37
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "A_0"

    const-string v2, "The error controller caught a non-Catastrophe error."

    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "A_1"

    const-string v2, "Could not get configuration for Tiger"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "A_2"

    const-string v2, "Could not parse string into json"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "A_3"

    const-string v2, "IP address was found in Tiger\'s block list"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "A_4"

    const-string v2, "Could not parse xml into JavaScript object"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "A_5"

    const-string/jumbo v2, "无效的用户输入"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "A_6"

    const-string v2, "ip not in whitelist"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_0"

    const-string/jumbo v2, "用户不存在"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_1"

    const-string/jumbo v3, "密码不正确"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_2"

    const-string/jumbo v3, "用户不能重复设置初始密码"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_3"

    const-string/jumbo v3, "用户不能重复更新用户名"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_4"

    const-string/jumbo v3, "存在相同的用户名"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_5"

    const-string/jumbo v3, "用户需要绑定手机号或邮箱"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_6"

    const-string/jumbo v3, "用户已经绑定手机号"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_7"

    const-string/jumbo v3, "手机号已经被绑定"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_8"

    const-string/jumbo v3, "旧手机号错误"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_9"

    const-string/jumbo v3, "手机号未被注册"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_10"

    const-string/jumbo v3, "用户不能绑定相同的旧手机号"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_11"

    const-string/jumbo v4, "发送邮件太频繁"

    invoke-virtual {v0, v1, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_12"

    const-string/jumbo v4, "无效的pid"

    invoke-virtual {v0, v1, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_13"

    const-string/jumbo v4, "邮箱已经被注册"

    invoke-virtual {v0, v1, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_14"

    const-string/jumbo v4, "请用当前绑定的手机号发送验证码"

    invoke-virtual {v0, v1, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_15"

    const-string/jumbo v4, "邮箱验证码已经失效"

    invoke-virtual {v0, v1, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_16"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_17"

    const-string/jumbo v3, "错误的名字"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_18"

    const-string v3, "id不是数组"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_19"

    const-string v3, "id为空"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_20"

    const-string v3, "id不是数字或字符串"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_21"

    const-string/jumbo v3, "无效的签名"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_22"

    const-string/jumbo v3, "存在相同的昵称"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_23"

    const-string/jumbo v3, "无效的QQ appid"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_24"

    const-string/jumbo v3, "无效的选择区域"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_25"

    const-string v3, "invalid_toB_code"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_26"

    const-string/jumbo v3, "无效的验证码"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_27"

    const-string/jumbo v3, "邮箱未被注册"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_28"

    const-string/jumbo v3, "邮箱查询"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_29"

    const-string/jumbo v3, "邮箱字段"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_30"

    const-string v3, "over_max_batch_registeration_limit_in_one_time"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_31"

    const-string v3, "achieved_registration_limit"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_32"

    const-string v3, "current_product_doses_not_exist_code_to_token_url"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_33"

    const-string/jumbo v3, "微信或者QQ账号已经被他人使用"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_34"

    const-string/jumbo v3, "微信或者QQ账号已经被你使用"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_35"

    const-string v3, "platform source error"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_36"

    const-string v3, "不能解绑"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_37"

    const-string v3, "unionid为空"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_38"

    const-string/jumbo v3, "账号已经被绑定"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_39"

    const-string v3, "不正确的token"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC_40"

    const-string/jumbo v3, "没有找到该appId"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_0"

    const-string/jumbo v3, "无效的手机号"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_1"

    const-string/jumbo v3, "验证码发送太频繁"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_2"

    const-string/jumbo v3, "用户短时间内发送了太多短信请求"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_3"

    const-string/jumbo v3, "发送验证码失败"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_4"

    const-string/jumbo v3, "用户提供的短信代码响应失败"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_5"

    const-string/jumbo v3, "用户已存在"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_6"

    const-string/jumbo v3, "老师不存在"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_7"

    const-string/jumbo v3, "管理员不存在"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_8"

    const-string/jumbo v3, "用户不存在或者密码不正确"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_9"

    const-string/jumbo v3, "重置验证码不对或者已过期"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_10"

    const-string/jumbo v3, "账号密码需要"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_11"

    const-string/jumbo v3, "获取验证码失败"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_12"

    const-string/jumbo v3, "获取JiLinEdu token失败"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_13"

    const-string/jumbo v3, "验证JiLinEdu用户sessionId失败"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_14"

    const-string/jumbo v3, "获取JiLinEdu用户信息失败"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_15"

    const-string/jumbo v3, "检查JiLinEdu ticket失败"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_16"

    const-string/jumbo v3, "手机号已被使用"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_17"

    const-string/jumbo v3, "手机号已经被绑定账号"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_18"

    const-string/jumbo v3, "无效的用户"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_19"

    const-string/jumbo v3, "根不存在"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "B_20"

    const-string/jumbo v3, "无法得到noahedu用户"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "E_0"

    const-string/jumbo v3, "没有授权的token"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "E_1"

    const-string/jumbo v3, "登录已经过期"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "E_2"

    const-string/jumbo v3, "用户类型无效"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "E_3"

    const-string/jumbo v3, "用户没有权限"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "E_4"

    const-string/jumbo v3, "用户jwt已经满期"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "E_5"

    const-string/jumbo v3, "用户未被授权"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "E_6"

    const-string/jumbo v3, "公共路由和定义的用户类型"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_0"

    const-string/jumbo v3, "手机号已注册"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_1"

    const-string/jumbo v3, "手机号暂未注册"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_2"

    const-string/jumbo v3, "用户不存在或密码错误"

    invoke-virtual {v0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_3"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_4"

    const-string v2, "不能设置未来的日期"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_5"

    const-string v2, "不能重复设置用户名"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_6"

    const-string/jumbo v2, "该用户名已存在"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_7"

    const-string/jumbo v2, "用户需要绑定手机"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_8"

    const-string/jumbo v2, "需要用当前绑定手机发验证码"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_9"

    const-string/jumbo v2, "错误的旧密码"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_10"

    const-string/jumbo v2, "密码不一致"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_11"

    const-string/jumbo v2, "初始密码只能设置一次"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_12"

    const-string/jumbo v2, "需存在主账号(至少包含邮箱、用户名、手机其一)"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_13"

    const-string/jumbo v2, "校验码验证失败"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_14"

    const-string/jumbo v2, "用户已经绑定过手机"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_15"

    const-string/jumbo v2, "原手机号不正确"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_16"

    const-string/jumbo v2, "非法操作"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_17"

    const-string v2, "不能绑定原手机号"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_18"

    const-string v2, "不合法的oauth_ticket"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_19"

    const-string v2, "不合法的授权类别"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_20"

    const-string/jumbo v2, "第三方授权账号已被绑定"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_21"

    const-string/jumbo v2, "账号已经绑定同类型授权账号"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_22"

    const-string/jumbo v2, "请先绑定手机或者设置用户名及密码"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_23"

    const-string/jumbo v2, "发送验证码过于频繁"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_24"

    const-string v2, "不合法的pid"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_25"

    const-string/jumbo v2, "已经存在相同的昵称"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    const-string v1, "AC3_26"

    const-string/jumbo v2, "该手机号已被其他帐号绑定"

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTip(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 32
    iget-object v0, p0, Lcn/codemao/android/account/rx/ErrorCodeTips;->sMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_c

    const-string p1, ""

    :cond_c
    return-object p1
.end method
