.class public final Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;
.super Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
.source "MineKnRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->getMyWorks(ZZLcom/codemao/nemo/http/DataRequestCallback;)V
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

.field final synthetic $published:Z

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;ZLcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;",
            "Z",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    iput-boolean p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->$published:Z

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 44
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;-><init>(Lcom/codemao/nemo/common/CustomDataRepository;)V

    return-void
.end method


# virtual methods
.method public onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponseSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 44
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->onResponseSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onResponseSuccess(Lretrofit2/Response;)V
    .registers 7
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

    .line 47
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/KnWorkListResponse;

    if-eqz p1, :cond_3e

    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->$published:Z

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository$getMyWorks$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    .line 49
    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->access$getMyPublishedWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;)I

    move-result v0

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    :cond_24
    add-int/2addr v0, v3

    invoke-static {v1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->access$setMyPublishedWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;I)V

    goto :goto_3b

    .line 51
    :cond_29
    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->access$getMyAllWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;)I

    move-result v0

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    :cond_37
    add-int/2addr v0, v3

    invoke-static {v1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;->access$setMyAllWorksOffset$p(Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnRepository;I)V

    .line 53
    :goto_3b
    invoke-interface {v2, p1}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_3e
    return-void
.end method
