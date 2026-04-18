.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;,
        Lokio/Buffer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,2216:1\n1395#1,20:2220\n1395#1,20:2276\n1395#1:2296\n1397#1,8:2298\n1407#1,8:2307\n1395#1,20:2316\n75#2:2217\n72#2:2218\n72#2:2219\n63#2:2240\n63#2:2241\n63#2:2242\n63#2:2243\n63#2:2244\n63#2:2245\n63#2:2246\n63#2:2247\n63#2:2248\n63#2:2249\n63#2:2250\n63#2:2251\n69#2:2252\n69#2:2253\n66#2:2254\n66#2:2255\n66#2:2256\n66#2:2257\n66#2:2258\n66#2:2259\n66#2:2260\n66#2:2261\n63#2:2262\n63#2:2263\n75#2:2264\n63#2:2265\n63#2:2266\n63#2:2267\n63#2:2268\n63#2:2269\n63#2:2270\n63#2:2271\n63#2:2272\n63#2:2273\n63#2:2274\n72#2:2275\n75#2:2297\n75#2:2306\n75#2:2315\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n287#1,20:2220\n1432#1,20:2276\n1467#1:2296\n1467#1,8:2298\n1467#1,8:2307\n1503#1,20:2316\n135#1:2217\n194#1:2218\n232#1:2219\n302#1:2240\n302#1:2241\n307#1:2242\n307#1:2243\n330#1:2244\n331#1:2245\n332#1:2246\n333#1:2247\n337#1:2248\n338#1:2249\n339#1:2250\n340#1:2251\n363#1:2252\n364#1:2253\n368#1:2254\n369#1:2255\n370#1:2256\n371#1:2257\n372#1:2258\n373#1:2259\n374#1:2260\n375#1:2261\n577#1:2262\n601#1:2263\n710#1:2264\n743#1:2265\n745#1:2266\n749#1:2267\n751#1:2268\n755#1:2269\n757#1:2270\n761#1:2271\n763#1:2272\n784#1:2273\n787#1:2274\n883#1:2275\n1467#1:2297\n1467#1:2306\n1467#1:2315\n*E\n"
.end annotation


