.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,2216:1\n72#2:2217\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n2134#1:2217\n*E\n"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1991
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 1993
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1994
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 2201
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 2203
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2204
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v1, -0x1

    .line 2205
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2206
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 2207
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2208
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    .line 2201
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()I
    .registers 6

    .line 2002
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_2d

    .line 2003
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_21

    const-wide/16 v0, 0x0

    goto :goto_28

    :cond_21
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_28
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 2002
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no more bytes"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final seek(J)I
    .registers 15

    .line 2012
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_fc

    const/4 v1, -0x1

    int-to-long v2, v1

    cmp-long v4, p1, v2

    if-ltz v4, :cond_d0

    .line 2013
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-gtz v4, :cond_d0

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_c4

    .line 2018
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_22

    goto/16 :goto_c4

    :cond_22
    const-wide/16 v1, 0x0

    .line 2029
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 2030
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2032
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v6, :cond_4b

    .line 2033
    iget-wide v7, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v9, p0, Lokio/Buffer$UnsafeCursor;->start:I

    if-nez v6, :cond_37

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_37
    iget v6, v6, Lokio/Segment;->pos:I

    sub-int/2addr v9, v6

    int-to-long v9, v9

    sub-long/2addr v7, v9

    cmp-long v6, v7, p1

    if-lez v6, :cond_46

    .line 2037
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object v6, v5

    move-object v5, v3

    move-wide v3, v7

    goto :goto_4c

    .line 2041
    :cond_46
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-object v6, v1

    move-wide v1, v7

    goto :goto_4c

    :cond_4b
    move-object v6, v5

    :goto_4c
    sub-long v7, v3, p1

    sub-long v9, p1, v1

    cmp-long v11, v7, v9

    if-lez v11, :cond_6b

    :goto_54
    if-nez v6, :cond_59

    .line 2051
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_59
    iget v3, v6, Lokio/Segment;->limit:I

    iget v4, v6, Lokio/Segment;->pos:I

    sub-int v5, v3, v4

    int-to-long v7, v5

    add-long/2addr v7, v1

    cmp-long v5, p1, v7

    if-ltz v5, :cond_85

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 2053
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_54

    :cond_6b
    :goto_6b
    cmp-long v1, v3, p1

    if-lez v1, :cond_83

    if-nez v5, :cond_74

    .line 2060
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_74
    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v5, :cond_7b

    .line 2061
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7b
    iget v1, v5, Lokio/Segment;->limit:I

    iget v2, v5, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_6b

    :cond_83
    move-wide v1, v3

    move-object v6, v5

    .line 2066
    :cond_85
    iget-boolean v3, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v3, :cond_aa

    if-nez v6, :cond_8e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8e
    iget-boolean v3, v6, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_aa

    .line 2067
    invoke-virtual {v6}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v3

    .line 2068
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v4, v6, :cond_9c

    .line 2069
    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2071
    :cond_9c
    invoke-virtual {v6, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v6

    .line 2072
    iget-object v0, v6, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v0, :cond_a7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a7
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2076
    :cond_aa
    iput-object v6, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2077
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    if-nez v6, :cond_b3

    .line 2078
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b3
    iget-object v0, v6, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2079
    iget v0, v6, Lokio/Segment;->pos:I

    sub-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2080
    iget p1, v6, Lokio/Segment;->limit:I

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    sub-int/2addr p1, v0

    return p1

    :cond_c4
    :goto_c4
    const/4 v0, 0x0

    .line 2019
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2020
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2021
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2022
    iput v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2023
    iput v1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return v1

    .line 2014
    :cond_d0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2015
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "offset=%s > size=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2014
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2012
    :cond_fc
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
