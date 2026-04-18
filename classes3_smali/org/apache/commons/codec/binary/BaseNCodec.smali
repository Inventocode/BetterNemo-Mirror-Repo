.class public abstract Lorg/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


# instance fields
.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field protected final pad:B

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .registers 11

    const/16 v5, 0x3d

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 192
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIIIB)V

    return-void
.end method

.method protected constructor <init>(IIIIB)V
    .registers 7

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 207
    iput p2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    const/4 p1, 0x0

    if-lez p3, :cond_e

    if-lez p4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_14

    .line 209
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_14
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 210
    iput p4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 212
    iput-byte p5, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    return-void
.end method

.method private resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .registers 6

    .line 249
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 251
    iput v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 252
    iput v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    goto :goto_1d

    .line 254
    :cond_12
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 255
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iput-object v2, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 258
    :goto_1d
    iget-object p1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object p1
.end method


# virtual methods
.method available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .registers 3

    .line 232
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_a

    iget v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget p1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, p1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected containsAlphabetOrPad([B)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 499
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1a

    aget-byte v3, p1, v2

    .line 500
    iget-byte v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    if-eq v4, v3, :cond_18

    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    return v0
.end method

.method abstract encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .registers 5

    if-eqz p1, :cond_1f

    .line 426
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1f

    .line 429
    :cond_6
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 430
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    const/4 v1, -0x1

    .line 431
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 432
    iget p1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr p1, v1

    new-array v1, p1, [B

    .line 433
    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    return-object v1

    :cond_1f
    :goto_1f
    return-object p1
.end method

.method protected ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .registers 6

    .line 269
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_c

    array-length v1, v0

    iget v2, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_b

    goto :goto_c

    :cond_b
    return-object v0

    .line 270
    :cond_c
    :goto_c
    invoke-direct {p0, p2}, Lorg/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultBufferSize()I
    .registers 2

    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .registers 8

    .line 518
    array-length p1, p1

    iget v0, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    int-to-long v0, p1

    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 519
    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p1, :cond_1e

    int-to-long v2, p1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, p1

    .line 521
    div-long/2addr v2, v4

    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_1e
    return-wide v0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .registers 7

    .line 292
    iget-object v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_20

    .line 293
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 294
    iget-object v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr p1, p3

    iput p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 296
    iget p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt p1, p2, :cond_1f

    const/4 p1, 0x0

    .line 297
    iput-object p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    :cond_1f
    return p3

    .line 301
    :cond_20
    iget-boolean p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz p1, :cond_26

    const/4 p1, -0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method
