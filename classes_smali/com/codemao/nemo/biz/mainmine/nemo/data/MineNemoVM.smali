.class public final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "MineNemoVM.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineNemoVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoVM.kt\ncom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n1549#2:188\n1620#2,3:189\n*S KotlinDebug\n*F\n+ 1 MineNemoVM.kt\ncom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM\n*L\n171#1:188\n171#1:189,3\n*E\n"
.end annotation


# instance fields
.field private final clickTabIndexAgain:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final draftsPublishedData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/UserPublisWorks;",
            ">;>;"
        }
    .end annotation
.end field

.field private final draftsWorksData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final searchKey:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final searchWorkDataLocal:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final searchWorkDataServer:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/ljwx/baseapp/response/BaseResponseListData<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->draftsWorksData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkDataLocal:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->draftsPublishedData:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkDataServer:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->clickTabIndexAgain:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchKey:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$searchData2NemoData(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Lcom/codemao/nemo/bean/PublishSearchData;)Lcom/ljwx/baseapp/response/BaseResponseListData;
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchData2NemoData(Lcom/codemao/nemo/bean/PublishSearchData;)Lcom/ljwx/baseapp/response/BaseResponseListData;

    move-result-object p0

    return-object p0
.end method

.method private final searchData2NemoData(Lcom/codemao/nemo/bean/PublishSearchData;)Lcom/ljwx/baseapp/response/BaseResponseListData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/PublishSearchData;",
            ")",
            "Lcom/ljwx/baseapp/response/BaseResponseListData<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/ljwx/baseapp/response/BaseResponseListData;

    invoke-direct {v0}, Lcom/ljwx/baseapp/response/BaseResponseListData;-><init>()V

    .line 168
    iget v1, p1, Lcom/codemao/nemo/bean/PublishSearchData;->total:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->setTotal(Ljava/lang/Integer;)V

    .line 169
    iget v1, p1, Lcom/codemao/nemo/bean/PublishSearchData;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->setOffset(Ljava/lang/Integer;)V

    .line 170
    iget v1, p1, Lcom/codemao/nemo/bean/PublishSearchData;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->setLimit(Ljava/lang/Integer;)V

    .line 171
    iget-object p1, p1, Lcom/codemao/nemo/bean/PublishSearchData;->items:Ljava/util/List;

    const-string v1, "old.items"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    .line 172
    new-instance v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 173
    iget-object v4, v2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->work_name:Ljava/lang/String;

    iput-object v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 174
    iget v4, v2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->n_blocks:I

    iput v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 175
    iget v4, v2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->n_roles:I

    iput v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 176
    iget-wide v4, v2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->publish_time:J

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    .line 177
    iget-object v4, v2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->preview:Ljava/lang/String;

    iput-object v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 178
    iput-object v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const/4 v4, 0x2

    .line 179
    iput v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 180
    iput v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 181
    iget-wide v4, v2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 182
    new-instance v2, Lcom/codemao/nemo/bean/NemoWorkListItem;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/codemao/nemo/bean/NemoWorkListItem;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 171
    :cond_7d
    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->setItems(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final cancelPublish(J)Landroidx/lifecycle/LiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$cancelPublish$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$cancelPublish$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->cancelPublish(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final checkWorks(Ljava/util/Set;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$checkWorks$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$checkWorks$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->checkWorks(Ljava/util/Set;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public createRepository()Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;
    .registers 2

    .line 32
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->createRepository()Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    move-result-object v0

    return-object v0
.end method

.method public final getClickTabIndexAgain()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->clickTabIndexAgain:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDraftsPublishedData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/UserPublisWorks;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->draftsPublishedData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDraftsTemplateData(Z)V
    .registers 8

    .line 35
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getDraftsTemplateData$1;-><init>(ZLcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getDraftsWorksData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->draftsWorksData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPublishedData(Z)V
    .registers 4

    .line 45
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->getPublishedData(ZLcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public final getSearchKey()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchKey:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSearchWorkDataLocal()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkDataLocal:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSearchWorkDataServer()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/ljwx/baseapp/response/BaseResponseListData<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;>;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkDataServer:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final searchWorkDataLocal(Ljava/lang/String;)V
    .registers 9

    const-string v0, "searchKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkDataLocal$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final searchWorkServer(ZLjava/lang/String;)V
    .registers 5

    const-string v0, "searchKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    .line 143
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;)V

    .line 140
    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchPublishedData(ZLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public final shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/GetMiaoCodeRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/GetMiaoCodeResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$shareMiaoCode$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$shareMiaoCode$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method