# static fields
.field private static final DIGITS:[B


# instance fields
.field public head:Lokio/Segment;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/Buffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Buffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2213
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final rangeEquals(Lokio/Segment;I[BII)Z
    .registers 11

    .line 1594
    iget v0, p1, Lokio/Segment;->limit:I

    .line 1595
    iget-object v1, p1, Lokio/Segment;->data:[B

    :goto_4
    if-ge p4, p5, :cond_26

    if-ne p2, v0, :cond_19

    .line 1600
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    if-nez p1, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1601
    :cond_f
    iget-object p2, p1, Lokio/Segment;->data:[B

    .line 1602
    iget v0, p1, Lokio/Segment;->pos:I

    .line 1603
    iget v1, p1, Lokio/Segment;->limit:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    .line 1606
    :cond_19
    aget-byte v2, v1, p2

    aget-byte v3, p3, p4

    if-eq v2, v3, :cond_21

    const/4 p1, 0x0

    return p1

    :cond_21
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_26
    const/4 p1, 0x1

    return p1
.end method

.method public static bridge synthetic selectPrefix$jvm$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 546
    :cond_5
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->selectPrefix$jvm(Lokio/Options;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public final clear()V
    .registers 3

    .line 874
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .registers 7

    .line 1735
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1736
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    .line 1738
    :cond_e
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_15
    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_20

    .line 1739
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v2, v1, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_29

    .line 1740
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_29
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_30

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_30
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1741
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_3b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3b
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1742
    :goto_3d
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_5e

    .line 1743
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_48

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_48
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_4f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4f
    if-nez v1, :cond_54

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_54
    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1744
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_3d

    .line 1746
    :cond_5e
    iget-wide v1, p0, Lokio/Buffer;->size:J

    iput-wide v1, v0, Lokio/Buffer;->size:J

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public final completeSegmentByteCount()J
    .registers 6

    .line 249
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 253
    :cond_9
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 254
    :cond_17
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_26

    iget-boolean v4, v2, Lokio/Segment;->owner:Z

    if-eqz v4, :cond_26

    .line 255
    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_26
    return-wide v0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 14

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-wide v1, p0, Lokio/Buffer;->size:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_13

    return-object p0

    .line 156
    :cond_13
    iget-wide v2, p1, Lokio/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lokio/Buffer;->size:J

    .line 159
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1a
    if-nez v2, :cond_1f

    .line 160
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_30

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 162
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1a

    :cond_30
    :goto_30
    cmp-long v3, p4, v0

    if-lez v3, :cond_72

    if-nez v2, :cond_39

    .line 167
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_39
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    .line 168
    iget v4, v3, Lokio/Segment;->pos:I

    long-to-int p3, p2

    add-int/2addr v4, p3

    iput v4, v3, Lokio/Segment;->pos:I

    long-to-int p2, p4

    add-int/2addr v4, p2

    .line 169
    iget p2, v3, Lokio/Segment;->limit:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lokio/Segment;->limit:I

    .line 170
    iget-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez p2, :cond_58

    .line 171
    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 172
    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 173
    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_67

    :cond_58
    if-nez p2, :cond_5d

    .line 175
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5d
    iget-object p2, p2, Lokio/Segment;->prev:Lokio/Segment;

    if-nez p2, :cond_64

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_64
    invoke-virtual {p2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 177
    :goto_67
    iget p2, v3, Lokio/Segment;->limit:I

    iget p3, v3, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 179
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    goto :goto_30

    :cond_72
    return-object p0
.end method

.method public emit()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic emit()Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lokio/Buffer;->emit()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 1679
    :cond_8
    instance-of v3, v1, Lokio/Buffer;

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return v4

    .line 1680
    :cond_e
    iget-wide v5, v0, Lokio/Buffer;->size:J

    check-cast v1, Lokio/Buffer;

    iget-wide v7, v1, Lokio/Buffer;->size:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_19

    return v4

    :cond_19
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_20

    return v2

    .line 1683
    :cond_20
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_27

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1684
    :cond_27
    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_2e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1685
    :cond_2e
    iget v5, v3, Lokio/Segment;->pos:I

    .line 1686
    iget v6, v1, Lokio/Segment;->pos:I

    move-wide v9, v7

    .line 1690
    :goto_33
    iget-wide v11, v0, Lokio/Buffer;->size:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_7c

    .line 1691
    iget v11, v3, Lokio/Segment;->limit:I

    sub-int/2addr v11, v5

    iget v12, v1, Lokio/Segment;->limit:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_45
    cmp-long v15, v13, v11

    if-gez v15, :cond_60

    .line 1694
    iget-object v15, v3, Lokio/Segment;->data:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lokio/Segment;->data:[B

    add-int/lit8 v17, v6, 0x1

    aget-byte v6, v15, v6

    if-eq v5, v6, :cond_58

    return v4

    :cond_58
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_45

    .line 1697
    :cond_60
    iget v13, v3, Lokio/Segment;->limit:I

    if-ne v5, v13, :cond_6d

    .line 1698
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    if-nez v3, :cond_6b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1699
    :cond_6b
    iget v5, v3, Lokio/Segment;->pos:I

    .line 1702
    :cond_6d
    iget v13, v1, Lokio/Segment;->limit:I

    if-ne v6, v13, :cond_7a

    .line 1703
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    if-nez v1, :cond_78

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1704
    :cond_78
    iget v6, v1, Lokio/Segment;->pos:I

    :cond_7a
    add-long/2addr v9, v11

    goto :goto_33

    :cond_7c
    return v2
.end method

.method public exhausted()Z
    .registers 6

    .line 77
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public final getByte(J)B
    .registers 10

    .line 286
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1395
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_56

    .line 1397
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long v3, v1, p1

    if-gez v3, :cond_37

    .line 1399
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    :goto_19
    cmp-long v3, v1, p1

    if-lez v3, :cond_2c

    .line 1401
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_24

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1402
    :cond_24
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_19

    .line 288
    :cond_2c
    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    return p1

    :cond_37
    const-wide/16 v1, 0x0

    .line 1409
    :goto_39
    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v5, v3

    add-long/2addr v5, v1

    cmp-long v3, v5, p1

    if-lez v3, :cond_4d

    .line 288
    iget-object v0, v0, Lokio/Segment;->data:[B

    int-to-long v3, v4

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    aget-byte p1, v0, p1

    return p1

    .line 1411
    :cond_4d
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_54

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_54
    move-wide v1, v5

    goto :goto_39

    .line 288
    :cond_56
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public hashCode()I
    .registers 6

    .line 1713
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    .line 1716
    :cond_5
    iget v2, v0, Lokio/Segment;->pos:I

    .line 1717
    iget v3, v0, Lokio/Segment;->limit:I

    :goto_9
    if-ge v2, v3, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    .line 1719
    iget-object v4, v0, Lokio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1722
    :cond_15
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_1c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1723
    :cond_1c
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_5

    return v1

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public indexOf(BJJ)J
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-lez v2, :cond_7

    goto :goto_d

    :cond_7
    cmp-long v2, p4, p2

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_c4

    .line 1429
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_17

    move-wide p4, v2

    :cond_17
    const-wide/16 v2, -0x1

    cmp-long v4, p2, p4

    if-nez v4, :cond_1e

    return-wide v2

    .line 1395
    :cond_1e
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_c3

    .line 1397
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, p2

    cmp-long v7, v5, p2

    if-gez v7, :cond_7b

    .line 1399
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_2f
    cmp-long v5, v0, p2

    if-lez v5, :cond_42

    .line 1401
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v4, :cond_3a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1402
    :cond_3a
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v0, v5

    goto :goto_2f

    :cond_42
    :goto_42
    cmp-long v5, v0, p4

    if-gez v5, :cond_7a

    .line 1438
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 1439
    iget v6, v4, Lokio/Segment;->limit:I

    int-to-long v6, v6

    iget v8, v4, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, p4

    sub-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 1440
    iget v6, v4, Lokio/Segment;->pos:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    :goto_5b
    if-ge p2, v7, :cond_6a

    .line 1442
    aget-byte p3, v5, p2

    if-ne p3, p1, :cond_67

    .line 1443
    :goto_61
    iget p1, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    return-wide p1

    :cond_67
    add-int/lit8 p2, p2, 0x1

    goto :goto_5b

    .line 1449
    :cond_6a
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 1451
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_78

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_78
    move-wide p2, v0

    goto :goto_42

    :cond_7a
    return-wide v2

    .line 1409
    :cond_7b
    :goto_7b
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-lez v7, :cond_ba

    :goto_86
    cmp-long v5, v0, p4

    if-gez v5, :cond_b9

    .line 1438
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 1439
    iget v6, v4, Lokio/Segment;->limit:I

    int-to-long v6, v6

    iget v8, v4, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, p4

    sub-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 1440
    iget v6, v4, Lokio/Segment;->pos:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    :goto_9f
    if-ge p2, v7, :cond_a9

    .line 1442
    aget-byte p3, v5, p2

    if-ne p3, p1, :cond_a6

    goto :goto_61

    :cond_a6
    add-int/lit8 p2, p2, 0x1

    goto :goto_9f

    .line 1449
    :cond_a9
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 1451
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_b7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b7
    move-wide p2, v0

    goto :goto_86

    :cond_b9
    return-wide v2

    .line 1411
    :cond_ba
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_c1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c1
    move-wide v0, v5

    goto :goto_7b

    :cond_c3
    return-wide v2

    .line 1427
    :cond_c4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1459
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v0, p2

    const-string v2, "bytes"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_13d

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-ltz v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    :goto_20
    if-eqz v5, :cond_122

    .line 1395
    iget-object v2, v6, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_11f

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v11

    sub-long/2addr v11, v0

    const-wide/16 v13, 0x1

    cmp-long v5, v11, v0

    if-gez v5, :cond_a8

    .line 1399
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    :goto_35
    cmp-long v5, v7, v0

    if-lez v5, :cond_48

    .line 1401
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_40

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1402
    :cond_40
    iget v5, v2, Lokio/Segment;->limit:I

    iget v11, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v11

    int-to-long v11, v5

    sub-long/2addr v7, v11

    goto :goto_35

    .line 1473
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v11

    .line 1474
    aget-byte v12, v11, v4

    .line 1475
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v15

    .line 1476
    iget-wide v3, v6, Lokio/Buffer;->size:J

    int-to-long v9, v15

    sub-long/2addr v3, v9

    add-long v9, v3, v13

    move-wide v13, v7

    move-object v7, v2

    :goto_5a
    cmp-long v2, v13, v9

    if-gez v2, :cond_a5

    .line 1479
    iget-object v8, v7, Lokio/Segment;->data:[B

    .line 1480
    iget v2, v7, Lokio/Segment;->limit:I

    iget v3, v7, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, v9

    sub-long/2addr v3, v13

    move-wide/from16 v16, v9

    int-to-long v9, v2

    .line 75
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v9, v2

    .line 1481
    iget v2, v7, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v13

    long-to-int v0, v2

    move v10, v0

    :goto_76
    if-ge v10, v9, :cond_93

    .line 1482
    aget-byte v0, v8, v10

    if-ne v0, v12, :cond_90

    add-int/lit8 v2, v10, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v3, v11

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1483
    iget v0, v7, Lokio/Segment;->pos:I

    sub-int/2addr v10, v0

    int-to-long v0, v10

    add-long/2addr v0, v13

    return-wide v0

    :cond_90
    add-int/lit8 v10, v10, 0x1

    goto :goto_76

    .line 1488
    :cond_93
    iget v0, v7, Lokio/Segment;->limit:I

    iget v1, v7, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v13, v0

    .line 1490
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    if-nez v7, :cond_a1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a1
    move-wide v0, v13

    move-wide/from16 v9, v16

    goto :goto_5a

    :cond_a5
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1409
    :cond_a8
    :goto_a8
    iget v5, v2, Lokio/Segment;->limit:I

    iget v9, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long/2addr v9, v7

    cmp-long v5, v9, v0

    if-lez v5, :cond_112

    .line 1473
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v9

    .line 1474
    aget-byte v10, v9, v4

    .line 1475
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v11

    .line 1476
    iget-wide v3, v6, Lokio/Buffer;->size:J

    int-to-long v5, v11

    sub-long/2addr v3, v5

    add-long v12, v3, v13

    move-object v6, v2

    :goto_c4
    cmp-long v2, v7, v12

    if-gez v2, :cond_10f

    .line 1479
    iget-object v14, v6, Lokio/Segment;->data:[B

    .line 1480
    iget v2, v6, Lokio/Segment;->limit:I

    iget v3, v6, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, v12

    sub-long/2addr v3, v7

    move-wide/from16 v16, v12

    int-to-long v12, v2

    .line 75
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v12, v2

    .line 1481
    iget v2, v6, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v7

    long-to-int v0, v2

    move v13, v0

    :goto_e0
    if-ge v13, v12, :cond_fd

    .line 1482
    aget-byte v0, v14, v13

    if-ne v0, v10, :cond_fa

    add-int/lit8 v2, v13, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v3, v9

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1483
    iget v0, v6, Lokio/Segment;->pos:I

    sub-int/2addr v13, v0

    int-to-long v0, v13

    add-long/2addr v0, v7

    return-wide v0

    :cond_fa
    add-int/lit8 v13, v13, 0x1

    goto :goto_e0

    .line 1488
    :cond_fd
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v7, v0

    .line 1490
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    if-nez v6, :cond_10b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10b
    move-wide v0, v7

    move-wide/from16 v12, v16

    goto :goto_c4

    :cond_10f
    const-wide/16 v5, -0x1

    return-wide v5

    :cond_112
    const-wide/16 v5, -0x1

    .line 1411
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    if-nez v2, :cond_11b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11b
    move-object/from16 v6, p0

    move-wide v7, v9

    goto :goto_a8

    :cond_11f
    const-wide/16 v5, -0x1

    return-wide v5

    .line 1465
    :cond_122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromIndex < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1464
    :cond_13d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1497
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 15

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v0

    if-ltz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_13d

    .line 1395
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_13c

    .line 1397
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    sub-long/2addr v7, p2

    const/4 v9, 0x2

    cmp-long v10, v7, p2

    if-gez v10, :cond_b3

    .line 1399
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_26
    cmp-long v7, v0, p2

    if-lez v7, :cond_39

    .line 1401
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v4, :cond_31

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 1402
    :cond_31
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v0, v7

    goto :goto_26

    .line 1510
    :cond_39
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v9, :cond_79

    .line 1512
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 1513
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 1514
    :goto_47
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_b2

    .line 1515
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 1516
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 1517
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_57
    if-ge p2, p3, :cond_69

    .line 1519
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_63

    if-ne v7, p1, :cond_60

    goto :goto_63

    :cond_60
    add-int/lit8 p2, p2, 0x1

    goto :goto_57

    .line 1521
    :cond_63
    :goto_63
    iget p1, v4, Lokio/Segment;->pos:I

    :goto_65
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    return-wide p1

    .line 1527
    :cond_69
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 1529
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_77

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_77
    move-wide p2, v0

    goto :goto_47

    .line 1533
    :cond_79
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object p1

    .line 1534
    :goto_7d
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_b2

    .line 1535
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 1536
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 1537
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_8d
    if-ge p2, p3, :cond_a2

    .line 1539
    aget-byte v7, v3, p2

    .line 1540
    array-length v8, p1

    const/4 v9, 0x0

    :goto_93
    if-ge v9, v8, :cond_9f

    aget-byte v10, p1, v9

    if-ne v7, v10, :cond_9c

    .line 1541
    :goto_99
    iget p1, v4, Lokio/Segment;->pos:I

    goto :goto_65

    :cond_9c
    add-int/lit8 v9, v9, 0x1

    goto :goto_93

    :cond_9f
    add-int/lit8 p2, p2, 0x1

    goto :goto_8d

    .line 1547
    :cond_a2
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 1549
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_b0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b0
    move-wide p2, v0

    goto :goto_7d

    :cond_b2
    return-wide v5

    .line 1409
    :cond_b3
    :goto_b3
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v10, v7, p2

    if-lez v10, :cond_132

    .line 1510
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v9, :cond_f9

    .line 1512
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 1513
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 1514
    :goto_cc
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_131

    .line 1515
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 1516
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 1517
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_dc
    if-ge p2, p3, :cond_e9

    .line 1519
    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_63

    if-ne v7, p1, :cond_e6

    goto/16 :goto_63

    :cond_e6
    add-int/lit8 p2, p2, 0x1

    goto :goto_dc

    .line 1527
    :cond_e9
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 1529
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_f7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f7
    move-wide p2, v0

    goto :goto_cc

    .line 1533
    :cond_f9
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object p1

    .line 1534
    :goto_fd
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, v7

    if-gez v3, :cond_131

    .line 1535
    iget-object v3, v4, Lokio/Segment;->data:[B

    .line 1536
    iget v7, v4, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 1537
    iget p3, v4, Lokio/Segment;->limit:I

    :goto_10d
    if-ge p2, p3, :cond_121

    .line 1539
    aget-byte v7, v3, p2

    .line 1540
    array-length v8, p1

    const/4 v9, 0x0

    :goto_113
    if-ge v9, v8, :cond_11e

    aget-byte v10, p1, v9

    if-ne v7, v10, :cond_11b

    goto/16 :goto_99

    :cond_11b
    add-int/lit8 v9, v9, 0x1

    goto :goto_113

    :cond_11e
    add-int/lit8 p2, p2, 0x1

    goto :goto_10d

    .line 1547
    :cond_121
    iget p2, v4, Lokio/Segment;->limit:I

    iget p3, v4, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 1549
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_12f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12f
    move-wide p2, v0

    goto :goto_fd

    :cond_131
    return-wide v5

    .line 1411
    :cond_132
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    if-nez v4, :cond_139

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_139
    move-wide v0, v7

    goto/16 :goto_b3

    :cond_13c
    return-wide v5

    .line 1501
    :cond_13d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex < 0: "

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

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 91
    new-instance v0, Lokio/Buffer$inputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 56
    new-instance v0, Lokio/Buffer$outputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .registers 2

    .line 87
    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_36

    .line 856
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 857
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 859
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/Segment;->pos:I

    .line 860
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 862
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne p1, v2, :cond_35

    .line 863
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 864
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_35
    return v1

    :cond_36
    const/4 p1, -0x1

    return p1
.end method

.method public read([BII)I
    .registers 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 837
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_39

    .line 838
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 839
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 841
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->pos:I

    .line 842
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 844
    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_38

    .line 845
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 846
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_38
    return p3

    :cond_39
    const/4 p1, -0x1

    return p1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_22

    .line 1382
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_19

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_19
    cmp-long v0, p2, v2

    if-lez v0, :cond_1e

    move-wide p2, v2

    .line 1384
    :cond_1e
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-wide p2

    .line 1381
    :cond_22
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

.method public readAll(Lokio/Sink;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 648
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_10
    return-wide v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .registers 4

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_14

    .line 1773
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1774
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    .line 1771
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 263
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2f

    .line 265
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 266
    :cond_f
    iget v1, v0, Lokio/Segment;->pos:I

    .line 267
    iget v2, v0, Lokio/Segment;->limit:I

    .line 269
    iget-object v3, v0, Lokio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    .line 270
    aget-byte v1, v3, v1

    .line 271
    iget-wide v5, p0, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    if-ne v4, v2, :cond_2c

    .line 274
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 275
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_2e

    .line 277
    :cond_2c
    iput v4, v0, Lokio/Segment;->pos:I

    :goto_2e
    return v1

    .line 263
    :cond_2f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByteArray()[B
    .registers 3

    .line 810
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_26

    .line 815
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_20

    long-to-int p2, p1

    .line 817
    new-array p1, p2, [B

    .line 818
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-object p1

    .line 815
    :cond_20
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 814
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3

    .line 519
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 522
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 399
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_be

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 411
    :cond_f
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v10, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 413
    :cond_16
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 414
    iget v12, v10, Lokio/Segment;->pos:I

    .line 415
    iget v13, v10, Lokio/Segment;->limit:I

    :goto_1c
    if-ge v12, v13, :cond_9f

    .line 418
    aget-byte v15, v11, v12

    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v15, v14, :cond_70

    const/16 v1, 0x39

    int-to-byte v1, v1

    if-gt v15, v1, :cond_70

    sub-int/2addr v14, v15

    const-wide v1, -0xcccccccccccccccL

    cmp-long v16, v3, v1

    if-ltz v16, :cond_43

    if-nez v16, :cond_3c

    int-to-long v1, v14

    cmp-long v16, v1, v5

    if-gez v16, :cond_3c

    goto :goto_43

    :cond_3c
    const-wide/16 v1, 0xa

    mul-long v3, v3, v1

    int-to-long v1, v14

    add-long/2addr v3, v1

    goto :goto_7b

    .line 424
    :cond_43
    :goto_43
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v1

    if-nez v8, :cond_55

    .line 425
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 426
    :cond_55
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_70
    const/16 v1, 0x2d

    int-to-byte v1, v1

    if-ne v15, v1, :cond_80

    if-nez v7, :cond_80

    const-wide/16 v1, 0x1

    sub-long/2addr v5, v1

    const/4 v8, 0x1

    :goto_7b
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_80
    if-eqz v7, :cond_84

    const/4 v9, 0x1

    goto :goto_9f

    .line 435
    :cond_84
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9f
    :goto_9f
    if-ne v12, v13, :cond_ab

    .line 448
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 449
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_ad

    .line 451
    :cond_ab
    iput v12, v10, Lokio/Segment;->pos:I

    :goto_ad
    if-nez v9, :cond_b3

    .line 453
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_f

    .line 455
    :cond_b3
    iget-wide v1, v0, Lokio/Buffer;->size:J

    int-to-long v5, v7

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lokio/Buffer;->size:J

    if-eqz v8, :cond_bc

    goto :goto_bd

    :cond_bc
    neg-long v3, v3

    :goto_bd
    return-wide v3

    .line 399
    :cond_be
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_f

    .line 641
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void

    .line 638
    :cond_f
    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 639
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 827
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 828
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    add-int/2addr v0, v1

    goto :goto_6

    .line 829
    :cond_14
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1a
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 461
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b5

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 468
    :cond_b
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 470
    :cond_12
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 471
    iget v8, v6, Lokio/Segment;->pos:I

    .line 472
    iget v9, v6, Lokio/Segment;->limit:I

    :goto_18
    if-ge v8, v9, :cond_9a

    .line 477
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_29

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_29

    sub-int v11, v10, v11

    goto :goto_43

    :cond_29
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_38

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_38

    :goto_33
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    goto :goto_43

    :cond_38
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_7b

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_7b

    goto :goto_33

    :goto_43
    const-wide/high16 v12, -0x1000000000000000L  # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_53

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 497
    :cond_53
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 498
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7b
    if-eqz v0, :cond_7f

    const/4 v1, 0x1

    goto :goto_9a

    .line 486
    :cond_7f
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    :goto_9a
    if-ne v8, v9, :cond_a6

    .line 508
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 509
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_a8

    .line 511
    :cond_a6
    iput v8, v6, Lokio/Segment;->pos:I

    :goto_a8
    if-nez v1, :cond_ae

    .line 513
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_b

    .line 515
    :cond_ae
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lokio/Buffer;->size:J

    return-wide v4

    .line 461
    :cond_b5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 322
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_73

    .line 324
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 325
    :cond_f
    iget v1, v0, Lokio/Segment;->pos:I

    .line 326
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_3c

    .line 330
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 331
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 332
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 333
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 336
    :cond_3c
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    .line 337
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .line 338
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .line 339
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .line 340
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 341
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lokio/Buffer;->size:J

    if-ne v7, v4, :cond_70

    .line 344
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 345
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_72

    .line 347
    :cond_70
    iput v7, v0, Lokio/Segment;->pos:I

    :goto_72
    return v1

    .line 322
    :cond_73
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readIntLe()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 355
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_94

    .line 357
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 358
    :cond_f
    iget v1, v0, Lokio/Segment;->pos:I

    .line 359
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    const/16 v7, 0x20

    cmp-long v8, v5, v2

    if-gez v8, :cond_30

    .line 363
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v7

    .line 364
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 367
    :cond_30
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    .line 368
    aget-byte v1, v5, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    add-int/lit8 v1, v6, 0x1

    .line 369
    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    const/16 v6, 0x30

    shl-long/2addr v12, v6

    or-long/2addr v8, v12

    add-int/lit8 v6, v1, 0x1

    .line 370
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    or-long/2addr v8, v12

    add-int/lit8 v1, v6, 0x1

    .line 371
    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    .line 372
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x18

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 373
    aget-byte v8, v5, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    const/16 v12, 0x10

    shl-long/2addr v8, v12

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    .line 374
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x8

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 375
    aget-byte v5, v5, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v5, v6, v8

    .line 376
    iget-wide v7, p0, Lokio/Buffer;->size:J

    sub-long/2addr v7, v2

    iput-wide v7, p0, Lokio/Buffer;->size:J

    if-ne v1, v4, :cond_91

    .line 379
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 380
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_93

    .line 382
    :cond_91
    iput v1, v0, Lokio/Segment;->pos:I

    :goto_93
    return-wide v5

    .line 355
    :cond_94
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 294
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4f

    .line 296
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 297
    :cond_f
    iget v1, v0, Lokio/Segment;->pos:I

    .line 298
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_29

    .line 302
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 306
    :cond_29
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    .line 307
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 308
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lokio/Buffer;->size:J

    if-ne v7, v4, :cond_4b

    .line 311
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 312
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_4d

    .line 314
    :cond_4b
    iput v7, v0, Lokio/Segment;->pos:I

    :goto_4d
    int-to-short v0, v1

    return v0

    .line 294
    :cond_4f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShortLe()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_15

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_65

    .line 663
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_5f

    if-nez v2, :cond_23

    const-string p1, ""

    return-object p1

    .line 666
    :cond_23
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_2a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 667
    :cond_2a
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lokio/Segment;->limit:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_3f

    .line 669
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 672
    :cond_3f
    iget-object v2, v0, Lokio/Segment;->data:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 673
    iget p3, v0, Lokio/Segment;->pos:I

    add-int/2addr p3, v3

    iput p3, v0, Lokio/Segment;->pos:I

    .line 674
    iget-wide v1, p0, Lokio/Buffer;->size:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lokio/Buffer;->size:J

    .line 676
    iget p1, v0, Lokio/Segment;->limit:I

    if-ne p3, p1, :cond_5e

    .line 677
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 678
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_5e
    return-object v4

    .line 663
    :cond_5f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 662
    :cond_65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    .line 653
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 656
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 735
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_af

    .line 737
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_3f

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_28

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_3f

    :cond_28
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_34

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3f

    :cond_34
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a9

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 774
    :goto_3f
    iget-wide v7, p0, Lokio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_77

    :goto_46
    if-ge v2, v5, :cond_5d

    int-to-long v7, v2

    .line 783
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_59

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 789
    :cond_59
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    return v4

    .line 794
    :cond_5d
    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_66

    goto :goto_76

    :cond_66
    const v0, 0xdfff

    const v2, 0xd800

    if-le v2, v1, :cond_6f

    goto :goto_72

    :cond_6f
    if-lt v0, v1, :cond_72

    goto :goto_76

    :cond_72
    :goto_72
    if-ge v1, v6, :cond_75

    goto :goto_76

    :cond_75
    move v4, v1

    :goto_76
    return v4

    .line 775
    :cond_77
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a9
    const-wide/16 v0, 0x1

    .line 769
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return v4

    .line 735
    :cond_af
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readUtf8Line$jvm(J)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1d

    sub-long v2, p1, v0

    .line 718
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v4, v5, :cond_1d

    .line 720
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 721
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_24

    .line 726
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    :goto_24
    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 696
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_93

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_17

    goto :goto_19

    :cond_17
    add-long v2, p1, v0

    :goto_19
    const/16 v4, 0xa

    int-to-byte v10, v4

    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, v10

    move-wide v8, v2

    .line 702
    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_30

    .line 703
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 706
    :cond_30
    iget-wide v4, p0, Lokio/Buffer;->size:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_4c

    sub-long v0, v2, v0

    .line 705
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_4c

    .line 706
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, v10, :cond_4c

    .line 707
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 709
    :cond_4c
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    .line 710
    iget-wide v4, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    .line 75
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 710
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 711
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 711
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public request(J)Z
    .registers 6

    .line 84
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public require(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 81
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public select(Lokio/Options;)I
    .registers 5

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 525
    invoke-static {p0, p1, v0, v1, v2}, Lokio/Buffer;->selectPrefix$jvm$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    return v1

    .line 529
    :cond_10
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$jvm()[Lokio/ByteString;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    .line 530
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return v0
.end method

.method public final selectPrefix$jvm(Lokio/Options;Z)I
    .registers 20

    const-string v0, "options"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 547
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz v2, :cond_ae

    .line 550
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 551
    iget v6, v2, Lokio/Segment;->pos:I

    .line 552
    iget v7, v2, Lokio/Segment;->limit:I

    .line 554
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$jvm()[I

    move-result-object v1

    const/4 v8, 0x0

    move-object v10, v2

    const/4 v9, 0x0

    const/4 v11, -0x1

    :goto_1d
    add-int/lit8 v12, v9, 0x1

    .line 561
    aget v9, v1, v9

    add-int/lit8 v13, v12, 0x1

    .line 563
    aget v12, v1, v12

    if-eq v12, v4, :cond_28

    move v11, v12

    :cond_28
    if-nez v10, :cond_2b

    goto :goto_5c

    :cond_2b
    const/4 v12, 0x0

    if-gez v9, :cond_7c

    mul-int/lit8 v9, v9, -0x1

    add-int v14, v13, v9

    :goto_32
    add-int/lit8 v9, v6, 0x1

    .line 577
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v15, v13, 0x1

    .line 578
    aget v13, v1, v13

    if-eq v6, v13, :cond_3f

    return v11

    :cond_3f
    if-ne v15, v14, :cond_43

    const/4 v6, 0x1

    goto :goto_44

    :cond_43
    const/4 v6, 0x0

    :goto_44
    if-ne v9, v7, :cond_69

    if-nez v10, :cond_4b

    .line 583
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4b
    iget-object v5, v10, Lokio/Segment;->next:Lokio/Segment;

    if-nez v5, :cond_52

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 584
    :cond_52
    iget v7, v5, Lokio/Segment;->pos:I

    .line 585
    iget-object v9, v5, Lokio/Segment;->data:[B

    .line 586
    iget v10, v5, Lokio/Segment;->limit:I

    if-ne v5, v2, :cond_63

    if-nez v6, :cond_60

    :goto_5c
    if-eqz p2, :cond_5f

    return v3

    :cond_5f
    return v11

    :cond_60
    move-object v5, v9

    move-object v9, v12

    goto :goto_6f

    :cond_63
    move-object/from16 v16, v9

    move-object v9, v5

    move-object/from16 v5, v16

    goto :goto_6f

    :cond_69
    move-object/from16 v16, v10

    move v10, v7

    move v7, v9

    move-object/from16 v9, v16

    :goto_6f
    if-eqz v6, :cond_77

    .line 594
    aget v6, v1, v15

    move v3, v7

    move v7, v10

    move-object v10, v9

    goto :goto_a2

    :cond_77
    move v6, v7

    move v7, v10

    move v13, v15

    move-object v10, v9

    goto :goto_32

    :cond_7c
    add-int/lit8 v14, v6, 0x1

    .line 601
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int v15, v13, v9

    :goto_84
    if-ne v13, v15, :cond_87

    return v11

    .line 606
    :cond_87
    aget v3, v1, v13

    if-ne v6, v3, :cond_aa

    add-int/2addr v13, v9

    .line 607
    aget v6, v1, v13

    if-ne v14, v7, :cond_a1

    .line 616
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    if-nez v10, :cond_97

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 617
    :cond_97
    iget v3, v10, Lokio/Segment;->pos:I

    .line 618
    iget-object v5, v10, Lokio/Segment;->data:[B

    .line 619
    iget v7, v10, Lokio/Segment;->limit:I

    if-ne v10, v2, :cond_a2

    move-object v10, v12

    goto :goto_a2

    :cond_a1
    move v3, v14

    :cond_a2
    :goto_a2
    if-ltz v6, :cond_a5

    return v6

    :cond_a5
    neg-int v9, v6

    move v6, v3

    const/4 v3, -0x2

    goto/16 :goto_1d

    :cond_aa
    add-int/lit8 v13, v13, 0x1

    const/4 v3, -0x2

    goto :goto_84

    :cond_ae
    if-eqz p2, :cond_b2

    const/4 v3, -0x2

    goto :goto_b3

    :cond_b2
    const/4 v3, -0x1

    :goto_b3
    return v3
.end method

.method public final setSize$jvm(J)V
    .registers 3

    .line 48
    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-void
.end method

.method public final size()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_35

    .line 881
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_2f

    .line 883
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 72
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 884
    iget-wide v3, p0, Lokio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr p1, v5

    .line 886
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/Segment;->pos:I

    .line 888
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 889
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 890
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 881
    :cond_2f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_35
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .registers 6

    .line 1752
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_15

    long-to-int v1, v0

    .line 1753
    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1752
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lokio/Buffer;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final snapshot(I)Lokio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    .line 1758
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_b

    :cond_5
    sget-object v0, Lokio/SegmentedByteString;->Companion:Lokio/SegmentedByteString$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/SegmentedByteString$Companion;->of(Lokio/Buffer;I)Lokio/ByteString;

    move-result-object p1

    :goto_b
    return-object p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 1623
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1731
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writableSegment$jvm(I)Lokio/Segment;
    .registers 5

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_8

    if-gt p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_38

    .line 1272
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1a

    .line 1273
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    .line 1274
    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1275
    iput-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1276
    iput-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    return-object p1

    :cond_1a
    if-nez v1, :cond_1f

    .line 1280
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v1, :cond_26

    .line 1281
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_26
    iget v2, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2f

    iget-boolean p1, v1, Lokio/Segment;->owner:Z

    if-nez p1, :cond_37

    .line 1282
    :cond_2f
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    :cond_37
    return-object v1

    .line 1270
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_a
    if-lez v1, :cond_27

    const/4 v2, 0x1

    .line 1087
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1089
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1090
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 1093
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    goto :goto_a

    .line 1096
    :cond_27
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .registers 3

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, p0}, Lokio/ByteString;->write$jvm(Lokio/Buffer;)V

    return-object p0
.end method

.method public write([B)Lokio/Buffer;
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write([BII)Lokio/Buffer;
    .registers 13

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_e
    if-ge p2, p3, :cond_2d

    const/4 v0, 0x1

    .line 1069
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 1071
    iget v2, v0, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1072
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 1075
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    goto :goto_e

    .line 1078
    :cond_2d
    iget-wide p1, p0, Lokio/Buffer;->size:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1d

    .line 1115
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    sub-long/2addr p2, v0

    goto :goto_5

    .line 1116
    :cond_17
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1d
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .registers 4

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eq p1, p0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_be

    .line 1340
    iget-wide v2, p1, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    :goto_15
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_bd

    .line 1344
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_22

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_22
    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_2b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2b
    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_7f

    .line 1345
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_3f

    if-nez v1, :cond_3c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3c
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    if-eqz v1, :cond_71

    .line 1347
    iget-boolean v2, v1, Lokio/Segment;->owner:Z

    if-eqz v2, :cond_71

    iget v2, v1, Lokio/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lokio/Segment;->shared:Z

    if-eqz v4, :cond_50

    const/4 v4, 0x0

    goto :goto_52

    :cond_50
    iget v4, v1, Lokio/Segment;->pos:I

    :goto_52
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const/16 v4, 0x2000

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_71

    .line 1349
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_62

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_62
    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1350
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1351
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-void

    .line 1356
    :cond_71
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_78

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_78
    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1361
    :cond_7f
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_86

    .line 1362
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_86
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 1363
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1364
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_9d

    .line 1365
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1366
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1367
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_b0

    :cond_9d
    if-nez v4, :cond_a2

    .line 1369
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a2
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v4, :cond_a9

    .line 1370
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a9
    invoke-virtual {v4, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v1

    .line 1371
    invoke-virtual {v1}, Lokio/Segment;->compact()V

    .line 1373
    :goto_b0
    iget-wide v4, p1, Lokio/Buffer;->size:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lokio/Buffer;->size:J

    .line 1374
    iget-wide v4, p0, Lokio/Buffer;->size:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v2

    goto/16 :goto_15

    :cond_bd
    return-void

    .line 1339
    :cond_be
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lokio/Source;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_7
    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 1104
    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_15

    return-wide v0

    :cond_15
    add-long/2addr v0, v2

    goto :goto_7
.end method

.method public writeByte(I)Lokio/Buffer;
    .registers 6

    const/4 v0, 0x1

    .line 1123
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 1124
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1125
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1180
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    const-string p1, "-9223372036854775808"

    .line 1187
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 v3, 0x1

    :cond_1e
    const-wide/32 v5, 0x5f5e100

    const/16 v2, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_6c

    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_4a

    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_3e

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_3b

    goto/16 :goto_e4

    :cond_3b
    const/4 v4, 0x2

    goto/16 :goto_e4

    :cond_3e
    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-gez v6, :cond_47

    const/4 v4, 0x3

    goto/16 :goto_e4

    :cond_47
    const/4 v4, 0x4

    goto/16 :goto_e4

    :cond_4a
    const-wide/32 v4, 0xf4240

    cmp-long v6, p1, v4

    if-gez v6, :cond_5e

    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-gez v6, :cond_5b

    const/4 v4, 0x5

    goto/16 :goto_e4

    :cond_5b
    const/4 v4, 0x6

    goto/16 :goto_e4

    :cond_5e
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-gez v6, :cond_68

    const/4 v4, 0x7

    goto/16 :goto_e4

    :cond_68
    const/16 v4, 0x8

    goto/16 :goto_e4

    :cond_6c
    const-wide v4, 0xe8d4a51000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_9a

    const-wide v4, 0x2540be400L

    cmp-long v6, p1, v4

    if-gez v6, :cond_8b

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-gez v6, :cond_88

    const/16 v4, 0x9

    goto :goto_e4

    :cond_88
    const/16 v4, 0xa

    goto :goto_e4

    :cond_8b
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-gez v6, :cond_97

    const/16 v4, 0xb

    goto :goto_e4

    :cond_97
    const/16 v4, 0xc

    goto :goto_e4

    :cond_9a
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_be

    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_af

    const/16 v4, 0xd

    goto :goto_e4

    :cond_af
    const-wide v4, 0x5af3107a4000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_bb

    const/16 v4, 0xe

    goto :goto_e4

    :cond_bb
    const/16 v4, 0xf

    goto :goto_e4

    :cond_be
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d6

    const-wide v4, 0x2386f26fc10000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d3

    const/16 v4, 0x10

    goto :goto_e4

    :cond_d3
    const/16 v4, 0x11

    goto :goto_e4

    :cond_d6
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_e2

    const/16 v4, 0x12

    goto :goto_e4

    :cond_e2
    const/16 v4, 0x13

    :goto_e4
    if-eqz v3, :cond_e8

    add-int/lit8 v4, v4, 0x1

    .line 1225
    :cond_e8
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v5

    .line 1226
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1227
    iget v7, v5, Lokio/Segment;->limit:I

    add-int/2addr v7, v4

    :goto_f1
    cmp-long v8, p1, v0

    if-eqz v8, :cond_103

    int-to-long v8, v2

    .line 1229
    rem-long v10, p1, v8

    long-to-int v11, v10

    add-int/lit8 v7, v7, -0x1

    .line 1230
    sget-object v10, Lokio/Buffer;->DIGITS:[B

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    .line 1231
    div-long/2addr p1, v8

    goto :goto_f1

    :cond_103
    if-eqz v3, :cond_10c

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    .line 1234
    aput-byte p1, v6, v7

    .line 1237
    :cond_10c
    iget p1, v5, Lokio/Segment;->limit:I

    add-int/2addr p1, v4

    iput p1, v5, Lokio/Segment;->limit:I

    .line 1238
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .registers 3

    .line 44
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1246
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 1249
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1251
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1252
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1253
    iget v4, v2, Lokio/Segment;->limit:I

    add-int v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    :goto_25
    if-lt v5, v4, :cond_35

    .line 1256
    sget-object v6, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_25

    .line 1260
    :cond_35
    iget p1, v2, Lokio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lokio/Segment;->limit:I

    .line 1261
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .registers 3

    .line 44
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x4

    .line 1143
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 1144
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1145
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1146
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1147
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1148
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1149
    aput-byte p1, v1, v3

    .line 1150
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1151
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lokio/Buffer;
    .registers 12

    const/16 v0, 0x8

    .line 1158
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v1

    .line 1159
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1160
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1161
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1162
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1163
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1164
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1165
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1166
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 1167
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 1168
    aput-byte p1, v2, v4

    .line 1169
    iput v0, v1, Lokio/Segment;->limit:I

    .line 1170
    iget-wide p1, p0, Lokio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public writeShort(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x2

    .line 1130
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v0

    .line 1131
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1132
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1133
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1134
    aput-byte p1, v1, v3

    .line 1135
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1136
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 8

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_9d

    if-lt p3, p2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_7a

    .line 1055
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_53

    .line 1056
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 1057
    :cond_31
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4b

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 1057
    :cond_4b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1055
    :cond_53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex > string.length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1054
    :cond_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1053
    :cond_9d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

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

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .registers 15

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_16b

    if-lt p3, p2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_148

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_121

    :goto_20
    if-ge p2, p3, :cond_120

    .line 910
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_5f

    .line 914
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v4

    .line 915
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 916
    iget v6, v4, Lokio/Segment;->limit:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    .line 917
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 920
    aput-byte v2, v5, p2

    :goto_3f
    if-ge v8, v7, :cond_50

    .line 925
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v3, :cond_48

    goto :goto_50

    :cond_48
    add-int/lit8 v2, v8, 0x1

    add-int/2addr v8, v6

    int-to-byte p2, p2

    .line 927
    aput-byte p2, v5, v8

    move v8, v2

    goto :goto_3f

    :cond_50
    :goto_50
    add-int/2addr v6, v8

    .line 930
    iget p2, v4, Lokio/Segment;->limit:I

    sub-int/2addr v6, p2

    add-int/2addr p2, v6

    .line 931
    iput p2, v4, Lokio/Segment;->limit:I

    .line 932
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    move p2, v8

    goto :goto_20

    :cond_5f
    const/16 v4, 0x800

    if-ge v2, v4, :cond_88

    const/4 v4, 0x2

    .line 937
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v5

    .line 939
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v7, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 940
    aput-byte v2, v6, v8

    add-int/2addr v7, v4

    .line 942
    iput v7, v5, Lokio/Segment;->limit:I

    .line 943
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    :goto_85
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_88
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_f3

    const v4, 0xdfff

    if-le v2, v4, :cond_95

    goto :goto_f3

    :cond_95
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_9e

    .line 964
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9f

    :cond_9e
    const/4 v7, 0x0

    :goto_9f
    const v8, 0xdbff

    if-gt v2, v8, :cond_ed

    const v8, 0xdc00

    if-gt v8, v7, :cond_ed

    if-ge v4, v7, :cond_ac

    goto :goto_ed

    :cond_ac
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v6, v7, 0x3ff

    or-int/2addr v2, v6

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 975
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v6

    .line 977
    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v8, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 978
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    .line 979
    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 980
    aput-byte v2, v7, v9

    add-int/2addr v8, v4

    .line 982
    iput v8, v6, Lokio/Segment;->limit:I

    .line 983
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_20

    .line 966
    :cond_ed
    :goto_ed
    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move p2, v6

    goto/16 :goto_20

    :cond_f3
    :goto_f3
    const/4 v4, 0x3

    .line 949
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v6

    .line 951
    iget-object v7, v6, Lokio/Segment;->data:[B

    iget v8, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v9, v2, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    .line 952
    aput-byte v5, v7, v9

    add-int/lit8 v5, v8, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 953
    aput-byte v2, v7, v5

    add-int/2addr v8, v4

    .line 955
    iput v8, v6, Lokio/Segment;->limit:I

    .line 956
    iget-wide v2, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    goto/16 :goto_85

    :cond_120
    return-object p0

    .line 905
    :cond_121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 904
    :cond_148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 903
    :cond_16b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

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

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .registers 4

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .registers 10

    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    .line 997
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_a8

    :cond_9
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_32

    const/4 v1, 0x2

    .line 1001
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1003
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 1004
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 1006
    iput v5, v3, Lokio/Segment;->limit:I

    .line 1007
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto/16 :goto_a8

    :cond_32
    const v1, 0xdfff

    const v3, 0xd800

    if-le v3, p1, :cond_3b

    goto :goto_41

    :cond_3b
    if-lt v1, p1, :cond_41

    .line 1011
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_a8

    :cond_41
    :goto_41
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_70

    const/4 v1, 0x3

    .line 1015
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1017
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 1018
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 1019
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 1021
    iput v5, v3, Lokio/Segment;->limit:I

    .line 1022
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    goto :goto_a8

    :cond_70
    const v1, 0x10ffff

    if-gt p1, v1, :cond_a9

    const/4 v1, 0x4

    .line 1026
    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1028
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 1029
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 1030
    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    .line 1031
    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    .line 1033
    iput v5, v3, Lokio/Segment;->limit:I

    .line 1034
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    :goto_a8
    return-object p0

    .line 1037
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
