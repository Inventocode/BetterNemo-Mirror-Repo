.class public final Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;
.super Lcom/codemao/nemo/common/CustomDataRepository;
.source "KnTemplateRepository.kt"


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

    .line 15
    invoke-direct {p0}, Lcom/codemao/nemo/common/CustomDataRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public createServer()Lcom/codemao/nemo/retrofit/api/KnWorkService;
    .registers 3

    .line 17
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

    .line 15
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;->createServer()Lcom/codemao/nemo/retrofit/api/KnWorkService;

    move-result-object v0

    return-object v0
.end method

.method public final mergeRequest(IIILcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnTemplateListResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    const-string v2, "host"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, v2, p3}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->getKnTemplateList(Ljava/lang/String;III)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-interface {v1, v0, p2, v2, p3}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->getKnTemplateList(Ljava/lang/String;III)Lio/reactivex/Observable;

    move-result-object p2

    .line 29
    invoke-static {p1, p2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    new-instance p2, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository$mergeRequest$1;-><init>(Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method
