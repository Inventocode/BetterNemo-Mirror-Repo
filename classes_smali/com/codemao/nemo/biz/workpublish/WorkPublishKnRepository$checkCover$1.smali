.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;
.super Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;
.source "WorkPublishKnRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository;->checkCover(Ljava/lang/String;Lcom/codemao/nemo/http/DataRequestCallback;)V
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
        "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/codemao/nemo/http/DataRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/http/DataRequestCallback<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
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
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    .line 37
    invoke-direct {p0, p1}, Lcom/codemao/nemo/common/CustomDataRepository$CustomObserver;-><init>(Lcom/codemao/nemo/common/CustomDataRepository;)V

    return-void
.end method


# virtual methods
.method public onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/16 p2, 0x7cd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "封面检测请求网络异常"

    invoke-virtual {p1, p2, v0, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;->onResponseFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p1, "流程-发布"

    const-string/jumbo p2, "封面检测请求失败"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/16 v0, 0x7cc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponseSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 37
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;->onResponseSuccess(Lretrofit2/Response;)V

    return-void
.end method

.method public onResponseSuccess(Lretrofit2/Response;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;->allPass()Z

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const-string/jumbo v0, "流程-发布"

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "封面检测通过"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_41

    :cond_2c
    const-string/jumbo p1, "封面检测未通过"

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnRepository$checkCover$1;->$callback:Lcom/codemao/nemo/http/DataRequestCallback;

    const/16 p1, 0x7cb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/ljwx/baseapp/vm/BaseDataRequestCallback$DefaultImpls;->onFail$default(Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_41
    return-void
.end method
