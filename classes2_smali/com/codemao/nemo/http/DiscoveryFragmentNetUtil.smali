.class public Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;
.super Lcom/codemao/nemo/http/NetUtils;
.source "DiscoveryFragmentNetUtil.java"


# instance fields
.field private context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

.field private discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

.field private knWorkService:Lcom/codemao/nemo/retrofit/api/KnWorkService;


# direct methods
.method public constructor <init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Lcom/codemao/nemo/http/NetUtils;-><init>()V

    .line 66
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    iput-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    .line 67
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    iput-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->knWorkService:Lcom/codemao/nemo/retrofit/api/KnWorkService;

    .line 68
    iput-object p1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    return-void
.end method


# virtual methods
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

    .line 693
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->cancelFollowUser(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 694
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 695
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 696
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 698
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$23;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$23;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

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

    .line 640
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->cancelPublishWork(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 641
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 642
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 643
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 645
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$21;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$21;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public checkWork(Ljava/util/Set;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkWork(Ljava/util/Set;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 942
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 943
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v0, :cond_1a

    .line 944
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 946
    :cond_1a
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$32;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$32;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

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

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->deleteComment(JJ)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 361
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 362
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 363
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 365
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$11;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$11;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public deleteDynamic(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->deleteDynamic(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 859
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 860
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 861
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 863
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$29;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$29;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

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

    .line 414
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->disLikePostOrRpely(JJ)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 415
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 416
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 417
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 419
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$13;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$13;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

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

    .line 667
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->followUser(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 668
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 669
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 670
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 672
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$22;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$22;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getBeginnerRecommendWorks(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BeginnerRecommendBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getBeginnerRecommendWorks(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1163
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v1, :cond_22

    .line 1165
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1167
    :cond_22
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$41;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$41;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getComments(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/WorkComments;",
            ">;)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getComments(JII)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 254
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 255
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1c

    .line 256
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 258
    :cond_1c
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$8;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$8;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getCourseListInfo(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/CourseListInfo;",
            ">;)V"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getCoursesList(III)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1016
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1017
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 1018
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1020
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$35;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$35;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getEmptyUsers(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/EmptyUserInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getEmptyUsers()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 229
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v1, :cond_1a

    .line 231
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 233
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$7;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$7;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

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

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getEmptyWorks()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 205
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v1, :cond_1a

    .line 207
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 209
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$6;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$6;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getLatestWorks(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/LatestWorks;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_12

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getLatestForkWorks(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 146
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_47

    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getLatestModuleWorks(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 149
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_47

    :cond_25
    const/4 v0, 0x2

    if-ne p1, v0, :cond_38

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getLatestLessonWorks(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 152
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_47

    .line 154
    :cond_38
    iget-object p1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getLatestOriginalWorks(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 155
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 157
    :goto_47
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_52

    .line 158
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 160
    :cond_52
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$4;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$4;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getMyPublished(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/UserPublisWorks;",
            ">;)V"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getMyPublishWorks(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 447
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 448
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v0, :cond_1c

    .line 449
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 451
    :cond_1c
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$14;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$14;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getNewWorkDetails(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/NewWorkDetail;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getNewWorkDetails(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 120
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v0, :cond_1c

    .line 122
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 124
    :cond_1c
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$3;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$3;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getRecommendBanner(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BannerData;",
            ">;>;)V"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getRecommendBanner(I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 915
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 916
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v0, :cond_1a

    .line 917
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 919
    :cond_1a
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$31;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$31;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getSubjectDetailInfo(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/SubjectInfo;",
            ">;)V"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getSubjectDetailInfo(I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1090
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1091
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v0, :cond_1a

    .line 1092
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1094
    :cond_1a
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$38;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$38;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getSubjectDetailList(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/SubjectWorks;",
            ">;)V"
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getSubjectDetailList(III)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1114
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1115
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 1116
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1118
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$39;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$39;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getSubjectList(IILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/SubjectInfos;",
            ">;)V"
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getSubjectList(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 967
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 968
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 969
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 971
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$33;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$33;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getTrendsListInfo(IILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/TrendsListInfo;",
            ">;)V"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getTrendsList(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1040
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1041
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 1042
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1044
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$36;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$36;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getTrendsRecList(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/TrendsRecs;",
            ">;)V"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getDynamicRecUsers()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 1138
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1139
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v1, :cond_1a

    .line 1140
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 1142
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$40;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$40;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getUserDynamic(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/UserDynamics;",
            ">;)V"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getUserDynamic(JII)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 722
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 723
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1c

    .line 724
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 726
    :cond_1c
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$24;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getWorkDetailBottomRecommend(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommends;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getWorkDetailRecommends(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 74
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 76
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$1;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

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

    .line 387
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->likePostOrRpely(JJ)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 388
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 389
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1a

    .line 390
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 392
    :cond_1a
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$12;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$12;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public searchHotWord(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->searchHotWord()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 804
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v1, :cond_1a

    .line 806
    invoke-virtual {v1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 808
    :cond_1a
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$27;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$27;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public searchUser(Ljava/lang/String;ILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/DiscoverySearchUsers;",
            ">;)V"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, p2, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->searchUser(Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 832
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 833
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1c

    .line 834
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 836
    :cond_1c
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$28;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$28;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public searchWork(Ljava/lang/String;ILcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/bean/DiscoverySearchWorks;",
            ">;)V"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, p2, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->searchWork(Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 774
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 775
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_1c

    .line 776
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 778
    :cond_1c
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$26;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$26;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public sendComment(JLjava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/response/CommentAndReplyResponse;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    const-string v1, "content"

    .line 319
    invoke-virtual {v0, v1, p3}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 320
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_14

    const-string p3, "emoji_content"

    .line 321
    invoke-virtual {v0, p3, p4}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 323
    :cond_14
    iget-object p3, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p3, p1, p2, p4}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->sendComment(JLjava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 324
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 325
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_32

    .line 326
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 328
    :cond_32
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$10;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public sendReply(JJLjava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
            "Lcom/codemao/nemo/response/CommentAndReplyResponse;",
            ">;)V"
        }
    .end annotation

    .line 279
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    const-string v1, "content"

    .line 280
    invoke-virtual {v0, v1, p5}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 281
    iget-object v2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v7

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->sendReply(JJLjava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 282
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 283
    iget-object p2, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz p2, :cond_29

    .line 284
    invoke-virtual {p2}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 286
    :cond_29
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$9;

    invoke-direct {p2, p0, p6}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$9;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

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

    .line 747
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->discoveryService:Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 748
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 749
    iget-object v0, p0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->context:Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;

    if-eqz v0, :cond_1a

    .line 750
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 752
    :cond_1a
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$25;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil$25;-><init>(Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method
