.class Lcn/codemao/android/account/net/AccountRequest$43;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->tokenRenewal(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Lcn/codemao/android/account/bean/TokenRenewalVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field final synthetic val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3

    .line 727
    iput-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$43;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p2, p0, Lcn/codemao/android/account/net/AccountRequest$43;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-direct {p0}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 737
    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$43;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    if-eqz v0, :cond_7

    .line 738
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string p1, "onFailure: tokenRenewal"

    .line 740
    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 727
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/AccountRequest$43;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/TokenRenewalVO;",
            ">;)V"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$43;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    if-eqz v0, :cond_d

    .line 731
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/account/bean/TokenRenewalVO;

    invoke-interface {v0, p1}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
