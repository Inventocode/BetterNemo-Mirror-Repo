.class public Lcn/codemao/android/account/wxapi/WechatActivity;
.super Landroid/app/Activity;
.source "WechatActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistActivity"


# instance fields
.field private mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/wxapi/WechatActivity;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcn/codemao/android/account/wxapi/WechatActivity;->mAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .registers 2

    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .registers 8

    .line 62
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/WechatManager;->getNetSuccessResultListener()Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    .line 63
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/util/WechatManager;->getNetFailResultListener()Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1c

    const/4 v5, 0x2

    if-eq v2, v5, :cond_22

    goto :goto_21

    :cond_1c
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    const/4 v3, 0x1

    :cond_21
    :goto_21
    const/4 v4, 0x0

    .line 77
    :cond_22
    iget v2, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    const/4 v5, -0x2

    if-eq v2, v5, :cond_cb

    if-eqz v2, :cond_49

    if-eqz v3, :cond_35

    if-eqz v1, :cond_35

    const-string p1, "800033"

    const-string/jumbo v0, "微信授权失败"

    .line 120
    invoke-interface {v1, p1, v0}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    if-eqz v4, :cond_e9

    .line 125
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/util/WechatManager;->getIshareResult()Lcn/codemao/android/share/interfaces/IshareResult;

    move-result-object p1

    if-eqz p1, :cond_e9

    const-string/jumbo v0, "微信分享失败"

    .line 127
    invoke-interface {p1, v0}, Lcn/codemao/android/share/interfaces/IshareResult;->onFailure(Ljava/lang/String;)V

    goto/16 :goto_e9

    :cond_49
    if-eqz v3, :cond_b8

    .line 80
    new-instance v2, Lcn/codemao/android/account/event/WxRespEvent;

    invoke-direct {v2, p1}, Lcn/codemao/android/account/event/WxRespEvent;-><init>(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    .line 81
    invoke-virtual {v2}, Lcn/codemao/android/account/event/WxRespEvent;->isAuth()Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-virtual {v2}, Lcn/codemao/android/account/event/WxRespEvent;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_b8

    const-string p1, "test"

    .line 82
    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    const/16 p1, 0x6e

    .line 83
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/account/util/WechatManager;->getType()I

    move-result v3

    if-ne p1, v3, :cond_96

    .line 84
    new-instance p1, Lcn/codemao/android/account/bean/WechatLoginVO;

    invoke-direct {p1}, Lcn/codemao/android/account/bean/WechatLoginVO;-><init>()V

    .line 85
    invoke-virtual {v2}, Lcn/codemao/android/account/event/WxRespEvent;->code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/codemao/android/account/bean/WechatLoginVO;->setCode(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/codemao/android/account/bean/WechatLoginVO;->setApp_id(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/codemao/android/account/bean/WechatLoginVO;->setPid(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/account/util/WechatManager;->getAgreeProtocolIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/codemao/android/account/bean/WechatLoginVO;->setAgreeProtocolIds(Ljava/util/List;)V

    .line 89
    invoke-static {p1, v0, v1}, Lcn/codemao/android/account/net/AccountRequest;->loginByWechat(Lcn/codemao/android/account/bean/WechatLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_b8

    :cond_96
    const/16 p1, 0x6f

    .line 90
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/account/util/WechatManager;->getType()I

    move-result v3

    if-ne p1, v3, :cond_b8

    .line 91
    new-instance p1, Lcn/codemao/android/account/bean/WechatBindVO;

    invoke-direct {p1}, Lcn/codemao/android/account/bean/WechatBindVO;-><init>()V

    .line 92
    invoke-virtual {v2}, Lcn/codemao/android/account/event/WxRespEvent;->code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/codemao/android/account/bean/WechatBindVO;->setCode(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/codemao/android/account/bean/WechatBindVO;->setApp_id(Ljava/lang/String;)V

    .line 94
    invoke-static {p1, v0, v1}, Lcn/codemao/android/account/net/AccountRequest;->bindWechat(Lcn/codemao/android/account/bean/WechatBindVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    :cond_b8
    :goto_b8
    if-eqz v4, :cond_e9

    .line 99
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/util/WechatManager;->getIshareResult()Lcn/codemao/android/share/interfaces/IshareResult;

    move-result-object p1

    if-eqz p1, :cond_e9

    const-string/jumbo v0, "微信分享成功"

    .line 101
    invoke-interface {p1, v0}, Lcn/codemao/android/share/interfaces/IshareResult;->onSuccess(Ljava/lang/String;)V

    goto :goto_e9

    :cond_cb
    if-eqz v3, :cond_d7

    if-eqz v1, :cond_d7

    const-string p1, "800032"

    const-string/jumbo v0, "微信授权取消"

    .line 107
    invoke-interface {v1, p1, v0}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    if-eqz v4, :cond_e9

    .line 112
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/util/WechatManager;->getIshareResult()Lcn/codemao/android/share/interfaces/IshareResult;

    move-result-object p1

    if-eqz p1, :cond_e9

    const-string/jumbo v0, "微信分享取消"

    .line 114
    invoke-interface {p1, v0}, Lcn/codemao/android/share/interfaces/IshareResult;->onCancel(Ljava/lang/String;)V

    .line 132
    :cond_e9
    :goto_e9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 133
    invoke-static {}, Lcn/codemao/android/account/util/WechatManager;->getInstance()Lcn/codemao/android/account/util/WechatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/util/WechatManager;->clear()V

    return-void
.end method
