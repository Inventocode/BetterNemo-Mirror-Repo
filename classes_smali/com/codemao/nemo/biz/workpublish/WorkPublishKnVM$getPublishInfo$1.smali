.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "WorkPublishKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishInfo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    .line 159
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "获取发布信息错误,code:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "流程-发布"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getNetError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getWorkPublishInfo()Landroidx/lifecycle/MutableLiveData;

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

.method public onSuccess(Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getWorkPublishInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v1, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 159
    check-cast p1, Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$getPublishInfo$1;->onSuccess(Lcom/codemao/nemo/bean/WorkPublishKnInfoResponse;)V

    return-void
.end method
