.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;,
        Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 132
    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 137
    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 168
    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000  # 1.5f
        0x40000000  # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .registers 3

    const/4 v0, 0x0

    .line 719
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 720
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 721
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 227
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3b

    .line 231
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    const/4 v7, 0x1

    if-ne v5, v7, :cond_36

    .line 233
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_36

    .line 235
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 236
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 238
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_32
    if-nez v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    :cond_36
    if-eqz v5, :cond_39

    const/4 v3, 0x0

    :cond_39
    move v2, v4

    goto :goto_7

    .line 251
    :cond_3b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .registers 11

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 659
    :goto_9
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_f

    return p2

    .line 664
    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    .line 665
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    const/4 v3, 0x2

    if-le v0, v2, :cond_29

    .line 667
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_29

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_29

    .line 668
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_29
    if-le v0, v3, :cond_3e

    .line 670
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_3e

    aget-byte v4, p0, p1

    if-nez v4, :cond_3e

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_3e

    .line 674
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_3e
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_41
    if-ge p1, v4, :cond_63

    .line 682
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_4a

    goto :goto_60

    :cond_4a
    add-int/lit8 v5, p1, -0x2

    .line 685
    aget-byte v6, p0, v5

    if-nez v6, :cond_5e

    add-int/lit8 v6, p1, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_5e

    aget-byte v6, p0, p1

    if-ne v6, v2, :cond_5e

    .line 686
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    return v5

    :cond_5e
    add-int/lit8 p1, p1, -0x2

    :goto_60
    add-int/lit8 p1, p1, 0x3

    goto :goto_41

    :cond_63
    if-le v0, v3, :cond_78

    add-int/lit8 p1, p2, -0x3

    .line 698
    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    goto :goto_91

    :cond_76
    const/4 p1, 0x0

    goto :goto_92

    :cond_78
    if-ne v0, v3, :cond_89

    .line 700
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_76

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    goto :goto_91

    .line 701
    :cond_89
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_76

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_76

    :goto_91
    const/4 p1, 0x1

    :goto_92
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a1

    add-int/lit8 p1, p2, -0x2

    .line 705
    aget-byte p1, p0, p1

    if-nez p1, :cond_ab

    aget-byte p1, p0, v4

    if-nez p1, :cond_ab

    goto :goto_a9

    .line 706
    :cond_a1
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_ab

    aget-byte p1, p0, v4

    if-nez p1, :cond_ab

    :goto_a9
    const/4 p1, 0x1

    goto :goto_ac

    :cond_ab
    const/4 p1, 0x0

    :goto_ac
    aput-boolean p1, p3, v2

    .line 708
    aget-byte p0, p0, v4

    if-nez p0, :cond_b3

    const/4 v1, 0x1

    :cond_b3
    aput-boolean v1, p3, v3

    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .registers 5

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    .line 726
    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 291
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 279
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .registers 5

    const-string v0, "video/avc"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1f

    :cond_e
    const-string v0, "video/hevc"

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static parseH265SpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x2

    .line 451
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;
    .registers 25

    .line 465
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v1, 0x4

    .line 466
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v2, 0x3

    .line 467
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 468
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    const/4 v4, 0x2

    .line 469
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 470
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    const/4 v5, 0x5

    .line 471
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    const/16 v11, 0x20

    const/4 v12, 0x1

    if-ge v10, v11, :cond_38

    .line 474
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_35

    shl-int v11, v12, v10

    or-int/2addr v9, v11

    :cond_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_38
    const/4 v10, 0x6

    new-array v11, v10, [I

    const/4 v13, 0x0

    :goto_3c
    const/16 v14, 0x8

    if-ge v13, v10, :cond_49

    .line 480
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3c

    .line 482
    :cond_49
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v13

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_4f
    if-ge v10, v3, :cond_64

    .line 485
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_59

    add-int/lit8 v15, v15, 0x59

    .line 488
    :cond_59
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_61

    add-int/lit8 v15, v15, 0x8

    :cond_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 492
    :cond_64
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v3, :cond_70

    rsub-int/lit8 v10, v3, 0x8

    mul-int/lit8 v10, v10, 0x2

    .line 494
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 496
    :cond_70
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    .line 497
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    if-ne v10, v2, :cond_7d

    .line 499
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 501
    :cond_7d
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 502
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 503
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_b6

    .line 504
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 505
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 506
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 507
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    if-eq v10, v12, :cond_a3

    if-ne v10, v4, :cond_a0

    goto :goto_a3

    :cond_a0
    const/16 v21, 0x1

    goto :goto_a5

    :cond_a3
    :goto_a3
    const/16 v21, 0x2

    :goto_a5
    if-ne v10, v12, :cond_a9

    const/4 v10, 0x2

    goto :goto_aa

    :cond_a9
    const/4 v10, 0x1

    :goto_aa
    add-int v17, v17, v18

    mul-int v21, v21, v17

    sub-int v2, v2, v21

    add-int v19, v19, v20

    mul-int v10, v10, v19

    sub-int v16, v16, v10

    .line 514
    :cond_b6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 515
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 516
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 518
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_c9

    const/16 v17, 0x0

    goto :goto_cb

    :cond_c9
    move/from16 v17, v3

    :goto_cb
    move/from16 v5, v17

    :goto_cd
    if-gt v5, v3, :cond_db

    .line 519
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 520
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 521
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    .line 523
    :cond_db
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 524
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 525
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 526
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 527
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 528
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 530
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 531
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 532
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipH265ScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 534
    :cond_fc
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 535
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 537
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 538
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 539
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 540
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 542
    :cond_111
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipShortTermReferencePictureSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V

    .line 543
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_12a

    const/4 v5, 0x0

    .line 545
    :goto_11b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    if-ge v5, v3, :cond_12a

    add-int/lit8 v3, v10, 0x4

    add-int/2addr v3, v12

    .line 548
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11b

    .line 551
    :cond_12a
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/high16 v3, 0x3f800000  # 1.0f

    .line 553
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1a9

    .line 554
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_175

    .line 555
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_155

    const/16 v4, 0x10

    .line 557
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 558
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    if-eqz v5, :cond_175

    if-eqz v4, :cond_175

    int-to-float v3, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_175

    .line 562
    :cond_155
    sget-object v5, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v10, v5

    if-ge v4, v10, :cond_15d

    .line 563
    aget v3, v5, v4

    goto :goto_175

    :cond_15d
    const/16 v5, 0x2e

    .line 565
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NalUnitUtil"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_175
    :goto_175
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 569
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 571
    :cond_17e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_192

    .line 572
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 573
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_192

    const/16 v1, 0x18

    .line 575
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 578
    :cond_192
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 579
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 580
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 582
    :cond_19e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 583
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1a9

    mul-int/lit8 v16, v16, 0x2

    :cond_1a9
    move/from16 v14, v16

    .line 590
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;

    move-object v5, v0

    move-object v10, v11

    move v11, v13

    move v12, v15

    move v13, v2

    move v15, v3

    invoke-direct/range {v5 .. v15}, Lcom/google/android/exoplayer2/util/NalUnitUtil$H265SpsData;-><init>(IZII[IIIIIF)V

    return-object v0
.end method

.method public static parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 613
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parsePpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .registers 4

    .line 626
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 627
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 628
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 629
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 630
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 631
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 304
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->parseSpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .registers 24

    .line 317
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 318
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 319
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 320
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 321
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/16 v10, 0x64

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x6e

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x7a

    if-eq v3, v10, :cond_4b

    const/16 v10, 0xf4

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x2c

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x53

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x56

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x76

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x80

    if-eq v3, v10, :cond_4b

    const/16 v10, 0x8a

    if-ne v3, v10, :cond_48

    goto :goto_4b

    :cond_48
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_84

    .line 335
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    if-ne v10, v2, :cond_56

    .line 337
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    goto :goto_57

    :cond_56
    const/4 v11, 0x0

    .line 339
    :goto_57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 340
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 341
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 342
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_84

    if-eq v10, v2, :cond_6b

    const/16 v12, 0x8

    goto :goto_6d

    :cond_6b
    const/16 v12, 0xc

    :goto_6d
    const/4 v13, 0x0

    :goto_6e
    if-ge v13, v12, :cond_84

    .line 346
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_81

    const/4 v14, 0x6

    if-ge v13, v14, :cond_7c

    const/16 v14, 0x10

    goto :goto_7e

    :cond_7c
    const/16 v14, 0x40

    .line 348
    :goto_7e
    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V

    :cond_81
    add-int/lit8 v13, v13, 0x1

    goto :goto_6e

    .line 354
    :cond_84
    :goto_84
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    .line 355
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    if-nez v13, :cond_97

    .line 360
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    goto :goto_b8

    :cond_97
    if-ne v13, v9, :cond_b7

    .line 362
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    .line 363
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 364
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 365
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    int-to-long v1, v15

    const/4 v15, 0x0

    :goto_a9
    int-to-long v7, v15

    cmp-long v17, v7, v1

    if-gez v17, :cond_b4

    .line 367
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_a9

    :cond_b4
    move v15, v14

    const/4 v14, 0x0

    goto :goto_b9

    :cond_b7
    const/4 v14, 0x0

    :goto_b8
    const/4 v15, 0x0

    .line 370
    :goto_b9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 371
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 373
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/2addr v1, v9

    .line 374
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/2addr v2, v9

    .line 375
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    rsub-int/lit8 v7, v16, 0x2

    mul-int v7, v7, v2

    if-nez v16, :cond_d6

    .line 378
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 381
    :cond_d6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    const/16 v2, 0x10

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v7, v7, 0x10

    .line 384
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 386
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 387
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    .line 388
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 389
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    if-nez v10, :cond_fa

    rsub-int/lit8 v10, v16, 0x2

    goto :goto_10f

    :cond_fa
    const/16 v19, 0x2

    const/4 v9, 0x3

    if-ne v10, v9, :cond_103

    const/4 v9, 0x1

    const/16 v20, 0x1

    goto :goto_106

    :cond_103
    const/4 v9, 0x1

    const/16 v20, 0x2

    :goto_106
    if-ne v10, v9, :cond_109

    const/4 v9, 0x2

    :cond_109
    rsub-int/lit8 v10, v16, 0x2

    mul-int v10, v10, v9

    move/from16 v9, v20

    :goto_10f
    add-int/2addr v2, v8

    mul-int v2, v2, v9

    sub-int/2addr v1, v2

    add-int v17, v17, v18

    mul-int v17, v17, v10

    sub-int v7, v7, v17

    :cond_119
    move v8, v7

    move v7, v1

    const/high16 v1, 0x3f800000  # 1.0f

    .line 406
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_167

    .line 408
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_167

    const/16 v2, 0x8

    .line 410
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v9, 0xff

    if-ne v2, v9, :cond_146

    const/16 v9, 0x10

    .line 412
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 413
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    if-eqz v2, :cond_144

    if-eqz v0, :cond_144

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_144
    move v9, v1

    goto :goto_169

    .line 417
    :cond_146
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v9, v0

    if-ge v2, v9, :cond_14f

    .line 418
    aget v0, v0, v2

    move v9, v0

    goto :goto_169

    :cond_14f
    const/16 v0, 0x2e

    .line 420
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NalUnitUtil"

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_167
    const/high16 v9, 0x3f800000  # 1.0f

    .line 425
    :goto_169
    new-instance v0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    move-object v2, v0

    move v10, v11

    move/from16 v11, v16

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIIIIFZZIIIZ)V

    return-object v0
.end method

.method private static skipH265ScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    .line 748
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_2d

    :cond_14
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    .line 752
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    .line 755
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_24
    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_2d

    .line 758
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    const/4 v5, 0x3

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    :goto_6
    if-ge v2, p1, :cond_1a

    if-eqz v0, :cond_13

    .line 738
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 739
    rem-int/lit16 v0, v0, 0x100

    :cond_13
    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private static skipShortTermReferencePictureSets(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;)V
    .registers 9

    .line 766
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v0, :cond_4d

    if-eqz v2, :cond_10

    .line 776
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    :cond_10
    if-eqz v3, :cond_27

    .line 779
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 780
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v5, 0x0

    :goto_19
    if-gt v5, v4, :cond_4a

    .line 782
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 783
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 787
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 788
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v4, :cond_3d

    .line 791
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 792
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v5, :cond_49

    .line 795
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 796
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_49
    move v4, v6

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    return-void
.end method

.method public static unescapeStream([BI)I
    .registers 10

    .line 182
    sget-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_28

    .line 186
    :try_start_8
    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 188
    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v4

    if-gt v5, v3, :cond_1c

    .line 190
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 191
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    .line 193
    :cond_1c
    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :catchall_26
    move-exception p0

    goto :goto_4c

    :cond_28
    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2c
    if-ge v2, v3, :cond_45

    .line 202
    sget-object v6, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 204
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 206
    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    .line 207
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_45
    sub-int v1, p1, v4

    .line 212
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    monitor-exit v0

    return p1

    .line 214
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_26

    throw p0
.end method
