.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "WorkPublishKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->checkPictures(JLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $workId:J

.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;J)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iput-wide p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->$workId:J

    .line 104
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getNetError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

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

.method public onSuccess(Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;)V
    .registers 6

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->getBcm_encrypt_url()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_a
    move-object v2, v1

    :goto_b
    invoke-static {v0, v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->access$setBcmEncryptUrl$p(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->isAITag()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    move-object v2, v1

    :goto_1c
    invoke-static {v0, v2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->access$setAITag$p(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Ljava/lang/Boolean;)V

    .line 108
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kn图片json解析成功:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/evolving/DGMLog;->dPublish(Ljava/lang/String;)V

    if-eqz p1, :cond_3c

    .line 109
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->getPublish_need_check_images()Ljava/util/List;

    move-result-object v0

    goto :goto_3d

    :cond_3c
    move-object v0, v1

    :goto_3d
    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_48

    :cond_46
    const/4 v0, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v0, 0x1

    :goto_49
    if-eqz v0, :cond_5a

    .line 110
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getCheckPicturesResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v0, v1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_67

    .line 112
    :cond_5a
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-wide v2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->$workId:J

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->getPublish_need_check_images()Ljava/util/List;

    move-result-object v1

    :cond_64
    invoke-static {v0, v2, v3, v1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->access$executeCheckPictures(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;JLjava/util/List;)V

    :goto_67
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 104
    check-cast p1, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$checkPictures$1;->onSuccess(Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;)V

    return-void
.end method
