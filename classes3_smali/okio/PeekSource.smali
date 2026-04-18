.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n*L\n1#1,74:1\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;

.field private pos:J

.field private final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 3

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 31
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 32
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz p1, :cond_19

    .line 33
    iget p1, p1, Lokio/Segment;->pos:I

    goto :goto_1a

    :cond_19
    const/4 p1, -0x1

    :goto_1a
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-boolean v0, p0, Lokio/PeekSource;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_72

    .line 43
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v0, :cond_22

    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_21

    iget v0, p0, Lokio/PeekSource;->expectedPos:I

    if-nez v2, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1c
    iget v2, v2, Lokio/Segment;->pos:I

    if-ne v0, v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_22
    if-eqz v1, :cond_66

    .line 47
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    iget-wide v1, p0, Lokio/PeekSource;->pos:J

    add-long/2addr v1, p2

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    .line 48
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v0, :cond_41

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_41

    .line 52
    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v0, :cond_3d

    .line 53
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3d
    iget v0, v0, Lokio/Segment;->pos:I

    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    .line 56
    :cond_41
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_57

    const-wide/16 p1, -0x1

    return-wide p1

    .line 61
    :cond_57
    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v4, p0, Lokio/PeekSource;->pos:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 62
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    return-wide p2

    .line 42
    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_72
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 67
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
