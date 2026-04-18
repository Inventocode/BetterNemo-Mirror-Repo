.class public final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;
.super Lcom/codemao/nemo/common/CustomDataRepository;
.source "MineNemoRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/DiscoveryService;",
        ">;"
    }
.end annotation


# instance fields
.field private searchDataOffset:I

.field private final searchServer$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/codemao/nemo/common/CustomDataRepository;-><init>()V

    .line 18
    sget-object v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchServer$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchServer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getSearchDataOffset$p(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;)I
    .registers 1

    .line 16
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchDataOffset:I

    return p0
.end method

.method public static final synthetic access$setSearchDataOffset$p(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchDataOffset:I

    return-void
.end method

.method private final getSearchServer()Lcom/codemao/nemo/retrofit/api/SearchService;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchServer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/SearchService;

    return-object v0
.end method


# virtual methods
.method public final cancelPublish(JLcom/codemao/nemo/http/DataRequestCallback;)V
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

    .line 51
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->cancelPublishWork(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$cancelPublish$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$cancelPublish$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final checkWorks(Ljava/util/Set;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->checkWork(Ljava/util/Set;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$checkWorks$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$checkWorks$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public createServer()Lcom/codemao/nemo/retrofit/api/DiscoveryService;
    .registers 3

    .line 22
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    return-object v0
.end method

.method public bridge synthetic createServer()Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->createServer()Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    move-result-object v0

    return-object v0
.end method

.method public final getPublishedData(ZLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/UserPublisWorks;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->refreshOffset(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getPageDataOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/nemo/common/CustomDataRepository;->getPageDataSize()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getMyPublishWorks(II)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$getPublishedData$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$getPublishedData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final searchPublishedData(ZLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/PublishSearchData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "searchKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    goto :goto_10

    .line 124
    :cond_e
    iget p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchDataOffset:I

    :goto_10
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchDataOffset:I

    .line 125
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->getSearchServer()Lcom/codemao/nemo/retrofit/api/SearchService;

    move-result-object v0

    .line 126
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "getCachedUserInfo().getId()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 128
    iget v4, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchDataOffset:I

    .line 129
    invoke-virtual {p0}, Lcom/codemao/nemo/common/CustomDataRepository;->getPageDataSize()I

    move-result v5

    const/16 v6, 0x8

    move-object v3, p2

    .line 125
    invoke-interface/range {v0 .. v6}, Lcom/codemao/nemo/retrofit/api/SearchService;->searchPubWorks(JLjava/lang/String;III)Lio/reactivex/Observable;

    move-result-object p1

    .line 130
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 131
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/GetMiaoCodeRequest;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/GetMiaoCodeResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$shareMiaoCode$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$shareMiaoCode$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method
