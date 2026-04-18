.class Lcn/codemao/android/account/util/BBKManager$2;
.super Ljava/lang/Object;
.source "BBKManager.java"

# interfaces
.implements Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/util/BBKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/util/BBKManager;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/util/BBKManager;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 93
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    const/4 p2, 0x1

    const-string/jumbo v0, "步步高授权失败"

    const-string v1, "800037"

    if-ne p1, p2, :cond_c6

    .line 97
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class p2, Lcom/eebbk/bfc/account/auth/client/response/Response;

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eebbk/bfc/account/auth/client/response/Response;

    .line 98
    invoke-virtual {p1}, Lcom/eebbk/bfc/account/auth/client/response/Response;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 99
    invoke-virtual {p1}, Lcom/eebbk/bfc/account/auth/client/response/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/internal/LinkedTreeMap;

    const-string p2, "code"

    invoke-virtual {p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance p2, Lcn/codemao/android/account/bean/BBKLoginVO;

    invoke-direct {p2}, Lcn/codemao/android/account/bean/BBKLoginVO;-><init>()V

    .line 101
    invoke-virtual {p2, p1}, Lcn/codemao/android/account/bean/BBKLoginVO;->setCode(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/codemao/android/account/bean/BBKLoginVO;->setPid(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$100(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object p1

    iget-object p3, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p3}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcn/codemao/android/account/net/AccountRequest;->loginByBBK(Lcn/codemao/android/account/bean/BBKLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_d7

    .line 105
    :cond_52
    iget-object p2, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p2}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p2

    if-eqz p2, :cond_d7

    .line 106
    invoke-virtual {p1}, Lcom/eebbk/bfc/account/auth/client/response/Response;->getStateCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "5000"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 107
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    const-string p2, "个人中心版本不支持"

    invoke-interface {p1, v1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 108
    :cond_72
    invoke-virtual {p1}, Lcom/eebbk/bfc/account/auth/client/response/Response;->getStateCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "5002"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8b

    .line 109
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    const-string/jumbo p2, "未绑定服务"

    invoke-interface {p1, v1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 110
    :cond_8b
    invoke-virtual {p1}, Lcom/eebbk/bfc/account/auth/client/response/Response;->getStateCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1006"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a4

    .line 111
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    const-string/jumbo p2, "应用包名与clientId不匹配"

    invoke-interface {p1, v1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 112
    :cond_a4
    invoke-virtual {p1}, Lcom/eebbk/bfc/account/auth/client/response/Response;->getStateCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1001"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 113
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    const-string p2, "client_id 或 client_key 错误或不存在"

    invoke-interface {p1, v1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 115
    :cond_bc
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 120
    :cond_c6
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    if-eqz p1, :cond_d7

    .line 121
    iget-object p1, p0, Lcn/codemao/android/account/util/BBKManager$2;->this$0:Lcn/codemao/android/account/util/BBKManager;

    invoke-static {p1}, Lcn/codemao/android/account/util/BBKManager;->access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    :goto_d7
    return-void
.end method
