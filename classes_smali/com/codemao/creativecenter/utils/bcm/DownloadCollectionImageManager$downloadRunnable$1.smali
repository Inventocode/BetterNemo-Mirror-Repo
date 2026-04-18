.class final Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;
.super Ljava/lang/Object;
.source "DownloadCollectionImageManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$downloadRunnable$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 199
    :cond_0
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$getDownloadMaterialImageList$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_13

    .line 200
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$isStopDownload$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_13
    :try_start_13
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$getDownloadMaterialImageList$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    const/4 v2, 0x1

    .line 206
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->setStatus(I)V

    .line 207
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getListener()Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-interface {v3, v1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;->onDownloadItemStart(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    .line 208
    :cond_36
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getList()Ljava/util/ArrayList;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    .line 210
    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 211
    sget-object v6, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    const-string v7, "downloadImageItem"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5, v1, v4}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$downloadFile(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;)V

    .line 212
    invoke-static {v6}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$isStopDownload$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Z

    move-result v4

    if-eqz v4, :cond_3e

    return-void

    .line 216
    :cond_5f
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->getStatus()I

    move-result v3

    if-ne v3, v2, :cond_1b

    const/4 v2, 0x2

    .line 217
    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->setStatus(I)V

    .line 218
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getListener()Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface {v2, v1}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager$CollectionDownloadListener;->onDownloadItemSuccess(Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;)V

    goto :goto_1b

    .line 221
    :cond_75
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$checkList(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    :goto_7f
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->access$isStopDownload$p(Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
