.class Lcn/codemao/android/account/util/QQManager$1;
.super Ljava/lang/Object;
.source "QQManager.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/util/QQManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/util/QQManager;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/util/QQManager;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    const-string v0, "onCancel"

    .line 129
    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 131
    iget-object v0, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    const-string v1, "800030"

    const-string v2, "QQ授权取消"

    invoke-interface {v0, v1, v2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 86
    check-cast p1, Lorg/json/JSONObject;

    .line 87
    iget-object v0, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/QQManager;->access$000(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v0}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_95

    :cond_14
    :try_start_14
    const-string v0, "access_token"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    .line 90
    iget-object v1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v1}, Lcn/codemao/android/account/util/QQManager;->access$200(Lcn/codemao/android/account/util/QQManager;)I

    move-result v1

    if-ne v0, v1, :cond_53

    .line 91
    new-instance v0, Lcn/codemao/android/account/bean/QQLoginVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/QQLoginVO;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/QQLoginVO;->setAccess_token(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getQqAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/QQLoginVO;->setApp_id(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/QQLoginVO;->setPid(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/QQManager;->access$300(Lcn/codemao/android/account/util/QQManager;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/QQLoginVO;->setAgreementIds(Ljava/util/List;)V

    .line 98
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/QQManager;->access$000(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object p1

    iget-object v1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v1}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/codemao/android/account/net/AccountRequest;->loginByQQ(Lcn/codemao/android/account/bean/QQLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_95

    :cond_53
    const/16 v0, 0x65

    .line 99
    iget-object v1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v1}, Lcn/codemao/android/account/util/QQManager;->access$200(Lcn/codemao/android/account/util/QQManager;)I

    move-result v1

    if-ne v0, v1, :cond_95

    .line 100
    new-instance v0, Lcn/codemao/android/account/bean/QQBindVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/QQBindVO;-><init>()V

    .line 101
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/QQBindVO;->setAccess_token(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getQqAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/QQBindVO;->setApp_id(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/QQManager;->access$000(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object p1

    iget-object v1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {v1}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/codemao/android/account/net/AccountRequest;->bindQQ(Lcn/codemao/android/account/bean/QQBindVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_7b} :catch_7c

    goto :goto_95

    :catch_7c
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 108
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    const-string v0, "800031"

    const-string v1, "QQ请求失败"

    invoke-interface {p1, v0, v1}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .registers 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uiError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 120
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager$1;->this$0:Lcn/codemao/android/account/util/QQManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/QQManager;->access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    const-string v0, "800031"

    const-string v1, "QQ请求失败"

    invoke-interface {p1, v0, v1}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public onWarning(I)V
    .registers 2

    return-void
.end method
