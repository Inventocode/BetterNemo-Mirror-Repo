.class Lcom/codemao/team/download/DownloadApiStore$4;
.super Ljava/lang/Object;
.source "DownloadApiStore.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/team/download/DownloadApiStore;->lambda$downloadWithoutSubs$0(Ljava/lang/String;Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fullPath:Ljava/lang/String;

.field final synthetic val$responseBody:Lokhttp3/ResponseBody;


# direct methods
.method constructor <init>(Lcom/codemao/team/download/DownloadApiStore;Lokhttp3/ResponseBody;Ljava/lang/String;)V
    .registers 4

    .line 177
    iput-object p2, p0, Lcom/codemao/team/download/DownloadApiStore$4;->val$responseBody:Lokhttp3/ResponseBody;

    iput-object p3, p0, Lcom/codemao/team/download/DownloadApiStore$4;->val$fullPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 182
    :try_start_2
    iget-object v2, p0, Lcom/codemao/team/download/DownloadApiStore$4;->val$responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_15

    iget-object v2, p0, Lcom/codemao/team/download/DownloadApiStore$4;->val$responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    array-length v0, v2

    int-to-long v0, v0

    goto :goto_1b

    :cond_15
    iget-object v2, p0, Lcom/codemao/team/download/DownloadApiStore$4;->val$responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1b

    .line 186
    :catch_1b
    :goto_1b
    iget-object v2, p0, Lcom/codemao/team/download/DownloadApiStore$4;->val$responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/team/download/DownloadApiStore$4;->val$fullPath:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, p1}, Lcom/codemao/team/download/FileUtils;->write(Ljava/io/InputStream;JLjava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
