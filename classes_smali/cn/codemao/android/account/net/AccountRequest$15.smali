.class Lcn/codemao/android/account/net/AccountRequest$15;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->updateInformation(Lcn/codemao/android/account/bean/UpdateInformationVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
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

    .line 323
    iput-object p3, p0, Lcn/codemao/android/account/net/AccountRequest$15;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iput-object p4, p0, Lcn/codemao/android/account/net/AccountRequest$15;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 323
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/AccountRequest$15;->onSuccess(Lretrofit2/Response;)V

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

    .line 326
    iget-object p1, p0, Lcn/codemao/android/account/net/AccountRequest$15;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v0, p0, Lcn/codemao/android/account/net/AccountRequest$15;->val$failResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {p1, v0}, Lcn/codemao/android/account/net/AccountRequest;->getUserInfoProfile(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
