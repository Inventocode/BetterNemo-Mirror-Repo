.class public final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "MineNemoVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->searchWorkServer(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/PublishSearchData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    .line 143
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchWorkDataServer()Landroidx/lifecycle/MutableLiveData;

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

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchWorkDataServer()Landroidx/lifecycle/MutableLiveData;

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

.method public onSuccess(Lcom/codemao/nemo/bean/PublishSearchData;)V
    .registers 5

    if-eqz p1, :cond_14

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    .line 147
    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getSearchWorkDataServer()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->access$searchData2NemoData(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;Lcom/codemao/nemo/bean/PublishSearchData;)Lcom/ljwx/baseapp/response/BaseResponseListData;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 143
    check-cast p1, Lcom/codemao/nemo/bean/PublishSearchData;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM$searchWorkServer$1;->onSuccess(Lcom/codemao/nemo/bean/PublishSearchData;)V

    return-void
.end method
