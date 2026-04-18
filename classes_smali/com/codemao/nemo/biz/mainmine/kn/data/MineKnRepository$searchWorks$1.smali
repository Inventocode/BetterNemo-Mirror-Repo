.class public final Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;
.super Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
.source "MineKnRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->searchWorks(ZLjava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/common/CustomDataRepository<",
        "Lcom/codemao/nemo/retrofit/api/KnWorkService;",
        ">.CustomObserver<",
        "Lcom/codemao/nemo/bean/KnWorkListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/codemao/nemo/http/DataRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 185
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;-><init>(Lcom/codemao/nemo/common/CustomDataRepository;)V

    return-void
.end method


# virtual methods
.method public onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 195
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponseSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 185
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;->onResponseSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onResponseSuccess(Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/KnWorkListResponse;

    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$searchWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 189
    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->access$getSearchWorkOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;)I

    move-result v2

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->access$setSearchWorkOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;I)V

    .line 190
    invoke-interface {v1, p1}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method
