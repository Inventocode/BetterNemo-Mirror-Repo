.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInflaterSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,129:1\n72#2:130\n*E\n*S KotlinDebug\n*F\n+ 1 InflaterSource.kt\nokio/InflaterSource\n*L\n59#1:130\n*E\n"
.end annotation


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method private final releaseInflatedBytes()V
    .registers 5

    .line 105
    iget v0, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_5

    return-void

    .line 106
    :cond_5
    iget-object v1, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 107
    iget v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 108
    iget-object v1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

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

    .line 115
    iget-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 116
    :cond_5
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    .line 118
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
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

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p2, v0

    if-ltz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_8a

    .line 50
    iget-boolean v4, p0, Lokio/InflaterSource;->closed:Z

    xor-int/2addr v4, v2

    if-eqz v4, :cond_7e

    if-nez v3, :cond_19

    return-wide v0

    .line 54
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lokio/InflaterSource;->refill()Z

    move-result v0

    .line 58
    :try_start_1d
    invoke-virtual {p1, v2}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v1

    .line 59
    iget v3, v1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    int-to-long v3, v3

    .line 72
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 60
    iget-object v3, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v5, v1, Lokio/Segment;->data:[B

    iget v6, v1, Lokio/Segment;->limit:I

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    if-lez v3, :cond_46

    .line 62
    iget p2, v1, Lokio/Segment;->limit:I

    add-int/2addr p2, v3

    iput p2, v1, Lokio/Segment;->limit:I

    .line 63
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p2

    int-to-long v0, v3

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->setSize$jvm(J)V

    return-wide v0

    .line 66
    :cond_46
    iget-object v3, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_62

    iget-object v3, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_57

    goto :goto_62

    :cond_57
    if-nez v0, :cond_5a

    goto :goto_19

    .line 75
    :cond_5a
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_62
    :goto_62
    invoke-direct {p0}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 68
    iget p2, v1, Lokio/Segment;->pos:I

    iget p3, v1, Lokio/Segment;->limit:I

    if-ne p2, p3, :cond_74

    .line 70
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p2

    iput-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 71
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    :try_end_74
    .catch Ljava/util/zip/DataFormatException; {:try_start_1d .. :try_end_74} :catch_77

    :cond_74
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_77
    move-exception p1

    .line 77
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 50
    :cond_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final refill()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 90
    :cond_a
    invoke-direct {p0}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 91
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_40

    .line 94
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_24

    return v2

    .line 97
    :cond_24
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_31

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 98
    :cond_31
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 99
    iget-object v4, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v0, v0, Lokio/Segment;->data:[B

    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    .line 91
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 111
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
