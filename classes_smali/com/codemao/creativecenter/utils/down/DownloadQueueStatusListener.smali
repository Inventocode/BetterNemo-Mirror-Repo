.class public interface abstract Lcom/codemao/creativecenter/utils/down/DownloadQueueStatusListener;
.super Ljava/lang/Object;
.source "DownloadQueueStatusListener.java"


# virtual methods
.method public abstract onCompleted()V
.end method

.method public abstract onError(Lcom/codemao/creativecenter/utils/down/MaterialTask;Ljava/lang/Exception;)V
.end method

.method public abstract onNext(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
.end method

.method public abstract onSingleTaskCompleted(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
.end method

.method public abstract onStart(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
.end method
