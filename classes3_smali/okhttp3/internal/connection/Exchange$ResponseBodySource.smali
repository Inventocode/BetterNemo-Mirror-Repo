.class public final Lokhttp3/internal/connection/Exchange$ResponseBodySource;
.super Lokio/ForwardingSource;
.source "Exchange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/connection/Exchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResponseBodySource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$ResponseBodySource\n*L\n1#1,324:1\n*E\n"
.end annotation


# instance fields
.field private bytesReceived:J

.field private closed:Z

.field private completed:Z

.field private final contentLength:J

.field final synthetic this$0:Lokhttp3/internal/connection/Exchange;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Source;",
            "J)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lokhttp3/internal/connection/Exchange;

    .line 264
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    iput-wide p3, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-nez v0, :cond_16

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_16
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    .line 306
    :try_start_8
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 309
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final complete(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 314
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->completed:Z

    .line 316
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->this$0:Lokhttp3/internal/connection/Exchange;

    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5d

    .line 279
    :try_start_b
    invoke-virtual {p0}, Lokio/ForwardingSource;->delegate()Lokio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1

    const/4 p3, 0x0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1e

    .line 281
    invoke-virtual {p0, p3}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    return-wide v0

    .line 285
    :cond_1e
    iget-wide v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    add-long/2addr v2, p1

    .line 286
    iget-wide v4, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_4d

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2c

    goto :goto_4d

    .line 287
    :cond_2c
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->contentLength:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_4d
    :goto_4d
    iput-wide v2, p0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->bytesReceived:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_56

    .line 292
    invoke-virtual {p0, p3}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_56} :catch_57

    :cond_56
    return-wide p1

    :catch_57
    move-exception p1

    .line 297
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;->complete(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 277
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
