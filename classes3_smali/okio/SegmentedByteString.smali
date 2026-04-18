.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/SegmentedByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n1#1,325:1\n257#1,12:326\n257#1,12:338\n257#1,12:350\n257#1,12:362\n257#1,12:374\n279#1,14:386\n279#1,14:400\n257#1,12:414\n*E\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n107#1,12:326\n117#1,12:338\n178#1,12:350\n189#1,12:362\n195#1,12:374\n217#1,14:386\n236#1,14:400\n308#1,12:414\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokio/SegmentedByteString$Companion;


# instance fields
.field private final transient directory:[I

.field private final transient segments:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/SegmentedByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/SegmentedByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/SegmentedByteString;->Companion:Lokio/SegmentedByteString$Companion;

    return-void
.end method

.method private constructor <init>([[B[I)V
    .registers 4

    .line 56
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    return-void
.end method

.method public synthetic constructor <init>([[B[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    return-void
.end method

.method public static final synthetic access$segment(Lokio/SegmentedByteString;I)I
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result p0

    return p0
.end method

.method private final segment(I)I
    .registers 5

    .line 169
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_f

    goto :goto_10

    :cond_f
    not-int p1, p1

    :goto_10
    return p1
.end method

.method private final toByteString()Lokio/ByteString;
    .registers 3

    .line 249
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    .line 323
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public digest$jvm(Ljava/lang/String;)Lokio/ByteString;
    .registers 8

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 257
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_2f

    .line 261
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v3

    add-int v4, v0, v1

    aget v3, v3, v4

    .line 262
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v4

    aget v4, v4, v1

    .line 264
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v5

    aget-object v5, v5, v1

    sub-int v2, v4, v2

    .line 108
    invoke-virtual {p1, v5, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_10

    .line 110
    :cond_2f
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v1, "digest.digest()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    goto :goto_21

    .line 297
    :cond_5
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_20

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_20

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/SegmentedByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public final getDirectory()[I
    .registers 2

    .line 55
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    return-object v0
.end method

.method public final getSegments()[[B
    .registers 2

    .line 54
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    return-object v0
.end method

.method public getSize$jvm()I
    .registers 3

    .line 173
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 303
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$jvm()I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 257
    :cond_7
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_10
    if-ge v1, v0, :cond_37

    .line 261
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v4

    add-int v5, v0, v1

    aget v4, v4, v5

    .line 262
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v5

    aget v5, v5, v1

    .line 264
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v6

    aget-object v6, v6, v1

    sub-int v2, v5, v2

    add-int/2addr v2, v4

    :goto_29
    if-ge v4, v2, :cond_33

    mul-int/lit8 v3, v3, 0x1f

    .line 312
    aget-byte v7, v6, v4

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_33
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_10

    .line 316
    :cond_37
    invoke-virtual {p0, v3}, Lokio/ByteString;->setHashCode$jvm(I)V

    return v3
.end method

.method public hex()Ljava/lang/String;
    .registers 2

    .line 99
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public internalArray$jvm()[B
    .registers 2

    .line 251
    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public internalGet$jvm(I)B
    .registers 9

    .line 159
    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 160
    invoke-direct {p0, p1}, Lokio/SegmentedByteString;->segment(I)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    .line 161
    :cond_18
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 162
    :goto_1e
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 163
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .registers 11

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_53

    .line 214
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_10

    goto :goto_53

    :cond_10
    add-int/2addr p4, p1

    .line 279
    invoke-static {p0, p1}, Lokio/SegmentedByteString;->access$segment(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_15
    if-ge p1, p4, :cond_51

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_23

    .line 282
    :cond_1b
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 283
    :goto_23
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 284
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    .line 286
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v4, v2

    .line 288
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v2

    aget-object v2, v2, v1

    .line 218
    invoke-virtual {p2, p3, v2, v4, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-nez v2, :cond_4c

    return v0

    :cond_4c
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_51
    const/4 p1, 0x1

    return p1

    :cond_53
    :goto_53
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .registers 11

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_59

    .line 230
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_59

    if-ltz p3, :cond_59

    .line 231
    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_16

    goto :goto_59

    :cond_16
    add-int/2addr p4, p1

    .line 279
    invoke-static {p0, p1}, Lokio/SegmentedByteString;->access$segment(Lokio/SegmentedByteString;I)I

    move-result v1

    :goto_1b
    if-ge p1, p4, :cond_57

    if-nez v1, :cond_21

    const/4 v2, 0x0

    goto :goto_29

    .line 282
    :cond_21
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 283
    :goto_29
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 284
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v4

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    .line 286
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v4, v2

    .line 288
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v2

    aget-object v2, v2, v1

    .line 237
    invoke-static {v2, v4, p2, p3, v3}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_52

    return v0

    :cond_52
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_57
    const/4 p1, 0x1

    return p1

    :cond_59
    :goto_59
    return v0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .registers 2

    .line 101
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 9

    .line 176
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 257
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v2, v1, :cond_2e

    .line 261
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v5

    add-int v6, v1, v2

    aget v5, v5, v6

    .line 262
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v6

    aget v6, v6, v2

    .line 264
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v7

    aget-object v7, v7, v2

    sub-int v3, v6, v3

    .line 179
    invoke-static {v7, v5, v0, v4, v3}, Lokio/-Platform;->arraycopy([BI[BII)V

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_e

    :cond_2e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 320
    invoke-direct {p0}, Lokio/SegmentedByteString;->toByteString()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write$jvm(Lokio/Buffer;)V
    .registers 13

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v1, v0, :cond_4c

    .line 261
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v3

    add-int v4, v0, v1

    aget v7, v3, v4

    .line 262
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getDirectory()[I

    move-result-object v3

    aget v3, v3, v1

    .line 264
    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSegments()[[B

    move-result-object v4

    aget-object v6, v4, v1

    sub-int v2, v3, v2

    .line 196
    new-instance v4, Lokio/Segment;

    add-int v8, v7, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lokio/Segment;-><init>([BIIZZ)V

    .line 197
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_39

    .line 198
    iput-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 199
    iput-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 200
    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_48

    :cond_39
    if-nez v2, :cond_3e

    .line 202
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3e
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_45

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_45
    invoke-virtual {v2, v4}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    :goto_48
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_c

    .line 205
    :cond_4c
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->setSize$jvm(J)V

    return-void
.end method
