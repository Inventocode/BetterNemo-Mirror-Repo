.class Lcn/codemao/android/account/net/AccountRequest$56;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/AccountRequest;->findAccountAppLoginDeviceList(ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Lcn/codemao/android/account/bean/BindDeviceListVO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 3

    .line 950
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method
