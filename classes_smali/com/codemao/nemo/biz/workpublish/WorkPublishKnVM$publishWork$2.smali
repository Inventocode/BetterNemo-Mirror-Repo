.class public final Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;
.super Lcom/codemao/nemo/http/DataRequestCallback;
.source "WorkPublishKnVM.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->publishWork(JLandroid/util/ArrayMap;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/DataRequestCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iput-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->$context:Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Lcom/codemao/nemo/http/DataRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "发布错误,code:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "流程-发布"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getNetError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/nemo/http/DataRequestCallback;->onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    iget-object p3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishResult()Landroidx/lifecycle/MutableLiveData;

    .line 194
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "发布失败:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "流程-发布"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_23

    goto :goto_48

    .line 195
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const v0, 0x263e48f

    if-ne p3, v0, :cond_48

    .line 196
    iget-object p3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->$context:Landroid/content/Context;

    invoke-virtual {p3, v0, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->showPublishForbid(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishResult()Landroidx/lifecycle/MutableLiveData;

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

    goto :goto_61

    .line 199
    :cond_48
    :goto_48
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishResult()Landroidx/lifecycle/MutableLiveData;

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

    .line 200
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-static {p2, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->access$publishFail(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;Ljava/lang/Integer;)V

    :goto_61
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 185
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM$publishWork$2;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->getPublishResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-direct {v1, p1}, Lcom/ljwx/baseapp/response/DataResult$Success;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
