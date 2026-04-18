.class Lcn/codemao/android/account/util/WechatManager$1;
.super Ljava/lang/Object;
.source "WechatManager.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/diffdev/OAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/util/WechatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/util/WechatManager;


# direct methods
.method public static synthetic $r8$lambda$FUGxcq5s3hS9VRieHiONKpC9u00(Lcn/codemao/android/account/util/WechatManager$1;Lcn/codemao/android/account/bean/WechatLoginResultVO;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/WechatManager$1;->lambda$onAuthFinish$0(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IWgJD05PiEvTRPyxqLMkwVXOgFk(Lcn/codemao/android/account/util/WechatManager$1;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/WechatManager$1;->lambda$onAuthFinish$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ylb0XzbA8cKHLDvyD-tOo1nYU6I(Lcn/codemao/android/account/util/WechatManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/util/WechatManager$1;->lambda$onAuthFinish$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQyG9Xsm19wSBUmEQT7Mg56XNfY(Lcn/codemao/android/account/util/WechatManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/util/WechatManager$1;->lambda$onAuthFinish$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcn/codemao/android/account/util/WechatManager;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAuthFinish$0(Lcn/codemao/android/account/bean/WechatLoginResultVO;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 180
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$200(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 182
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$200(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$onAuthFinish$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$100(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 188
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$100(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$onAuthFinish$2(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 200
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$200(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 201
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$200(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$onAuthFinish$3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 204
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$100(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 205
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$100(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$000(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/WechatCodeListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/WechatManager;->access$000(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/WechatCodeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/codemao/android/account/listener/WechatCodeListener;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;)V

    .line 173
    sget-object v0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    if-eq v0, p1, :cond_17

    return-void

    .line 174
    :cond_17
    iget-object p1, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    iget-boolean p1, p1, Lcn/codemao/android/account/util/WechatManager;->isLoginScan:Z

    if-eqz p1, :cond_41

    .line 175
    new-instance p1, Lcn/codemao/android/account/bean/WechatLoginVO;

    invoke-direct {p1}, Lcn/codemao/android/account/bean/WechatLoginVO;-><init>()V

    .line 176
    invoke-virtual {p1, p2}, Lcn/codemao/android/account/bean/WechatLoginVO;->setCode(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/bean/WechatLoginVO;->setApp_id(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/bean/WechatLoginVO;->setPid(Ljava/lang/String;)V

    .line 179
    new-instance p2, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda2;-><init>(Lcn/codemao/android/account/util/WechatManager$1;)V

    new-instance v0, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/util/WechatManager$1;)V

    invoke-static {p1, p2, v0}, Lcn/codemao/android/account/net/AccountRequest;->loginByWechat(Lcn/codemao/android/account/bean/WechatLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_5d

    .line 191
    :cond_41
    new-instance p1, Lcn/codemao/android/account/bean/WechatBindVO;

    invoke-direct {p1}, Lcn/codemao/android/account/bean/WechatBindVO;-><init>()V

    .line 192
    invoke-virtual {p1, p2}, Lcn/codemao/android/account/bean/WechatBindVO;->setCode(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/bean/WechatBindVO;->setApp_id(Ljava/lang/String;)V

    .line 199
    new-instance p2, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda3;-><init>(Lcn/codemao/android/account/util/WechatManager$1;)V

    new-instance v0, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/WechatManager$1$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/account/util/WechatManager$1;)V

    invoke-static {p1, p2, v0}, Lcn/codemao/android/account/net/AccountRequest;->bindWechat(Lcn/codemao/android/account/bean/WechatBindVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    :goto_5d
    return-void
.end method

.method public onAuthGotQrcode(Ljava/lang/String;[B)V
    .registers 3

    .line 158
    iget-object p1, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/WechatManager;->access$000(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/WechatCodeListener;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 159
    :cond_9
    iget-object p1, p0, Lcn/codemao/android/account/util/WechatManager$1;->this$0:Lcn/codemao/android/account/util/WechatManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/WechatManager;->access$000(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/WechatCodeListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/codemao/android/account/listener/WechatCodeListener;->onAuthGotQrcode([B)V

    return-void
.end method

.method public onQrcodeScanned()V
    .registers 1

    return-void
.end method
