.class Lcn/codemao/android/account/net/AccountRequest$7;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->requestTicket(Lcn/codemao/android/account/bean/TencentCaptchaVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3

    .line 178
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 181
    invoke-super {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onFailure: requestTicket2"

    .line 182
    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method
