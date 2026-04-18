.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;
.super Lcom/codemao/nemo/common/CustomDataRepository;
.source "WorkPublishKnRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/DiscoveryService;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/codemao/nemo/common/CustomDataRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkCover(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->Companion:Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;->getCoverRequest(Ljava/lang/String;)Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkCover(Ljava/lang/String;Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final checkPictures(JLjava/util/List;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;->Companion:Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p3}, Lcom/codemao/nemo/bean/CheckPicturesSyncRequest$Companion;->getPublishRequest(Ljava/lang/Long;Ljava/util/List;)Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkPictures(Ljava/lang/String;Lcom/codemao/nemo/bean/CheckPicturesSyncRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 103
    new-instance p2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkPictures$1;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkPictures$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public createServer()Lcom/codemao/nemo/retrofit/api/DiscoveryService;
    .registers 3

    .line 21
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get().create(DiscoveryService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    return-object v0
.end method

.method public bridge synthetic createServer()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->createServer()Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    move-result-object v0

    return-object v0
.end method

.method public final getPublishInfo(JLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getPublishInfo(Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 155
    new-instance p2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishInfo$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishInfo$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final getPublishStatus(JLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getPublishStatus(Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 128
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 129
    new-instance p2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final publishWork(JLjava/util/Map;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->publishWorkKn(Ljava/lang/String;JLjava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    .line 181
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 182
    new-instance p2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$publishWork$1;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$publishWork$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final readPicturesJson(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->readJson(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$readPicturesJson$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$readPicturesJson$1;-><init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method
