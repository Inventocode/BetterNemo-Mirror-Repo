.class public final Lokio/internal/ByteStringKt;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/ByteStringKt\n+ 2 -Util.kt\nokio/-Util\n+ 3 Utf8.kt\nokio/Utf8\n*L\n1#1,301:1\n57#2:302\n63#2:303\n63#2:304\n63#2:305\n57#2:321\n63#2:333\n57#2:353\n63#2:361\n63#2:373\n63#2:381\n57#2:405\n63#2:413\n63#2:417\n63#2:429\n63#2:437\n63#2:445\n206#3,7:306\n119#3:313\n213#3,5:314\n119#3:319\n220#3:320\n222#3:322\n390#3,2:323\n119#3:325\n393#3,6:326\n124#3:332\n399#3:334\n119#3:335\n400#3,11:336\n119#3:347\n413#3:348\n119#3:349\n415#3,2:350\n224#3:352\n226#3:354\n431#3,3:355\n119#3:358\n434#3:359\n124#3:360\n437#3,10:362\n124#3:372\n447#3:374\n119#3:375\n448#3,4:376\n124#3:380\n452#3:382\n119#3:383\n453#3,12:384\n119#3:396\n466#3,2:397\n119#3:399\n470#3:400\n119#3:401\n472#3,2:402\n228#3:404\n230#3:406\n489#3,3:407\n119#3:410\n492#3:411\n124#3:412\n495#3,2:414\n124#3:416\n499#3,10:418\n124#3:428\n509#3:430\n119#3:431\n510#3,4:432\n124#3:436\n514#3:438\n119#3:439\n515#3,4:440\n124#3:444\n519#3:446\n119#3:447\n520#3,13:448\n119#3:461\n534#3,2:462\n119#3:464\n537#3,2:465\n119#3:467\n541#3:468\n119#3:469\n543#3,2:470\n235#3:472\n119#3:473\n236#3,5:474\n*E\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/ByteStringKt\n*L\n57#1:302\n58#1:303\n212#1:304\n213#1:305\n287#1:321\n287#1:333\n287#1:353\n287#1:361\n287#1:373\n287#1:381\n287#1:405\n287#1:413\n287#1:417\n287#1:429\n287#1:437\n287#1:445\n287#1,7:306\n287#1:313\n287#1,5:314\n287#1:319\n287#1:320\n287#1:322\n287#1,2:323\n287#1:325\n287#1,6:326\n287#1:332\n287#1:334\n287#1:335\n287#1,11:336\n287#1:347\n287#1:348\n287#1:349\n287#1,2:350\n287#1:352\n287#1:354\n287#1,3:355\n287#1:358\n287#1:359\n287#1:360\n287#1,10:362\n287#1:372\n287#1:374\n287#1:375\n287#1,4:376\n287#1:380\n287#1:382\n287#1:383\n287#1,12:384\n287#1:396\n287#1,2:397\n287#1:399\n287#1:400\n287#1:401\n287#1,2:402\n287#1:404\n287#1:406\n287#1,3:407\n287#1:410\n287#1:411\n287#1:412\n287#1,2:414\n287#1:416\n287#1,10:418\n287#1:428\n287#1:430\n287#1:431\n287#1,4:432\n287#1:436\n287#1:438\n287#1:439\n287#1,4:440\n287#1:444\n287#1:446\n287#1:447\n287#1,13:448\n287#1:461\n287#1,2:462\n287#1:464\n287#1,2:465\n287#1:467\n287#1:468\n287#1:469\n287#1,2:470\n287#1:472\n287#1:473\n287#1,5:474\n*E\n"
.end annotation


# static fields
.field private static final COMMON_EMPTY:Lokio/ByteString;

