.class public Lorg/apache/commons/codec/binary/Base64;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "Base64.java"


# static fields
.field static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 74
    fill-array-data v0, :array_22

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 83
    fill-array-data v1, :array_28

    sput-object v1, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    new-array v0, v0, [B

    .line 96
    fill-array-data v0, :array_4c

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    const/16 v0, 0x7b

    new-array v0, v0, [B

    .line 115
    fill-array-data v0, :array_70

    sput-object v0, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    return-void

    :array_22
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_28
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_4c
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_70
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>(I[BZ)V
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 v1, 0x0

    goto :goto_6

    .line 273
    :cond_5
    array-length v1, p2

    :goto_6
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 143
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->DECODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->decodeTable:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_4d

    .line 279
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/binary/BaseNCodec;->containsAlphabetOrPad([B)Z

    move-result v2

    if-nez v2, :cond_2d

    if-lez p1, :cond_28

    .line 284
    array-length p1, p2

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 285
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    .line 286
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_51

    .line 288
    :cond_28
    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 289
    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    goto :goto_51

    .line 280
    :cond_2d
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 292
    :cond_4d
    iput v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    .line 293
    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    :goto_51
    if-eqz p3, :cond_56

    .line 296
    sget-object p1, Lorg/apache/commons/codec/binary/Base64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_58

    :cond_56
    sget-object p1, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    :goto_58
    iput-object p1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 192
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    return-void
.end method

.method public static encodeBase64([B)[B
    .registers 2

    const/4 v0, 0x0

    .line 554
    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZ)[B
    .registers 3

    const/4 v0, 0x0

    .line 621
    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZ)[B
    .registers 4

    const v0, 0x7fffffff

    .line 640
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([BZZI)[B
    .registers 8

    if-eqz p0, :cond_43

    .line 662
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_43

    :cond_6
    if-eqz p1, :cond_e

    .line 668
    new-instance p1, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {p1, p2}, Lorg/apache/commons/codec/binary/Base64;-><init>(Z)V

    goto :goto_16

    :cond_e
    new-instance p1, Lorg/apache/commons/codec/binary/Base64;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p1, v0, v1, p2}, Lorg/apache/commons/codec/binary/Base64;-><init>(I[BZ)V

    .line 669
    :goto_16
    invoke-virtual {p1, p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->getEncodedLength([B)J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long p2, v0, v2

    if-gtz p2, :cond_24

    .line 677
    invoke-virtual {p1, p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object p0

    return-object p0

    .line 671
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Input array too big, the output array would be bigger ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") than the specified maximum size of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    :goto_43
    return-object p0
.end method


# virtual methods
.method encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .registers 14

    .line 332
    iget-boolean v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_bf

    .line 338
    iput-boolean v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 339
    iget p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez p1, :cond_14

    iget p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-nez p1, :cond_14

    return-void

    .line 342
    :cond_14
    iget p1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object p1

    .line 343
    iget p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 344
    iget p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-eqz p3, :cond_a1

    if-eq p3, v1, :cond_73

    const/4 v1, 0x2

    if-ne p3, v1, :cond_5a

    add-int/lit8 p3, p2, 0x1

    .line 360
    iput p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v2, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v4, v3, 0xa

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v2, v4

    aput-byte v4, p1, p2

    add-int/lit8 v4, p3, 0x1

    .line 361
    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v2, v5

    aput-byte v5, p1, p3

    add-int/lit8 p3, v4, 0x1

    .line 362
    iput p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shl-int/lit8 v1, v3, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v2, v1

    aput-byte v1, p1, v4

    .line 364
    sget-object v1, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v2, v1, :cond_a1

    add-int/lit8 v1, p3, 0x1

    .line 365
    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    aput-byte v1, p1, p3

    goto :goto_a1

    .line 369
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Impossible modulus "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    add-int/lit8 p3, p2, 0x1

    .line 349
    iput p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shr-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v1, v3

    aput-byte v3, p1, p2

    add-int/lit8 v3, p3, 0x1

    .line 351
    iput v3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p1, p3

    .line 353
    sget-object p3, Lorg/apache/commons/codec/binary/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v1, p3, :cond_a1

    add-int/lit8 p3, v3, 0x1

    .line 354
    iput p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-byte v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->pad:B

    aput-byte v1, p1, v3

    add-int/lit8 v2, p3, 0x1

    .line 355
    iput v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    aput-byte v1, p1, p3

    .line 371
    :cond_a1
    :goto_a1
    iget p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int p2, v1, p2

    add-int/2addr p3, p2

    iput p3, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 373
    iget p2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez p2, :cond_132

    if-lez p3, :cond_132

    .line 374
    iget-object p2, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length p3, p2

    invoke-static {p2, v0, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object p2, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto :goto_132

    :cond_bf
    const/4 v2, 0x0

    :goto_c0
    if-ge v2, p3, :cond_132

    .line 379
    iget v3, p0, Lorg/apache/commons/codec/binary/Base64;->encodeSize:I

    invoke-virtual {p0, v3, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v3

    .line 380
    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x3

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, p2, 0x1

    .line 381
    aget-byte p2, p1, p2

    if-gez p2, :cond_d7

    add-int/lit16 p2, p2, 0x100

    .line 385
    :cond_d7
    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v6, p2

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    if-nez v4, :cond_12e

    .line 387
    iget p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v4, p2, 0x1

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v7, p0, Lorg/apache/commons/codec/binary/Base64;->encodeTable:[B

    shr-int/lit8 v8, v6, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v3, p2

    add-int/lit8 p2, v4, 0x1

    .line 388
    iput p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v3, v4

    add-int/lit8 v4, p2, 0x1

    .line 389
    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v7, v8

    aput-byte v8, v3, p2

    add-int/lit8 p2, v4, 0x1

    .line 390
    iput p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v7, v6

    aput-byte v6, v3, v4

    .line 391
    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 392
    iget v6, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v6, :cond_12e

    if-gt v6, v4, :cond_12e

    .line 393
    iget-object v4, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v6, v4

    invoke-static {v4, v0, v3, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v3, p0, Lorg/apache/commons/codec/binary/Base64;->lineSeparator:[B

    array-length v3, v3

    add-int/2addr p2, v3

    iput p2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 395
    iput v0, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    :cond_12e
    add-int/lit8 v2, v2, 0x1

    move p2, v5

    goto :goto_c0

    :cond_132
    :goto_132
    return-void
.end method

.method protected isInAlphabet(B)Z
    .registers 4

    if-ltz p1, :cond_e

    .line 781
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base64;->decodeTable:[B

    array-length v1, v0

    if-ge p1, v1, :cond_e

    aget-byte p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
