.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;
.super Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
.source "WorkPublishKnRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->getPublishStatus(JLcom/codemao/nemo/http/DataRequestCallback;)V
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
        "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/codemao/nemo/http/DataRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;Lcom/codemao/nemo/http/DataRequestCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;",
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 129
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;-><init>(Lcom/codemao/nemo/common/CustomDataRepository;)V

    return-void
.end method


# virtual methods
.method public onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback$DefaultImpls;->onError$default(Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "获取发布状态请求失败:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "流程-发布"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback$DefaultImpls;->onFail$default(Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponseSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 129
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;->onResponseSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onResponseSuccess(Lretrofit2/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$getPublishStatus$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
