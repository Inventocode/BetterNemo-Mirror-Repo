.class Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;
.super Ljava/lang/Object;
.source "BaseMaterialDownloadManager.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/codemao/creativecenter/utils/down/MaterialTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    const-string v0, "BaseMaterialDownloadManager: onComplete"

    .line 153
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    .line 155
    :try_start_5
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$500(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)V

    .line 156
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$402(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;Lcom/codemao/creativecenter/utils/down/MaterialTask;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/BaseMaterialDownloadSuccessEvent;

    invoke-direct {v1}, Lcom/codemao/creativecenter/event/BaseMaterialDownloadSuccessEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    const-string p1, "BaseMaterialDownloadManager: onError"

    .line 145
    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$302(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;Z)Z

    .line 147
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$402(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;Lcom/codemao/creativecenter/utils/down/MaterialTask;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;

    invoke-direct {v0}, Lcom/codemao/creativecenter/event/BaseMaterialDownloadErrorEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseMaterialDownloadManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 131
    check-cast p1, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;->onNext(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$200(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
