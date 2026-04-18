.class Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;
.super Ljava/lang/Object;
.source "ThemeMaterialDownloadQueueManager.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->startTask()V
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
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 5

    const-string v0, "DownloadManager:onComplete"

    .line 153
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    move-object v0, v1

    goto :goto_1a

    :cond_10
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->copy()Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    .line 155
    :goto_1a
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$500(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v3}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v2, v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$402(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;Lcom/codemao/creativecenter/utils/down/MaterialTask;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    .line 157
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$300(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 158
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$300(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;->onSingleTaskCompleted(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V

    .line 160
    :cond_3f
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->startTask()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_15

    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->copy()Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    .line 144
    :goto_15
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v2, v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$402(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;Lcom/codemao/creativecenter/utils/down/MaterialTask;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    .line 145
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$300(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 146
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$300(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0, v2}, Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;->onError(Lcom/codemao/creativecenter/utils/down/MaterialTask;Ljava/lang/Exception;)V

    .line 148
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManager:onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$300(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 137
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$300(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_36

    :cond_2c
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->copy()Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    :goto_36
    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;->onNext(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V

    :cond_39
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 127
    check-cast p1, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->onNext(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$200(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
