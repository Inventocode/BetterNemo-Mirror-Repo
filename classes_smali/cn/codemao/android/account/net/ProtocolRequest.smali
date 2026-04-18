.class public Lcn/codemao/android/account/net/ProtocolRequest;
.super Ljava/lang/Object;
.source "ProtocolRequest.java"


# static fields
.field private static final defaultProtocol:Lcn/codemao/android/account/bean/ProtocolInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcn/codemao/android/account/bean/ProtocolInfo;

    const-string v1, "-1"

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Lcn/codemao/android/account/bean/ProtocolInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/codemao/android/account/net/ProtocolRequest;->defaultProtocol:Lcn/codemao/android/account/bean/ProtocolInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcn/codemao/android/account/bean/ProtocolInfo;
    .registers 1

    .line 26
    sget-object v0, Lcn/codemao/android/account/net/ProtocolRequest;->defaultProtocol:Lcn/codemao/android/account/bean/ProtocolInfo;

    return-object v0
.end method

.method public static requestProtocolList(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/ProtocolsListResult;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "userserviceProtocol"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "privacyProtocol"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "childrenPrivacyProtectProtocol"

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcn/codemao/android/account/bean/ProtocolsListRequest;

    invoke-direct {v1}, Lcn/codemao/android/account/bean/ProtocolsListRequest;-><init>()V

    .line 105
    invoke-virtual {v1, p0}, Lcn/codemao/android/account/bean/ProtocolsListRequest;->setPid(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v0}, Lcn/codemao/android/account/bean/ProtocolsListRequest;->setCodeList(Ljava/util/List;)V

    .line 107
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/net/HttpControl;->getProtocolApi()Lcn/codemao/android/account/net/ProtocolApi;

    move-result-object p0

    invoke-interface {p0, v1}, Lcn/codemao/android/account/net/ProtocolApi;->getProtocolList(Lcn/codemao/android/account/bean/ProtocolsListRequest;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 108
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 109
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/ProtocolRequest$4;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/ProtocolRequest$4;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 110
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static requestProtocols(ZLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/net/HttpControl;->getProtocolApi()Lcn/codemao/android/account/net/ProtocolApi;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/account/net/ProtocolApi;->getProtocolList()Lio/reactivex/Flowable;

    move-result-object v0

    .line 45
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 46
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/ProtocolRequest$1;

    invoke-direct {v1, p1, p2, p0, p1}, Lcn/codemao/android/account/net/ProtocolRequest$1;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;ZLcn/codemao/android/account/listener/NetSuccessResultListener;)V

    .line 47
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static requestProtocolsStatus(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/account/net/HttpControl;->getProtocolApi()Lcn/codemao/android/account/net/ProtocolApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/codemao/android/account/net/ProtocolApi;->getProtocolsStatus(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 71
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 72
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/account/net/ProtocolRequest$2;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/net/ProtocolRequest$2;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static signProtocols(Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;>;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Lcn/codemao/android/account/bean/SignProtocolsRequest;

    invoke-direct {v1}, Lcn/codemao/android/account/bean/SignProtocolsRequest;-><init>()V

    .line 90
    invoke-virtual {v1, p0}, Lcn/codemao/android/account/bean/SignProtocolsRequest;->setAgreementIds(Ljava/util/List;)V

    .line 91
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/net/HttpControl;->getProtocolApi()Lcn/codemao/android/account/net/ProtocolApi;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcn/codemao/android/account/net/ProtocolApi;->signProtocols(Ljava/lang/String;Lcn/codemao/android/account/bean/SignProtocolsRequest;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 92
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 93
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p0

    new-instance v0, Lcn/codemao/android/account/net/ProtocolRequest$3;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/account/net/ProtocolRequest$3;-><init>(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 94
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->subscribeWith(Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    return-object p0
.end method
