.class public final Lokio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentPool.kt\nokio/SegmentPool\n*L\n1#1,63:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lokio/SegmentPool;

.field public static byteCount:J

.field public static next:Lokio/Segment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lokio/SegmentPool;

    invoke-direct {v0}, Lokio/SegmentPool;-><init>()V

    sput-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recycle(Lokio/Segment;)V
    .registers 12

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_3f

    .line 51
    iget-boolean v0, p0, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_18

    return-void

    .line 53
    :cond_18
    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    monitor-enter v0

    .line 54
    :try_start_1b
    sget-wide v2, Lokio/SegmentPool;->byteCount:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_3c

    const/16 v4, 0x2000

    int-to-long v4, v4

    add-long v6, v2, v4

    const-wide/32 v8, 0x10000

    cmp-long v10, v6, v8

    if-lez v10, :cond_2b

    monitor-exit v0

    return-void

    :cond_2b
    add-long/2addr v2, v4

    .line 55
    :try_start_2c
    sput-wide v2, Lokio/SegmentPool;->byteCount:J

    .line 56
    sget-object v2, Lokio/SegmentPool;->next:Lokio/Segment;

    iput-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 57
    iput v1, p0, Lokio/Segment;->limit:I

    .line 58
    iput v1, p0, Lokio/Segment;->pos:I

    .line 59
    sput-object p0, Lokio/SegmentPool;->next:Lokio/Segment;

    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_3c

    .line 53
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3f
    const-string p0, "Failed requirement."

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final take()Lokio/Segment;
    .registers 6

    .line 37
    sget-object v0, Lokio/SegmentPool;->INSTANCE:Lokio/SegmentPool;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lokio/SegmentPool;->next:Lokio/Segment;

    if-eqz v1, :cond_18

    .line 39
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    sput-object v2, Lokio/SegmentPool;->next:Lokio/Segment;

    const/4 v2, 0x0

    .line 40
    iput-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 41
    sget-wide v2, Lokio/SegmentPool;->byteCount:J

    const/16 v4, 0x2000

    int-to-long v4, v4

    sub-long/2addr v2, v4

    sput-wide v2, Lokio/SegmentPool;->byteCount:J
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1f

    .line 42
    monitor-exit v0

    return-object v1

    .line 37
    :cond_18
    monitor-exit v0

    .line 45
    new-instance v0, Lokio/Segment;

    invoke-direct {v0}, Lokio/Segment;-><init>()V

    return-object v0

    :catchall_1f
    move-exception v1

    .line 37
    monitor-exit v0

    throw v1
.end method
