.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "WorkPublishKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->executeCheckPictures(JLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    .line 135
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getNetError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getCheckPicturesResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    new-instance p3, Lcom/ljwx/baseapp/response/DataResult$Fail;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ljwx/baseapp/response/DataResult$Fail;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;)V
    .registers 5

    .line 138
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "图片发起检测成功submitId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;->getSubmit_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getCheckPicturesResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v1, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 135
    check-cast p1, Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$executeCheckPictures$1;->onSuccess(Lcom/codemao/nemo/bean/CheckPicturesSyncResponse;)V

    return-void
.end method
