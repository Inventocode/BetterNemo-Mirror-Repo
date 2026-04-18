.class public final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "MineNemoVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getPublishedData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/UserPublisWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    .line 45
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsPublishedData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

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

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsPublishedData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

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

.method public onSuccess(Lcom/codemao/nemo/bean/UserPublisWorks;)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getDraftsPublishedData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v1, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 45
    check-cast p1, Lcom/codemao/nemo/bean/UserPublisWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$getPublishedData$1;->onSuccess(Lcom/codemao/nemo/bean/UserPublisWorks;)V

    return-void
.end method
