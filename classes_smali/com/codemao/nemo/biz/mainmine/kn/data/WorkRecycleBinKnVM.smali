.class public final Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "WorkRecycleBinKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final worksData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->worksData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final cleanWork()Landroidx/lifecycle/MutableLiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$cleanWork$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$cleanWork$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;->cleanWork(Lcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public createRepository()Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;
    .registers 2

    .line 16
    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->createRepository()Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;

    move-result-object v0

    return-object v0
.end method

.method public final deleteWorkForever(J)Landroidx/lifecycle/MutableLiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$deleteWorkForever$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$deleteWorkForever$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;->deleteWorkForever(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method

.method public final getRecycleWorks(Z)V
    .registers 4

    .line 20
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;

    .line 21
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$getRecycleWorks$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$getRecycleWorks$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;)V

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;->getRecycleWorks(ZLcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method

.method public final getWorksData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinResponse;",
            ">;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM;->worksData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final recoverWork(J)Landroidx/lifecycle/MutableLiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$recoverWork$1;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnVM$recoverWork$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/WorkRecycleBinKnRepository;->recoverWork(JLcom/codemao/nemo/http/DataRequestCallback;)V

    return-object v0
.end method
