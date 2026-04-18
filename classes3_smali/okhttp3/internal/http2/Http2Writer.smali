.class public final Lokhttp3/internal/http2/Http2Writer;
.super Ljava/lang/Object;
.source "Http2Writer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Writer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Writer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Writer.kt\nokhttp3/internal/http2/Http2Writer\n*L\n1#1,317:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http2/Http2Writer$Companion;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field private final hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/http2/Http2Writer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Writer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Writer;->Companion:Lokhttp3/internal/http2/Http2Writer$Companion;

    .line 314
    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSink;Z)V
    .registers 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z

    .line 49
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    iput-object v4, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    const/16 p1, 0x4000

    .line 50
    iput p1, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 52
    new-instance p1, Lokhttp3/internal/http2/Hpack$Writer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    return-void
.end method

.method private final writeContinuationFrames(IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_23

    .line 277
    iget v2, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-int v4, v2

    const/16 v5, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_17

    const/4 v0, 0x4

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 279
    :goto_18
    invoke-virtual {p0, p1, v4, v5, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 285
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-interface {v0, v1, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_23
    return-void
.end method


# virtual methods
.method public final declared-synchronized applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "peerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_2f

    .line 69
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 70
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 71
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Hpack$Writer;->resizeHeaderTable(I)V

    :cond_22
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v1, v1, p1, v0}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 79
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_37

    .line 80
    monitor-exit p0

    return-void

    .line 68
    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 269
    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    .line 270
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 271
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized connectionPreface()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_44

    .line 57
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->client:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4c

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 58
    :cond_b
    :try_start_b
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> CONNECTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 61
    :cond_36
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 62
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_4c

    .line 63
    monitor-exit p0

    return-void

    .line 56
    :cond_44
    :try_start_44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized data(ZILokio/Buffer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_a

    .line 153
    invoke-virtual {p0, p2, p1, p3, p4}, Lokhttp3/internal/http2/Http2Writer;->dataFrame(IILokio/Buffer;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 154
    monitor-exit p0

    return-void

    .line 150
    :cond_a
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final dataFrame(IILokio/Buffer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    if-lez p4, :cond_11

    .line 165
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    if-nez p3, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_11
    return-void
.end method

.method public final declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_c

    .line 120
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 121
    monitor-exit p0

    return-void

    .line 119
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final frameHeader(IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    sget-object v0, Lokhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v2, Lokhttp3/internal/http2/Http2;->INSTANCE:Lokhttp3/internal/http2/Http2;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 259
    :cond_18
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p2, v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_68

    const-wide v3, 0x80000000L

    long-to-int v0, v3

    and-int/2addr v0, p1

    if-nez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_4d

    .line 261
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-static {v0, p2}, Lokhttp3/internal/Util;->writeMedium(Lokio/BufferedSink;I)V

    .line 262
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 263
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 264
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    return-void

    .line 260
    :cond_4d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reserved bit set: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 259
    :cond_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FRAME_SIZE_ERROR length > "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getHpackWriter()Lokhttp3/internal/http2/Hpack$Writer;
    .registers 2

    .line 52
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    return-object v0
.end method

.method public final declared-synchronized goAway(ILokhttp3/internal/http2/ErrorCode;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_52

    .line 221
    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_46

    .line 224
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 222
    invoke-virtual {p0, v3, v0, v1, v3}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 228
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 229
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 230
    array-length p1, p3

    if-nez p1, :cond_36

    const/4 v3, 0x1

    :cond_36
    xor-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_3f

    .line 231
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 233
    :cond_3f
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_5a

    .line 234
    monitor-exit p0

    return-void

    :cond_46
    :try_start_46
    const-string p1, "errorCode.httpCode == -1"

    .line 221
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 220
    :cond_52
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized headers(ZILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "headerBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_3b

    .line 296
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 298
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 299
    iget p3, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_22

    const/4 v4, 0x4

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    if-eqz p1, :cond_27

    or-int/lit8 v4, v4, 0x1

    :cond_27
    long-to-int p1, v2

    const/4 v5, 0x1

    .line 302
    invoke-virtual {p0, p2, p1, v5, v4}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 308
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-interface {p1, v4, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    if-lez p3, :cond_39

    sub-long/2addr v0, v2

    .line 310
    invoke-direct {p0, p2, v0, v1}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_43

    .line 311
    :cond_39
    monitor-exit p0

    return-void

    .line 295
    :cond_3b
    :try_start_3b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final maxDataLength()I
    .registers 2

    .line 139
    iget v0, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    return v0
.end method

.method public final declared-synchronized ping(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 198
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_22

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 199
    :goto_e
    invoke-virtual {p0, v2, v0, v1, p1}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 205
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 206
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 207
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    .line 208
    monitor-exit p0

    return-void

    .line 198
    :cond_22
    :try_start_22
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized pushPromise(IILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "requestHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_46

    .line 101
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Writer;->hpackWriter:Lokhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 103
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 104
    iget p3, p0, Lokhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, p3

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    add-int/lit8 v2, p3, 0x4

    const/4 v3, 0x5

    int-to-long v4, p3

    cmp-long p3, v0, v4

    if-nez p3, :cond_2a

    const/4 v6, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    .line 105
    :goto_2b
    invoke-virtual {p0, p1, v2, v3, v6}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 111
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    const v3, 0x7fffffff

    and-int/2addr p2, v3

    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 112
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Writer;->hpackBuffer:Lokio/Buffer;

    invoke-interface {p2, v2, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    if-lez p3, :cond_44

    sub-long/2addr v0, v4

    .line 114
    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_4e

    .line 115
    :cond_44
    monitor-exit p0

    return-void

    .line 100
    :cond_46
    :try_start_46
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_38

    .line 126
    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 128
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 134
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->getHttpCode()I

    move-result p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 135
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_40

    .line 136
    monitor-exit p0

    return-void

    :cond_2c
    :try_start_2c
    const-string p1, "Failed requirement."

    .line 126
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 125
    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized settings(Lokhttp3/internal/http2/Settings;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_42

    .line 175
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0, v2, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    const/16 v0, 0xa

    :goto_17
    if-ge v2, v0, :cond_3b

    .line 180
    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_38

    :cond_20
    if-eq v2, v1, :cond_29

    const/4 v3, 0x7

    if-eq v2, v3, :cond_27

    move v3, v2

    goto :goto_2a

    :cond_27
    const/4 v3, 0x4

    goto :goto_2a

    :cond_29
    const/4 v3, 0x3

    .line 186
    :goto_2a
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, v3}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 187
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 189
    :cond_3b
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_4a

    .line 190
    monitor-exit p0

    return-void

    .line 172
    :cond_42
    :try_start_42
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized windowUpdate(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_46

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_15

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_2b

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 246
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->frameHeader(IIII)V

    .line 252
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 253
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Writer;->sink:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_4e

    .line 254
    monitor-exit p0

    return-void

    .line 244
    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 242
    :cond_46
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4e
    .catchall {:try_start_2b .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
