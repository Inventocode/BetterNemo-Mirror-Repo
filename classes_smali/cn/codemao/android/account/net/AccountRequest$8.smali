.class Lcn/codemao/android/account/net/AccountRequest$8;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->registerByPhone(Lcn/codemao/android/account/bean/CodeRegisterVO;Ljava/lang/Boolean;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field final synthetic val$isLogin:Ljava/lang/Boolean;

.field final synthetic val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;


# direct methods
.method public static synthetic $r8$lambda$tXbu9lFd-AZInv4AR9jniuVqklk(Lcn/codemao/android/account/net/AccountRequest$8;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/net/AccountRequest$8;->lambda$onSuccess$0(Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method

.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Ljava/lang/Boolean;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;)V
    .registers 6

    .line 194
    iput-object p3, p0, Lcn/codemao/android/account/net/AccountRequest$8;->val$isLogin:Ljava/lang/Boolean;

    iput-object p4, p0, Lcn/codemao/android/account/net/AccountRequest$8;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    iput-object p5, p0, Lcn/codemao/android/account/net/AccountRequest$8;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 4

    .line 199
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/codemao/android/account/net/AccountRequest;->access$000(Ljava/lang/Object;Lcn/codemao/android/account/bean/TokenRenewalVO;)Ljava/lang/Object;

    .line 200
    invoke-super {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 194
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/AccountRequest$8;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/CodeLoginResultVO;",
            ">;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$8;->val$isLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 198
    new-instance v0, Lcn/codemao/android/account/net/AccountRequest$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/account/net/AccountRequest$8$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/net/AccountRequest$8;Lretrofit2/Response;)V

    iget-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$8;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {v0, p1}, Lcn/codemao/android/account/net/AccountRequest;->tokenRenewal(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_20

    .line 203
    :cond_13
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clear()V

    .line 204
    iget-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$8;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    new-instance v0, Lcn/codemao/android/account/bean/CodeLoginResultVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/CodeLoginResultVO;-><init>()V

    invoke-interface {p1, v0}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    :goto_20
    return-void
.end method
