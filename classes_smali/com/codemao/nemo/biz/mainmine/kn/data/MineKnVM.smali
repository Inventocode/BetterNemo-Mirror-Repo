.class public final Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "MineKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;",
        ">;"
    }
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

.field private final searchKey:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final workAllData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final workPublishedData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final workSearchData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    .line 16
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->workAllData:Landroidx/lifecycle/MutableLiveData;

    .line 17
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->workPublishedData:Landroidx/lifecycle/MutableLiveData;

    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->workSearchData:Landroidx/lifecycle/MutableLiveData;

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->clickTabIndexAgain:Landroidx/lifecycle/MutableLiveData;

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->searchKey:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic cancelWorkPublish$default(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;JZILjava/lang/Object;)Landroidx/lifecycle/MutableLiveData;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    .line 70
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->cancelWorkPublish(JZ)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancelWorkPublish(JZ)Landroidx/lifecycle/MutableLiveData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$cancelWorkPublish$1;

    invoke-direct {v2, v0, p3}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$cancelWorkPublish$1;-><init>(Landroidx/lifecycle/MutableLiveData;Z)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->cancelWorkPublish(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final copyWork(J)Landroidx/lifecycle/MutableLiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 148
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$copyWork$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$copyWork$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->copyWork(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public createRepository()Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;
    .registers 2

    .line 23
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->createRepository()Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    move-result-object v0

    return-object v0
.end method

.method public final deleteWork(JZ)Landroidx/lifecycle/MutableLiveData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$deleteWork$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$deleteWork$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->deleteWork(JZLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final getAllWorks(Z)V
    .registers 5

    .line 27
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    .line 28
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$getAllWorks$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$getAllWorks$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;)V

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, p1, v2, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->getMyWorks(ZZLcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
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

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->clickTabIndexAgain:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPublishedWorks(Z)V
    .registers 5

    .line 48
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    .line 51
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$getPublishedWorks$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$getPublishedWorks$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;)V

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, p1, v2, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->getMyWorks(ZZLcom/codemao/nemo/http/DataRequestCallback;)V

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

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->searchKey:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getWorkAllData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->workAllData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getWorkPublishedData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->workPublishedData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getWorkSearchData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->workSearchData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final renameWork(JLjava/lang/String;)Landroidx/lifecycle/MutableLiveData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$renameWork$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$renameWork$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->renameWork(JLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final searchWork(ZLjava/lang/String;)V
    .registers 5

    const-string v0, "searchKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    .line 193
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$searchWork$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$searchWork$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;)V

    .line 192
    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->searchWorks(ZLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public final verifyImportLink(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 170
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$verifyImportLink$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$verifyImportLink$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->verifyImportLink(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method
