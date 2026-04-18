.class public final Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;
.super Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
.source "MineNemoRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->searchPublishedData(ZLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/DiscoveryService;",
        ">.CustomObserver<",
        "Lcom/codemao/nemo/bean/PublishSearchData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/codemao/nemo/http/DataRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/PublishSearchData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/PublishSearchData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 131
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;-><init>(Lcom/codemao/nemo/common/CustomDataRepository;)V

    return-void
.end method


# virtual methods
.method public onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponseSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 131
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;->onResponseSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onResponseSuccess(Lretrofit2/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/PublishSearchData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/PublishSearchData;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;

    .line 135
    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->access$getSearchDataOffset$p(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;)I

    move-result v2

    iget-object v0, v0, Lcom/codemao/nemo/bean/PublishSearchData;->items:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;->access$setSearchDataOffset$p(Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository;I)V

    .line 137
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoRepository$searchPublishedData$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
