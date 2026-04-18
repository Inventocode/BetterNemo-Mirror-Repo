.class public final Lokio/SegmentedByteString$Companion;
.super Ljava/lang/Object;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/SegmentedByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString$Companion\n*L\n1#1,325:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lokio/SegmentedByteString$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Lokio/Buffer;I)Lokio/ByteString;
    .registers 10

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 65
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v2, p2, :cond_30

    if-nez v0, :cond_1b

    .line 67
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b
    iget v4, v0, Lokio/Segment;->limit:I

    iget v5, v0, Lokio/Segment;->pos:I

    if-eq v4, v5, :cond_28

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 72
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_14

    .line 68
    :cond_28
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 76
    :cond_30
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 77
    new-array v2, v2, [I

    .line 80
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v4, 0x0

    :goto_39
    if-ge v1, p2, :cond_5d

    if-nez p1, :cond_40

    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_40
    iget-object v5, p1, Lokio/Segment;->data:[B

    aput-object v5, v0, v4

    .line 83
    iget v5, p1, Lokio/Segment;->limit:I

    iget v6, p1, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 85
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    add-int v5, v4, v3

    .line 86
    iget v6, p1, Lokio/Segment;->pos:I

    aput v6, v2, v5

    const/4 v5, 0x1

    .line 87
    iput-boolean v5, p1, Lokio/Segment;->shared:Z

    add-int/2addr v4, v5

    .line 89
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_39

    .line 91
    :cond_5d
    new-instance p1, Lokio/SegmentedByteString;

    const/4 p2, 0x0

    invoke-direct {p1, v0, v2, p2}, Lokio/SegmentedByteString;-><init>([[B[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
