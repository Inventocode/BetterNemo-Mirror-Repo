.class public final Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;
.super Lcom/codemao/nemo/common/CustomDataRepository;
.source "MineKnRepository.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/KnWorkService;",
        ">;"
    }
.end annotation


# instance fields
.field private dataSize:I

.field private myAllWorksOffset:I

.field private myPublishedWorksOffset:I

.field private searchWorkOffset:I


# direct methods
.method public static synthetic $r8$lambda$J_2L52TDQ940-U_K5B_Aat43QCg()V
    .registers 0

    invoke-static {}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->verifyImportLink$lambda$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$UWJuMVqXpColX6oqvnivc99BiKQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->verifyImportLink$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q7aGg0iWWV93eTKR470YQQg-NlA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->verifyImportLink$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rtNMHaHZzEX3XaZjlzNtuxcbuGs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->verifyImportLink$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/codemao/nemo/common/CustomDataRepository;-><init>()V

    const/16 v0, 0x19

    .line 17
    iput v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->dataSize:I

    return-void
.end method

.method public static final synthetic access$getMyAllWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myAllWorksOffset:I

    return p0
.end method

.method public static final synthetic access$getMyPublishedWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myPublishedWorksOffset:I

    return p0
.end method

.method public static final synthetic access$getSearchWorkOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;)I
    .registers 1

    .line 15
    iget p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->searchWorkOffset:I

    return p0
.end method

.method public static final synthetic access$setMyAllWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;I)V
    .registers 2

    .line 15
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myAllWorksOffset:I

    return-void
.end method

.method public static final synthetic access$setMyPublishedWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;I)V
    .registers 2

    .line 15
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myPublishedWorksOffset:I

    return-void
.end method

.method public static final synthetic access$setSearchWorkOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;I)V
    .registers 2

    .line 15
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->searchWorkOffset:I

    return-void
.end method

.method private static final verifyImportLink$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final verifyImportLink$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final verifyImportLink$lambda$2()V
    .registers 0

    return-void
.end method

.method private static final verifyImportLink$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cancelWorkPublish(JLcom/codemao/nemo/http/DataRequestCallback;)V
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

    .line 71
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCreationHost()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1, p2}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->cancelPublishWork(Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$cancelWorkPublish$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$cancelWorkPublish$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final copyWork(JLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCreationHost()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/nemo/bean/body/WorkRequestBody;

    invoke-direct {v2, p1, p2}, Lcom/codemao/nemo/bean/body/WorkRequestBody;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->copyWork(Ljava/lang/String;Lcom/codemao/nemo/bean/body/WorkRequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 139
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 140
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$copyWork$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$copyWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public createServer()Lcom/codemao/nemo/retrofit/api/KnWorkService;
    .registers 3

    .line 23
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
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->createServer()Lcom/codemao/nemo/retrofit/api/KnWorkService;

    move-result-object v0

    return-object v0
.end method

.method public final deleteWork(JZLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCreationHost()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_18

    const/4 p3, 0x2

    goto :goto_19

    :cond_18
    const/4 p3, 0x1

    :goto_19
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->deleteWork(Ljava/lang/String;JI)Lio/reactivex/Observable;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 118
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$deleteWork$1;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$deleteWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final getMyWorks(ZZLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    if-eqz p2, :cond_d

    .line 33
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myPublishedWorksOffset:I

    goto :goto_f

    .line 35
    :cond_d
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myAllWorksOffset:I

    .line 38
    :cond_f
    :goto_f
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_18

    .line 39
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myPublishedWorksOffset:I

    goto :goto_1a

    :cond_18
    iget v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->myAllWorksOffset:I

    :goto_1a
    const-string v1, "host"

    if-eqz p2, :cond_2e

    .line 40
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    .line 41
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->dataSize:I

    .line 40
    invoke-interface {v2, p1, v0, v1}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->getKnWorkPublishedList(Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_3d

    .line 42
    :cond_2e
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->dataSize:I

    invoke-interface {v2, p1, v0, v1}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->getKnWorkList(Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    :goto_3d
    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;ZLcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final renameWork(JLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    new-instance v1, Lcom/codemao/nemo/bean/body/WorkRenameKnBody;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, p3, v2, v3, v4}, Lcom/codemao/nemo/bean/body/WorkRenameKnBody;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->renameWork(JLcom/codemao/nemo/bean/body/WorkRenameKnBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$renameWork$1;

    invoke-direct {p2, p0, p4}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$renameWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final searchWorks(ZLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
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

    .line 178
    :cond_e
    iget p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->searchWorkOffset:I

    :goto_10
    iput p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->searchWorkOffset:I

    .line 179
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    .line 180
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getCreationHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCreationHost()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->searchWorkOffset:I

    .line 183
    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->dataSize:I

    .line 179
    invoke-interface {p1, v0, p2, v1, v2}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->searchKnWorkList(Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    .line 184
    new-instance p2, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {p2}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 185
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final verifyImportLink(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getMApiServer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/KnWorkService;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/retrofit/api/KnWorkService;->verifyImportLink(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 161
    new-instance v0, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v0}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 162
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$verifyImportLink$1;

    invoke-direct {v0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$verifyImportLink$1;-><init>(Lcom/codemao/nemo/http/DataRequestCallback;)V

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$verifyImportLink$2;

    invoke-direct {v0, p2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$verifyImportLink$2;-><init>(Lcom/codemao/nemo/http/DataRequestCallback;)V

    .line 164
    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda3;

    invoke-direct {p2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda0;

    .line 162
    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$verifyImportLink$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$verifyImportLink$4;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;)V

    .line 168
    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 162
    invoke-virtual {p1, v1, p2, v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
