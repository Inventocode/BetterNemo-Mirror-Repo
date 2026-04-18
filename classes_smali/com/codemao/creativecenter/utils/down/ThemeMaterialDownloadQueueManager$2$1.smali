.class Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2$1;
.super Ljava/lang/Object;
.source "ThemeMaterialDownloadQueueManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;->apply(Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/codemao/creativecenter/utils/zip/UnzipInfo;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/codemao/creativecenter/utils/down/MaterialTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2$1;->this$1:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)Lio/reactivex/ObservableSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/zip/UnzipInfo;",
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

    .line 120
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2$1;->this$1:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2;->this$0:Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->access$400(Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;)Lcom/codemao/creativecenter/utils/down/MaterialTask;

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

    .line 117
    check-cast p1, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager$2$1;->apply(Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
