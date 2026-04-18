.class public final Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "WorkDetailVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workdetail/WorkDetailVM;->forkWork(J)Landroidx/lifecycle/MutableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/response/WorkForkKnResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/response/WorkForkKnResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/response/WorkForkKnResponse;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;->$result:Landroidx/lifecycle/MutableLiveData;

    .line 35
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Error;

    invoke-direct {v1, p1, p2, p3}, Lcom/ljwx/baseapp/response/DataResult$Error;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object p2, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance p3, Lcom/ljwx/baseapp/response/DataResult$Fail;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseapp/response/DataResult$Fail;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/response/WorkForkKnResponse;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v1, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Lcom/codemao/nemo/bean/response/WorkForkKnResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workdetail/WorkDetailVM$forkWork$1;->onSuccess(Lcom/codemao/nemo/bean/response/WorkForkKnResponse;)V

    return-void
.end method
