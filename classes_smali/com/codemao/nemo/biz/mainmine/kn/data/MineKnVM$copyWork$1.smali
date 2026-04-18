.class public final Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$copyWork$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "MineKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->copyWork(J)Landroidx/lifecycle/MutableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $copyWorkResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Object;",
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
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$copyWork$1;->$copyWorkResult:Landroidx/lifecycle/MutableLiveData;

    .line 148
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$copyWork$1;->$copyWorkResult:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Error;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseapp/response/DataResult$Error;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$copyWork$1;->$copyWorkResult:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Fail;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseapp/response/DataResult$Fail;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM$copyWork$1;->$copyWorkResult:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v1, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
