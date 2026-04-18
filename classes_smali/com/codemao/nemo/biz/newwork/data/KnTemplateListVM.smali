.class public final Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;
.super Lcom/ljwx/baseapp/vm/BaseViewModel;
.source "KnTemplateListVM.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final advanceIndex:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private basicResponseTem:Lcom/codemao/nemo/bean/KnTemplateListResponse;

.field private final templateListMergeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;-><init>()V

    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->templateListMergeData:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->advanceIndex:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getBasicResponseTem$p(Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;)Lcom/codemao/nemo/bean/KnTemplateListResponse;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->basicResponseTem:Lcom/codemao/nemo/bean/KnTemplateListResponse;

    return-object p0
.end method

.method public static final synthetic access$setBasicResponseTem$p(Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;Lcom/codemao/nemo/bean/KnTemplateListResponse;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->basicResponseTem:Lcom/codemao/nemo/bean/KnTemplateListResponse;

    return-void
.end method


# virtual methods
.method public createRepository()Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;
    .registers 2

    .line 24
    new-instance v0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createRepository()Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->createRepository()Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;

    move-result-object v0

    return-object v0
.end method

.method public final getAdvanceIndex()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->advanceIndex:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTemplateListMergeData()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->templateListMergeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final mergeRequest()V
    .registers 6

    .line 28
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 29
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->basicResponseTem:Lcom/codemao/nemo/bean/KnTemplateListResponse;

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;

    .line 35
    new-instance v3, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;

    invoke-direct {v3, v1, v0, p0}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM$mergeRequest$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v4, 0x12c

    .line 31
    invoke-virtual {v2, v0, v1, v4, v3}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateRepository;->mergeRequest(IIILcom/codemao/nemo/http/DataRequestCallback;)V

    return-void
.end method
