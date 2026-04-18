.class Lcn/codemao/android/account/net/AccountRequest$41;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Lcn/codemao/android/account/bean/AuthResultVO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3

    .line 630
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 642
    invoke-super {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onFailure: getPrivacyInfo"

    .line 643
    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 630
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/AccountRequest$41;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onSuccess(Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcn/codemao/android/account/bean/AuthResultVO;",
            ">;)V"
        }
    .end annotation

    .line 633
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 634
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/AuthResultVO;

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/AuthResultVO;->getPhone_number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setPhoneNumber(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/AuthResultVO;

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/AuthResultVO;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setEmail(Ljava/lang/String;)V

    .line 637
    :cond_20
    invoke-super {p0, p1}, Lcn/codemao/android/account/rx/CommonSubscriber;->onSuccess(Lretrofit2/Response;)V

    return-void
.end method
