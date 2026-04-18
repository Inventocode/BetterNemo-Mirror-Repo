.class public final Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameSink"
.end annotation


# instance fields
.field private closed:Z

.field private contentLength:J

.field private formatOpcode:I

.field private isFirstFrame:Z

.field final synthetic this$0:Lokhttp3/internal/ws/WebSocketWriter;


# direct methods
.method public constructor <init>(Lokhttp3/internal/ws/WebSocketWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_20

    .line 254
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    invoke-virtual {v1}, Lokhttp3/internal/ws/WebSocketWriter;->getBuffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 256
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/ws/WebSocketWriter;->setActiveWriter(Z)V

    return-void

    .line 252
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_1a

    .line 244
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    invoke-virtual {v1}, Lokhttp3/internal/ws/WebSocketWriter;->getBuffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return-void

    .line 242
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getClosed()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    return v0
.end method

.method public final getContentLength()J
    .registers 3

    .line 218
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    return-wide v0
.end method

.method public final getFormatOpcode()I
    .registers 2

    .line 217
    iget v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    return v0
.end method

.method public final isFirstFrame()Z
    .registers 2

    .line 219
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return v0
.end method

.method public final setClosed(Z)V
    .registers 2

    .line 220
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    return-void
.end method

.method public final setContentLength(J)V
    .registers 3

    .line 218
    iput-wide p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    return-void
.end method

.method public final setFirstFrame(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return-void
.end method

.method public final setFormatOpcode(I)V
    .registers 2

    .line 217
    iput p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 248
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v0}, Lokhttp3/internal/ws/WebSocketWriter;->getSink()Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_55

    .line 226
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v0}, Lokhttp3/internal/ws/WebSocketWriter;->getBuffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 231
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_35

    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_35

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {p1}, Lokhttp3/internal/ws/WebSocketWriter;->getBuffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const/16 p1, 0x2000

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_35

    const/4 p1, 0x1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    .line 233
    :goto_36
    iget-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {p3}, Lokhttp3/internal/ws/WebSocketWriter;->getBuffer()Lokio/Buffer;

    move-result-object p3

    invoke-virtual {p3}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_54

    if-nez p1, :cond_54

    .line 235
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 236
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    :cond_54
    return-void

    .line 224
    :cond_55
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
