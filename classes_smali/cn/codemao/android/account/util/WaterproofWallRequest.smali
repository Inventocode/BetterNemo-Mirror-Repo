.class public Lcn/codemao/android/account/util/WaterproofWallRequest;
.super Ljava/lang/Object;
.source "WaterproofWallRequest.java"


# static fields
.field private static mInstance:Lcn/codemao/android/account/util/WaterproofWallRequest;


# instance fields
.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private captchaVerifyListener:Lcom/tencent/captchasdk/TCaptchaVerifyListener;

.field private dialog:Lcom/tencent/captchasdk/TCaptchaDialog;

.field private mWaterproofWallListener:Lcn/codemao/android/account/listener/WaterproofWallListener;


# direct methods
.method public static synthetic $r8$lambda$5iM8P7ywBfSi3uZULMjfrqJLBfk(Lcn/codemao/android/account/util/WaterproofWallRequest;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/WaterproofWallRequest;->handleCallback(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uh9yG22u1aLFxY1_txTzPLNKxPc(Landroid/content/DialogInterface;)V
    .registers 1

    invoke-static {p0}, Lcn/codemao/android/account/util/WaterproofWallRequest;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcn/codemao/android/account/util/WaterproofWallRequest$$ExternalSyntheticLambda0;->INSTANCE:Lcn/codemao/android/account/util/WaterproofWallRequest$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 22
    new-instance v0, Lcn/codemao/android/account/util/WaterproofWallRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/WaterproofWallRequest$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/account/util/WaterproofWallRequest;)V

    iput-object v0, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->captchaVerifyListener:Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/util/WaterproofWallRequest;
    .registers 2

    .line 26
    sget-object v0, Lcn/codemao/android/account/util/WaterproofWallRequest;->mInstance:Lcn/codemao/android/account/util/WaterproofWallRequest;

    if-nez v0, :cond_17

    .line 27
    const-class v0, Lcn/codemao/android/account/util/WaterproofWallRequest;

    monitor-enter v0

    .line 28
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/util/WaterproofWallRequest;->mInstance:Lcn/codemao/android/account/util/WaterproofWallRequest;

    if-nez v1, :cond_12

    .line 29
    new-instance v1, Lcn/codemao/android/account/util/WaterproofWallRequest;

    invoke-direct {v1}, Lcn/codemao/android/account/util/WaterproofWallRequest;-><init>()V

    sput-object v1, Lcn/codemao/android/account/util/WaterproofWallRequest;->mInstance:Lcn/codemao/android/account/util/WaterproofWallRequest;

    .line 31
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 33
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/util/WaterproofWallRequest;->mInstance:Lcn/codemao/android/account/util/WaterproofWallRequest;

    return-object v0
.end method

.method private handleCallback(Lorg/json/JSONObject;)V
    .registers 7

    const-string/jumbo v0, "验证码加载错误"

    const-string v1, "800004"

    :try_start_5
    const-string v2, "ret"

    .line 54
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCallback: ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    if-nez v2, :cond_65

    const-string v0, "ticket"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "randstr"

    .line 60
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appid"

    .line 61
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    new-instance v4, Lcn/codemao/android/account/bean/TencentCaptchaVO;

    invoke-direct {v4, v0, v2, v3}, Lcn/codemao/android/account/bean/TencentCaptchaVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "验证成功:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCallback: info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->mWaterproofWallListener:Lcn/codemao/android/account/listener/WaterproofWallListener;

    if-eqz p1, :cond_90

    .line 66
    invoke-interface {p1, v4}, Lcn/codemao/android/account/listener/WaterproofWallListener;->onResponse(Lcn/codemao/android/account/bean/TencentCaptchaVO;)V

    goto :goto_90

    :cond_65
    const/16 p1, -0x3e9

    if-ne v2, p1, :cond_74

    .line 68
    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->mWaterproofWallListener:Lcn/codemao/android/account/listener/WaterproofWallListener;

    if-eqz p1, :cond_90

    .line 70
    invoke-interface {p1, v1, v0}, Lcn/codemao/android/account/listener/WaterproofWallListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :cond_74
    const-string/jumbo p1, "用戶(可能)关闭验证码未验证成功"

    .line 74
    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7a} :catch_7b

    goto :goto_90

    :catch_7b
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "解析错误"

    .line 80
    invoke-static {v0, p1}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->mWaterproofWallListener:Lcn/codemao/android/account/listener/WaterproofWallListener;

    if-eqz v0, :cond_90

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcn/codemao/android/account/listener/WaterproofWallListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    :goto_90
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public getWaterproofWall(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/WaterproofWallListener;)V
    .registers 6

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p3, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->mWaterproofWallListener:Lcn/codemao/android/account/listener/WaterproofWallListener;

    .line 40
    :try_start_7
    iget-object p1, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->dialog:Lcom/tencent/captchasdk/TCaptchaDialog;

    if-eqz p1, :cond_e

    .line 41
    invoke-virtual {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->dismiss()V

    .line 44
    :cond_e
    new-instance p1, Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    iget-object v0, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->captchaVerifyListener:Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    const/4 v1, 0x0

    invoke-direct {p1, p3, p2, v0, v1}, Lcom/tencent/captchasdk/TCaptchaDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/captchasdk/TCaptchaVerifyListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->dialog:Lcom/tencent/captchasdk/TCaptchaDialog;

    .line 46
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->dialog:Lcom/tencent/captchasdk/TCaptchaDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 88
    invoke-virtual {v0}, Lcom/tencent/captchasdk/TCaptchaDialog;->dismiss()V

    .line 89
    iput-object v1, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->dialog:Lcom/tencent/captchasdk/TCaptchaDialog;

    .line 91
    :cond_a
    iput-object v1, p0, Lcn/codemao/android/account/util/WaterproofWallRequest;->mWaterproofWallListener:Lcn/codemao/android/account/listener/WaterproofWallListener;

    return-void
.end method
