.class public Lcom/codemao/nemo/http/DiscoveryNetUtil;
.super Lcom/codemao/nemo/http/NetUtils;
.source "DiscoveryNetUtil.java"


# instance fields
.field private context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

.field private discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Lcom/codemao/nemo/http/NetUtils;-><init>()V

    .line 60
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    iput-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    return-void
.end method

.method public constructor <init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/http/NetUtils;-><init>()V

    .line 55
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    iput-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    .line 56
    iput-object p1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    return-void
.end method

.method public static isVerified(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;ILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;",
            "I",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1480
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    .line 1481
    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->isVerified(I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1482
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p0, :cond_22

    .line 1484
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1486
    :cond_22
    new-instance p0, Lcom/codemao/nemo/http/DiscoveryNetUtil$54;

    invoke-direct {p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$54;-><init>(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public cancelCollectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->cancelCollectWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 624
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 625
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 626
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 628
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$22;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$22;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public cancelFollowUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->cancelFollowUser(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 756
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 757
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 758
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 760
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$27;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$27;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public cancelPraiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->cancelPraiseWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 677
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 678
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 679
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 681
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$24;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$24;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public cancelPublishWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->cancelPublishWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 571
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 572
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 573
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 575
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$20;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$20;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public checkImage(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/ImageCheckResult;",
            ">;)V"
        }
    .end annotation

    .line 1340
    new-instance v0, Lcom/codemao/nemo/bean/ImageCheckRequest;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/ImageCheckRequest;-><init>()V

    .line 1341
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ImageCheckRequest;->setUri(Ljava/lang/String;)V

    .line 1342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PULP"

    .line 1343
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ImageCheckRequest;->setParams(Ljava/util/List;)V

    .line 1346
    sget-object p1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object p1

    const-string v1, "release"

    .line 1347
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1348
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkImageRelease(Lcom/codemao/nemo/bean/ImageCheckRequest;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1349
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_72

    :cond_33
    const-string v1, "staging"

    .line 1350
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1351
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkImageStaging(Lcom/codemao/nemo/bean/ImageCheckRequest;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1352
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_72

    :cond_4b
    const-string v1, "dev"

    .line 1353
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 1354
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkImageDev(Lcom/codemao/nemo/bean/ImageCheckRequest;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1355
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_72

    .line 1357
    :cond_63
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkImageTest(Lcom/codemao/nemo/bean/ImageCheckRequest;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1358
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1360
    :goto_72
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v0, :cond_7d

    .line 1361
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1363
    :cond_7d
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil$49;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$49;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public collectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->collectWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 597
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 598
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 599
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 601
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$21;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$21;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public deleteCommentOrReply(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->deleteComment(JJ)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 379
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 380
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 381
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 383
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$13;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryNetUtil$13;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public disLikePostOrRpely(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->disLikePostOrRpely(JJ)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 433
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 434
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 435
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 437
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$15;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryNetUtil$15;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->followUser(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 730
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 731
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 732
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 734
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$26;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$26;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public forkWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/ForkWorkResult;",
            ">;)V"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->forkWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1002
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1003
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 1004
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1006
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$36;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$36;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getEmptyWorks(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getEmptyWorks()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 235
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v1, :cond_1a

    .line 237
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 239
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil$8;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil$8;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getMessageByType(IILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/MessageResponse;",
            ">;)V"
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    int-to-long v1, p1

    const/16 p1, 0xa

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getMessageByType(JII)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1250
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1251
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1d

    .line 1252
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1254
    :cond_1d
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$46;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$46;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getMessageCount(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/MessageCount;",
            ">;)V"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getMessageCount()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1226
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1227
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v1, :cond_1a

    .line 1228
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1230
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil$45;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil$45;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getRandomNickname(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/RandomNicknameInfo;",
            ">;)V"
        }
    .end annotation

    .line 1201
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getRandomNickname()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1202
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1203
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v1, :cond_1a

    .line 1204
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1206
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil$44;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil$44;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getReplys(JJILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/WorkCommentReplys;",
            ">;)V"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v6, 0xf

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getReplys(JJII)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 311
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1f

    .line 313
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 315
    :cond_1f
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$11;

    invoke-direct {p2, p0, p6}, Lcom/codemao/nemo/http/DiscoveryNetUtil$11;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getReworkHistory(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/ReworkHistoryResponse;",
            ">;)V"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getReworkHistory(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1028
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1029
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 1030
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1032
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$37;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$37;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getSubjectIds(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getSubjectIds()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1457
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1458
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v1, :cond_1a

    .line 1459
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1461
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil$53;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil$53;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getUserDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/UserDetailInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getUserDetail(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 92
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 94
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$2;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$2;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getUserFans(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/UserFansOrFollowers;",
            ">;)V"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getUserFans(JII)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 919
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 920
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1c

    .line 921
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 923
    :cond_1c
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$33;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryNetUtil$33;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getUserFollower(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/UserFansOrFollowers;",
            ">;)V"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getUserFollower(JII)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 947
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 948
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1c

    .line 949
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 951
    :cond_1c
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$34;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryNetUtil$34;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getWorkDetail(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getWorkDetail(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 66
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 68
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$1;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getWorkPublishInfo(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/WorkPublishInfo;",
            ">;)V"
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getPublishInfo(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1153
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1154
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 1155
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1157
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$42;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$42;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public likePostOrRpely(JJLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->likePostOrRpely(JJ)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 406
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 407
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 408
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 410
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$14;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryNetUtil$14;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public praiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->praiseWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 650
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 651
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 652
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 654
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$23;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$23;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public publishWork(JLjava/util/Map;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/SimpleWorkInfo;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->publishWork(JLjava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 545
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 546
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 547
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 549
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$19;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryNetUtil$19;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public searchUserCollectWorkSync(J)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->syncWorkName(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 140
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 141
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 143
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$4;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil$4;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public searchUserCollectWorks(Ljava/lang/String;JILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/UserCollectWorks;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v5, 0xf

    move-wide v1, p2

    move-object v3, p1

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->searchUserCollectWork(JLjava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1f

    .line 118
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 120
    :cond_1f
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$3;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryNetUtil$3;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public sendReply(JJLjava/lang/String;JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/response/CommentAndReplyResponse;",
            ">;)V"
        }
    .end annotation

    .line 337
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    const-string v1, "content"

    .line 338
    invoke-virtual {v0, v1, p5}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-wide/16 v1, 0x0

    cmp-long p5, p6, v1

    if-lez p5, :cond_18

    .line 340
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "parent_id"

    invoke-virtual {v0, p6, p5}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 342
    :cond_18
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->sendReply(JJLjava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 343
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_38

    .line 345
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 347
    :cond_38
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$12;

    invoke-direct {p2, p0, p8}, Lcom/codemao/nemo/http/DiscoveryNetUtil$12;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public setUserInfo(Ljava/util/Map;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->updateUserInfo(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1128
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1129
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v0, :cond_1a

    .line 1130
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1132
    :cond_1a
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil$41;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$41;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/GetMiaoCodeRequest;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/GetMiaoCodeResponse;",
            ">;)V"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 810
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 811
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v0, :cond_1a

    .line 812
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 814
    :cond_1a
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil$29;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$29;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public shareWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->shareWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 703
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 704
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_1a

    .line 705
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 707
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$25;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryNetUtil$25;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public tipOffComment(JJLjava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1305
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    .line 1306
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "comment_id"

    invoke-virtual {v0, p4, p3}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-string p3, "report_reason"

    .line 1307
    invoke-virtual {v0, p3, p5}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1308
    iget-object p3, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p3, p1, p2, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->tipOffComment(JLjava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1309
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1310
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_30

    .line 1311
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1313
    :cond_30
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$48;

    invoke-direct {p2, p0, p6}, Lcom/codemao/nemo/http/DiscoveryNetUtil$48;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public tipOffWork(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1274
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    .line 1275
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "work_id"

    invoke-virtual {v0, p2, p1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-string p1, "report_reason"

    .line 1276
    invoke-virtual {v0, p1, p3}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-string p1, "report_describe"

    .line 1277
    invoke-virtual {v0, p1, p4}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 1278
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->tipOffWork(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1279
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1280
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz p2, :cond_35

    .line 1281
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1283
    :cond_35
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil$47;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryNetUtil$47;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateUserAvatar(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "avatar_url"

    .line 1076
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/ChainParam;->create(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p1

    .line 1077
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->updateUserInfo(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1078
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1079
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v0, :cond_24

    .line 1080
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1082
    :cond_24
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil$39;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$39;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateUserCover(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "preview"

    .line 162
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/ChainParam;->create(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->updateUserCover(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v0, :cond_24

    .line 165
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 167
    :cond_24
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil$5;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$5;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateUserDes(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "description"

    .line 1101
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/ChainParam;->create(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p1

    .line 1102
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->updateUserInfo(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1103
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1104
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v0, :cond_24

    .line 1105
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1107
    :cond_24
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil$40;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$40;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateUserNickName(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nickname"

    .line 1051
    invoke-static {v0, p1}, Lcom/codemao/nemo/bean/ChainParam;->create(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p1

    .line 1052
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->updateUserInfo(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1053
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1054
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    if-eqz v0, :cond_24

    .line 1055
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1057
    :cond_24
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil$38;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil$38;-><init>(Lcom/codemao/nemo/http/DiscoveryNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method
