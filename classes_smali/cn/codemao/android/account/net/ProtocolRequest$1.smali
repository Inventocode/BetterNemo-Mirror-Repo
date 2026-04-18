.class Lcn/codemao/android/account/net/ProtocolRequest$1;
.super Lcn/codemao/android/account/rx/CommonSubscriber;
.source "ProtocolRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/ProtocolRequest;->requestProtocols(ZLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/codemao/android/account/rx/CommonSubscriber<",
        "Ljava/util/List<",
        "Lcn/codemao/android/account/bean/ProtocolInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

.field final synthetic val$useDefaultWhenFail:Z


# direct methods
.method constructor <init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;ZLcn/codemao/android/account/listener/NetSuccessResultListener;)V
    .registers 5

    .line 47
    iput-boolean p3, p0, Lcn/codemao/android/account/net/ProtocolRequest$1;->val$useDefaultWhenFail:Z

    iput-object p4, p0, Lcn/codemao/android/account/net/ProtocolRequest$1;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 50
    iget-boolean v0, p0, Lcn/codemao/android/account/net/ProtocolRequest$1;->val$useDefaultWhenFail:Z

    if-eqz v0, :cond_12

    .line 52
    iget-object p1, p0, Lcn/codemao/android/account/net/ProtocolRequest$1;->val$successResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    invoke-static {}, Lcn/codemao/android/account/net/ProtocolRequest;->access$000()Lcn/codemao/android/account/bean/ProtocolInfo;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_12
    invoke-super {p0, p1, p2}, Lcn/codemao/android/account/rx/CommonSubscriber;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "onFailure: requestTicket1"

    .line 56
    invoke-static {p1}, Lcn/codemao/android/account/util/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method
