.class Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;
.super Ljava/lang/Object;
.source "CloudMaterialDownloadQueueManager.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/codemao/creativecenter/utils/down/DownloadFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$300(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$200(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$202(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lcom/codemao/creativecenter/utils/down/DownloadFile;

    .line 122
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->startTask()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$100(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 113
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$100(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$200(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v2

    if-nez v2, :cond_19

    move-object v2, v1

    goto :goto_23

    :cond_19
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$200(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->copy()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v2

    :goto_23
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2, v3}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;->onError(Lcom/codemao/creativecenter/utils/down/DownloadFile;Ljava/lang/Exception;)V

    .line 115
    :cond_2b
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$202(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lcom/codemao/creativecenter/utils/down/DownloadFile;

    return-void
.end method

.method public onNext(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
    .registers 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$100(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 106
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$100(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$200(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_36

    :cond_2c
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$200(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->copy()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v0

    :goto_36
    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;->onNext(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V

    :cond_39
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 96
    check-cast p1, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->onNext(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$1;->this$0:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->access$000(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
