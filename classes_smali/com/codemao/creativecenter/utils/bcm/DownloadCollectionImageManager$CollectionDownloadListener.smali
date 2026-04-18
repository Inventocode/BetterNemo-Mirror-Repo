.class public interface abstract Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;
.super Ljava/lang/Object;
.source "DownloadCollectionImageManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollectionDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed()V
.end method

.method public abstract onDownloadItemError(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
.end method

.method public abstract onDownloadItemStart(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
.end method

.method public abstract onDownloadItemSuccess(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V
.end method

.method public abstract onDownloadSuccess()V
.end method
