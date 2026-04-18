.class Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;
.super Ljava/lang/Object;
.source "BaseMaterialDownloadManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Lcom/codemao/creativecenter/utils/down/DownloadFile;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/codemao/creativecenter/utils/down/MaterialTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lio/reactivex/ObservableSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/down/DownloadFile;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/codemao/creativecenter/utils/down/MaterialTask;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$400(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUnZipInfo()Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget p1, p1, Lcom/codemao/creativecenter/utils/down/DownloadFile;->progress:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_13

    goto :goto_2d

    .line 121
    :cond_13
    sget-object p1, Lcom/codemao/creativecenter/utils/zip/RxZipUtils;->INSTANCE:Lcom/codemao/creativecenter/utils/zip/RxZipUtils;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$400(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUnZipInfo()Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/zip/RxZipUtils;->unzip(Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2$1;-><init>(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 119
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;->this$0:Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->access$400(Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    check-cast p1, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager$2;->apply(Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
