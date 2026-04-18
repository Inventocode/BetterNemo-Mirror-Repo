.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "WorkPublishKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishStatus(J)Landroidx/lifecycle/MutableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Landroidx/lifecycle/MutableLiveData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/WorkPublishStatusResponse;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iput-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->$status:Landroidx/lifecycle/MutableLiveData;

    .line 249
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getNetError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "获取发布状态接口失败:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "流程-发布"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishStatus()Landroidx/lifecycle/MutableLiveData;

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

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->$status:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Lcom/ljwx/baseapp/response/DataResult$Fail;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseapp/response/DataResult$Fail;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/WorkPublishStatusResponse;)V
    .registers 5

    const-string/jumbo v0, "流程-发布"

    const-string/jumbo v1, "获取发布状态请求成功"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v2, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->$status:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v2, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2c

    .line 255
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;->isInReview()Z

    move-result p1

    if-ne p1, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    if-eqz v1, :cond_41

    const-string/jumbo p1, "作品正在审核中"

    .line 256
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    const v0, 0x54501

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->access$publishFail(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Ljava/lang/Integer;)V

    :cond_41
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 249
    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishStatusResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishStatus$1;->onSuccess(Lcom/codemao/nemo/bean/WorkPublishStatusResponse;)V

    return-void
.end method
