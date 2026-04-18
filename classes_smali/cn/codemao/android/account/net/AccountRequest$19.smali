.class Lcn/codemao/android/account/net/AccountRequest$19;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->loginByQQ(Lcn/codemao/android/account/bean/QQLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Lcn/codemao/android/account/bean/QQLoginResultVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;


# direct methods
.method public static synthetic $r8$lambda$u39UHXwjxe2Xg8jAlnCd0nvcZ5U(Lcn/codemao/android/account/net/AccountRequest$19;Lcn/codemao/android/account/bean/QQLoginResultVO;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcn/codemao/android/account/net/AccountRequest$19;->lambda$onSuccess$0(Lcn/codemao/android/account/bean/QQLoginResultVO;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method

.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4

    .line 380
    iput-object p3, p0, Lcn/codemao/android/account/net/AccountRequest$19;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcn/codemao/android/account/bean/QQLoginResultVO;Lretrofit2/Response;Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 4

    .line 386
    invoke-static {p1, p3}, Lcn/codemao/android/account/net/AccountRequest;->access$000(Ljava/lang/Object;Lcn/codemao/android/account/bean/TokenRenewalVO;)Ljava/lang/Object;

    .line 387
    invoke-super {p0, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 380
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/AccountRequest$19;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/QQLoginResultVO;",
            ">;)V"
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/QQLoginResultVO;

    if-eqz v0, :cond_1d

    .line 384
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/QQLoginResultVO;->getExisted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 385
    new-instance v1, Lcn/codemao/android/account/net/AccountRequest$19$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcn/codemao/android/account/net/AccountRequest$19$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/net/AccountRequest$19;Lcn/codemao/android/account/bean/QQLoginResultVO;Lretrofit2/Response;)V

    iget-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$19;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {v1, p1}, Lcn/codemao/android/account/net/AccountRequest;->tokenRenewal(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_20

    .line 390
    :cond_1d
    invoke-super {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    :goto_20
    return-void
.end method
