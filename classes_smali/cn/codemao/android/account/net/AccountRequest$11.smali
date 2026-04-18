.class Lcn/codemao/android/account/net/AccountRequest$11;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->updateUsername(Lcn/codemao/android/account/bean/UsernameVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field final synthetic val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5

    .line 271
    iput-object p3, p0, Lcn/codemao/android/account/net/AccountRequest$11;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p4, p0, Lcn/codemao/android/account/net/AccountRequest$11;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 279
    invoke-super {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onFailure: updateUsername"

    .line 280
    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 271
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/AccountRequest$11;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 274
    iget-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$11;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$11;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {p1, v0}, Lcn/codemao/android/account/net/AccountRequest;->getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
