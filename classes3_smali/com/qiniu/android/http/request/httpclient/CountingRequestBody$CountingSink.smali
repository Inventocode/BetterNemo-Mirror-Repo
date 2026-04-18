.class public final Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:I

.field final synthetic this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;Lokio/Sink;)V
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    .line 64
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    return p0
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$000(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$100(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object v0

    if-nez v0, :cond_14

    .line 70
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    return-void

    .line 73
    :cond_14
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$000(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$000(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/CancellationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/qiniu/android/http/CancellationHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_2f

    .line 74
    :cond_29
    new-instance p1, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-direct {p1}, Lcom/qiniu/android/http/CancellationHandler$CancellationException;-><init>()V

    throw p1

    .line 76
    :cond_2f
    :goto_2f
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 77
    iget p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    int-to-long v0, p1

    add-long/2addr v0, p2

    long-to-int p1, v0

    iput p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->bytesWritten:I

    .line 78
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;->this$0:Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;->access$100(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 79
    new-instance p1, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink$1;

    invoke-direct {p1, p0}, Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink$1;-><init>(Lcom/qiniu/android/http/request/httpclient/CountingRequestBody$CountingSink;)V

    invoke-static {p1}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    :cond_49
    return-void
.end method
