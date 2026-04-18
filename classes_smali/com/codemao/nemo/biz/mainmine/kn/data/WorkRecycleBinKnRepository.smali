.class public final Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;
.super Lcom/codemao/nemo/common/CustomDataRepository;
.source "WorkRecycleBinKnRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/KnWorkService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/codemao/nemo/common/CustomDataRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public final cleanWork(Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    const-string v2, "host"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->cleanRecycleBin(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$cleanWork$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$cleanWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public createServer()Lcom/codemao/nemo/retrofit/api/KnWorkService;
    .registers 3

    .line 15
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get().create(KnWorkService::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    return-object v0
.end method

.method public bridge synthetic createServer()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;->createServer()Lcom/codemao/nemo/retrofit/api/KnWorkService;

    move-result-object v0

    return-object v0
.end method

.method public final deleteWorkForever(JLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    const-string v2, "host"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->deleteWorkForever(Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$deleteWorkForever$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$deleteWorkForever$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final getRecycleWorks(ZLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->refreshOffset(Z)V

    .line 23
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    const-string p1, "host"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getPageDataOffset()I

    move-result v3

    invoke-virtual {p0}, Lcom/codemao/nemo/common/CustomDataRepository;->getPageDataSize()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/retrofit/api/KnWorkService$DefaultImpls;->getWorkKnListRecycleBin$default(Lcom/codemao/nemo/retrofit/api/KnWorkService;Ljava/lang/String;IIIILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$getRecycleWorks$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$getRecycleWorks$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final recoverWork(JLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    const-string v2, "host"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->recoverWork(Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$recoverWork$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository$recoverWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method
