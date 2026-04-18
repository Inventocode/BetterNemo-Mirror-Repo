.class public interface abstract Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;
.super Ljava/lang/Object;
.source "CloudMaterialDownloadQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadStatusListener"
.end annotation


# virtual methods
.method public abstract onCompleted()V
.end method

.method public abstract onError(Lcom/codemao/creativecenter/utils/down/DownloadFile;Ljava/lang/Exception;)V
.end method

.method public abstract onNext(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
.end method

.method public abstract onStart(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
.end method