.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 51
    fill-array-data v0, :array_16

    sput-object v0, Lokio/internal/ByteStringKt;->HEX_DIGITS:[C

    .line 224
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->of([B)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/ByteStringKt;->COMMON_EMPTY:Lokio/ByteString;

    return-void

    nop

    :array_16
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 287
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_8
    :goto_8
    if-ge v4, v2, :cond_1d7

    .line 208
    aget-byte v7, v0, v4

    const/16 v8, 0x7f

    const/16 v9, 0x9f

    const/16 v10, 0x1f

    const/16 v11, 0xd

    const v12, 0xfffd

    const/16 v13, 0xa

    const/high16 v14, 0x10000

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ltz v7, :cond_71

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_26

    return v5

    :cond_26
    if-eq v7, v13, :cond_38

    if-eq v7, v11, :cond_38

    if-ltz v7, :cond_2e

    if-ge v10, v7, :cond_33

    :cond_2e
    if-le v8, v7, :cond_31

    goto :goto_35

    :cond_31
    if-lt v9, v7, :cond_35

    :cond_33
    const/4 v6, 0x1

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v6, 0x0

    :goto_36
    if-nez v6, :cond_3a

    :cond_38
    if-ne v7, v12, :cond_3b

    :cond_3a
    return v16

    :cond_3b
    if-ge v7, v14, :cond_3f

    const/4 v6, 0x1

    goto :goto_40

    :cond_3f
    const/4 v6, 0x2

    :goto_40
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    :goto_43
    move/from16 v6, v18

    if-ge v4, v2, :cond_8

    .line 216
    aget-byte v7, v0, v4

    if-ltz v7, :cond_8

    add-int/lit8 v7, v4, 0x1

    .line 217
    aget-byte v4, v0, v4

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_54

    return v5

    :cond_54
    if-eq v4, v13, :cond_66

    if-eq v4, v11, :cond_66

    if-ltz v4, :cond_5c

    if-ge v10, v4, :cond_61

    :cond_5c
    if-le v8, v4, :cond_5f

    goto :goto_63

    :cond_5f
    if-lt v9, v4, :cond_63

    :cond_61
    const/4 v6, 0x1

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v6, 0x0

    :goto_64
    if-nez v6, :cond_68

    :cond_66
    if-ne v4, v12, :cond_69

    :cond_68
    return v16

    :cond_69
    if-ge v4, v14, :cond_6d

    const/4 v4, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x2

    :goto_6e
    add-int/2addr v5, v4

    move v4, v7

    goto :goto_43

    :cond_71
    shr-int/lit8 v3, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v3, v15, :cond_c3

    add-int/lit8 v3, v4, 0x1

    if-gt v2, v3, :cond_80

    if-ne v6, v1, :cond_7f

    return v5

    :cond_7f
    return v16

    .line 396
    :cond_80
    aget-byte v7, v0, v4

    .line 397
    aget-byte v3, v0, v3

    and-int/lit16 v15, v3, 0xc0

    if-ne v15, v14, :cond_8a

    const/4 v15, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v15, 0x0

    :goto_8b
    if-nez v15, :cond_91

    if-ne v6, v1, :cond_90

    return v5

    :cond_90
    return v16

    :cond_91
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v3, v7

    if-ge v3, v14, :cond_9c

    if-ne v6, v1, :cond_9b

    return v5

    :cond_9b
    return v16

    :cond_9c
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_a1

    return v5

    :cond_a1
    if-eq v3, v13, :cond_b3

    if-eq v3, v11, :cond_b3

    if-ltz v3, :cond_a9

    if-ge v10, v3, :cond_ae

    :cond_a9
    if-le v8, v3, :cond_ac

    goto :goto_b0

    :cond_ac
    if-lt v9, v3, :cond_b0

    :cond_ae
    const/4 v6, 0x1

    goto :goto_b1

    :cond_b0
    :goto_b0
    const/4 v6, 0x0

    :goto_b1
    if-nez v6, :cond_b5

    :cond_b3
    if-ne v3, v12, :cond_b6

    :cond_b5
    return v16

    :cond_b6
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_bc

    const/4 v15, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v15, 0x2

    :goto_bd
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x2

    :goto_c0
    move v6, v7

    goto/16 :goto_8

    :cond_c3
    shr-int/lit8 v3, v7, 0x4

    const v12, 0xd800

    const v9, 0xdfff

    if-ne v3, v15, :cond_13e

    add-int/lit8 v3, v4, 0x2

    if-gt v2, v3, :cond_d5

    if-ne v6, v1, :cond_d4

    return v5

    :cond_d4
    return v16

    .line 444
    :cond_d5
    aget-byte v7, v0, v4

    add-int/lit8 v15, v4, 0x1

    .line 445
    aget-byte v15, v0, v15

    and-int/lit16 v8, v15, 0xc0

    if-ne v8, v14, :cond_e1

    const/4 v8, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v8, 0x0

    :goto_e2
    if-nez v8, :cond_e8

    if-ne v6, v1, :cond_e7

    return v5

    :cond_e7
    return v16

    .line 450
    :cond_e8
    aget-byte v3, v0, v3

    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v14, :cond_f0

    const/4 v8, 0x1

    goto :goto_f1

    :cond_f0
    const/4 v8, 0x0

    :goto_f1
    if-nez v8, :cond_f7

    if-ne v6, v1, :cond_f6

    return v5

    :cond_f6
    return v16

    :cond_f7
    const v8, -0x1e080

    xor-int/2addr v3, v8

    shl-int/lit8 v8, v15, 0x6

    xor-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v3, v7

    const/16 v7, 0x800

    if-ge v3, v7, :cond_109

    if-ne v6, v1, :cond_108

    return v5

    :cond_108
    return v16

    :cond_109
    if-le v12, v3, :cond_10c

    goto :goto_112

    :cond_10c
    if-lt v9, v3, :cond_112

    if-ne v6, v1, :cond_111

    return v5

    :cond_111
    return v16

    :cond_112
    :goto_112
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_117

    return v5

    :cond_117
    if-eq v3, v13, :cond_12d

    if-eq v3, v11, :cond_12d

    if-ltz v3, :cond_11f

    if-ge v10, v3, :cond_128

    :cond_11f
    const/16 v6, 0x7f

    if-le v6, v3, :cond_124

    goto :goto_12a

    :cond_124
    const/16 v6, 0x9f

    if-lt v6, v3, :cond_12a

    :cond_128
    const/4 v6, 0x1

    goto :goto_12b

    :cond_12a
    :goto_12a
    const/4 v6, 0x0

    :goto_12b
    if-nez v6, :cond_132

    :cond_12d
    const v6, 0xfffd

    if-ne v3, v6, :cond_133

    :cond_132
    return v16

    :cond_133
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_139

    const/4 v15, 0x1

    goto :goto_13a

    :cond_139
    const/4 v15, 0x2

    :goto_13a
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x3

    goto :goto_c0

    :cond_13e
    shr-int/lit8 v3, v7, 0x3

    if-ne v3, v15, :cond_1d3

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_14a

    if-ne v6, v1, :cond_149

    return v5

    :cond_149
    return v16

    .line 506
    :cond_14a
    aget-byte v7, v0, v4

    add-int/lit8 v8, v4, 0x1

    .line 507
    aget-byte v8, v0, v8

    and-int/lit16 v15, v8, 0xc0

    if-ne v15, v14, :cond_156

    const/4 v15, 0x1

    goto :goto_157

    :cond_156
    const/4 v15, 0x0

    :goto_157
    if-nez v15, :cond_15d

    if-ne v6, v1, :cond_15c

    return v5

    :cond_15c
    return v16

    :cond_15d
    add-int/lit8 v15, v4, 0x2

    .line 512
    aget-byte v15, v0, v15

    and-int/lit16 v10, v15, 0xc0

    if-ne v10, v14, :cond_167

    const/4 v10, 0x1

    goto :goto_168

    :cond_167
    const/4 v10, 0x0

    :goto_168
    if-nez v10, :cond_16e

    if-ne v6, v1, :cond_16d

    return v5

    :cond_16d
    return v16

    .line 517
    :cond_16e
    aget-byte v3, v0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v14, :cond_176

    const/4 v10, 0x1

    goto :goto_177

    :cond_176
    const/4 v10, 0x0

    :goto_177
    if-nez v10, :cond_17d

    if-ne v6, v1, :cond_17c

    return v5

    :cond_17c
    return v16

    :cond_17d
    const v10, 0x381f80

    xor-int/2addr v3, v10

    shl-int/lit8 v10, v15, 0x6

    xor-int/2addr v3, v10

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v3, v7

    const v7, 0x10ffff

    if-le v3, v7, :cond_193

    if-ne v6, v1, :cond_192

    return v5

    :cond_192
    return v16

    :cond_193
    if-le v12, v3, :cond_196

    goto :goto_19c

    :cond_196
    if-lt v9, v3, :cond_19c

    if-ne v6, v1, :cond_19b

    return v5

    :cond_19b
    return v16

    :cond_19c
    :goto_19c
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_1a4

    if-ne v6, v1, :cond_1a3

    return v5

    :cond_1a3
    return v16

    :cond_1a4
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_1a9

    return v5

    :cond_1a9
    if-eq v3, v13, :cond_1c1

    if-eq v3, v11, :cond_1c1

    if-ltz v3, :cond_1b3

    const/16 v6, 0x1f

    if-ge v6, v3, :cond_1bc

    :cond_1b3
    const/16 v6, 0x7f

    if-le v6, v3, :cond_1b8

    goto :goto_1be

    :cond_1b8
    const/16 v6, 0x9f

    if-lt v6, v3, :cond_1be

    :cond_1bc
    const/4 v6, 0x1

    goto :goto_1bf

    :cond_1be
    :goto_1be
    const/4 v6, 0x0

    :goto_1bf
    if-nez v6, :cond_1c6

    :cond_1c1
    const v6, 0xfffd

    if-ne v3, v6, :cond_1c7

    :cond_1c6
    return v16

    :cond_1c7
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_1cd

    const/4 v15, 0x1

    goto :goto_1ce

    :cond_1cd
    const/4 v15, 0x2

    :goto_1ce
    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_c0

    :cond_1d3
    if-ne v6, v1, :cond_1d6

    return v5

    :cond_1d6
    return v16

    :cond_1d7
    return v5
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .registers 11

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    .line 208
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_32

    .line 212
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 213
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_2d

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    if-ge v7, v8, :cond_30

    goto :goto_31

    :cond_30
    const/4 v5, 0x1

    :goto_31
    return v5

    :cond_32
    if-ne v0, v1, :cond_35

    return v3

    :cond_35
    if-ge v0, v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v5, 0x1

    :goto_39
    return v5
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-static {p0}, Lokio/-Base64;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_11

    .line 236
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 7

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_40

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    :goto_1c
    if-ge v1, v0, :cond_3a

    mul-int/lit8 v4, v1, 0x2

    .line 244
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokio/internal/ByteStringKt;->decodeHexDigit(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v2

    .line 245
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokio/internal/ByteStringKt;->decodeHexDigit(C)I

    move-result v4

    add-int/2addr v5, v4

    int-to-byte v4, v5

    .line 246
    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 248
    :cond_3a
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 240
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected hex string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lokio/ByteString;

    invoke-static {p0}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 230
    invoke-virtual {v0, p0}, Lokio/ByteString;->setUtf8$jvm(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .registers 6

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_a

    goto :goto_2c

    .line 194
    :cond_a
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_2b

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, v1, v2, v1, p0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    aget-byte p0, p0, p1

    return p0
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$jvm()I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 202
    :cond_c
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/ByteString;->setHashCode$jvm(I)V

    .line 203
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$jvm()I

    move-result p0

    return p0
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .registers 9

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 56
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v1, :cond_30

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 57
    sget-object v6, Lokio/internal/ByteStringKt;->HEX_DIGITS:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 63
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 60
    :cond_30
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .registers 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lokio/ByteString;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v1, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .registers 6

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .registers 6

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_26

    .line 154
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_26

    if-ltz p3, :cond_26

    .line 155
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_26

    .line 156
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 4

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .registers 6

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_6c

    .line 119
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v2

    array-length v2, v2

    if-gt p2, v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_47

    sub-int v2, p2, p1

    if-ltz v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_3b

    if-nez p1, :cond_2c

    .line 124
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    array-length v0, v0

    if-ne p2, v0, :cond_2c

    return-object p0

    .line 128
    :cond_2c
    new-array p2, v2, [B

    .line 129
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    invoke-static {p0, p1, p2, v1, v2}, Lokio/-Platform;->arraycopy([BI[BII)V

    .line 130
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, p2}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 122
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endIndex < beginIndex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex > length("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginIndex < 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4e

    .line 67
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    int-to-byte v2, v2

    if-lt v1, v2, :cond_4b

    const/16 v3, 0x5a

    int-to-byte v3, v3

    if-le v1, v3, :cond_1e

    goto :goto_4b

    .line 74
    :cond_1e
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    .line 75
    aput-byte v1, p0, v0

    .line 76
    :goto_33
    array-length v0, p0

    if-ge v4, v0, :cond_45

    .line 77
    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_42

    if-le v0, v3, :cond_3d

    goto :goto_42

    :cond_3d
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 82
    aput-byte v0, p0, v4

    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 85
    :cond_45
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4e
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_17

    const-string v0, "[size=0]"

    return-object v0

    .line 263
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v1

    const/16 v3, 0x40

    invoke-static {v1, v3}, Lokio/internal/ByteStringKt;->codePointIndexToCharIndex([BI)I

    move-result v1

    const/4 v4, -0x1

    const/16 v5, 0x5d

    const-string v6, "…]"

    const-string v7, "[size="

    if-ne v1, v4, :cond_72

    .line 265
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_4a

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    .line 268
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hex="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, v3}, Lokio/internal/ByteStringKt;->commonSubstring(Lokio/ByteString;II)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_71
    return-object v0

    .line 272
    :cond_72
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 273
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v2, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "\\"

    const-string v10, "\\\\"

    .line 274
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "\n"

    const-string v16, "\\n"

    .line 275
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\r"

    const-string v10, "\\r"

    .line 276
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_c8

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " text="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_dc

    .line 280
    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_dc
    return-object v0

    .line 273
    :cond_dd
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$jvm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 40
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$jvm()[B

    move-result-object v0

    invoke-static {v0}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lokio/ByteString;->setUtf8$jvm(Ljava/lang/String;)V

    :cond_16
    return-object v0
.end method

.method private static final decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x30

    if-le v0, p0, :cond_5

    goto :goto_b

    :cond_5
    const/16 v1, 0x39

    if-lt v1, p0, :cond_b

    sub-int/2addr p0, v0

    goto :goto_21

    :cond_b
    :goto_b
    const/16 v0, 0x66

    const/16 v1, 0x61

    if-le v1, p0, :cond_12

    goto :goto_18

    :cond_12
    if-lt v0, p0, :cond_18

    :goto_14
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    goto :goto_21

    :cond_18
    :goto_18
    const/16 v0, 0x46

    const/16 v1, 0x41

    if-gt v1, p0, :cond_22

    if-lt v0, p0, :cond_22

    goto :goto_14

    :goto_21
    return p0

    .line 256
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getCOMMON_EMPTY()Lokio/ByteString;
    .registers 1

    .line 224
    sget-object v0, Lokio/internal/ByteStringKt;->COMMON_EMPTY:Lokio/ByteString;

    return-object v0
.end method
