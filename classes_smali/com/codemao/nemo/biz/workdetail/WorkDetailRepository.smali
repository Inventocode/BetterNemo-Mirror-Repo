.class public final Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;
.super Lcom/codemao/nemo/common/CustomDataRepository;
.source "WorkDetailRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/WorkDetailServer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/codemao/nemo/common/CustomDataRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public createServer()Lcom/codemao/nemo/retrofit/api/WorkDetailServer;
    .registers 3

    .line 13
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/WorkDetailServer;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get().create(WorkDetailServer::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/retrofit/api/WorkDetailServer;

    return-object v0
.end method

.method public bridge synthetic createServer()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;->createServer()Lcom/codemao/nemo/retrofit/api/WorkDetailServer;

    move-result-object v0

    return-object v0
.end method

.method public final followUser(JLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/WorkDetailServer;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/WorkDetailServer;->followUser(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 84
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 85
    new-instance p2, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository$followUser$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository$followUser$1;-><init>(Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final forkWork(JLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/response/WorkForkKnResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/WorkDetailServer;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/WorkDetailServer;->forkWork(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 18
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository$forkWork$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository$forkWork$1;-><init>(Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method
