.class public final Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "WorkDetailVM.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createRepository()Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;
    .registers 2

    .line 12
    new-instance v0, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;->createRepository()Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;

    move-result-object v0

    return-object v0
.end method

.method public final followUser(J)Landroidx/lifecycle/LiveData;
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

    .line 100
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;

    new-instance v2, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$followUser$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$followUser$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;->followUser(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final forkWork(J)Landroidx/lifecycle/MutableLiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/response/WorkForkKnResponse;",
            ">;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;

    new-instance v2, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/workdetail/WorkDetailRepository;->forkWork(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method
