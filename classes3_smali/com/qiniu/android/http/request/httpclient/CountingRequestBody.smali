.class public final Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;
.super Lokhttp3/RequestBody;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/RequestBody;

.field private final cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

.field private final progress:Lcom/qiniu/android/http/ProgressHandler;

.field private final totalSize:J


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/qiniu/android/http/ProgressHandler;JLcom/qiniu/android/http/CancellationHandler;)V
    .registers 6

    .line 30
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->body:Lokhttp3/RequestBody;

    .line 32
    iput-object p2, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->progress:Lcom/qiniu/android/http/ProgressHandler;

    .line 33
    iput-wide p3, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->totalSize:J

    .line 34
    iput-object p5, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->progress:Lcom/qiniu/android/http/ProgressHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->totalSize:J

    return-wide v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->body:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->body:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;-><init>(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;Lokio/Sink;)V

    .line 52
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->body:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 56
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
