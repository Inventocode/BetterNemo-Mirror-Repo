.class public Lcom/codemao/midi/sun/SoftTuning;
.super Ljava/lang/Object;
.source "SoftTuning.java"


# instance fields
.field private tuning:[D


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [D

    .line 40
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    const/4 v0, 0x0

    .line 45
    :goto_a
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    array-length v2, v1

    if-ge v0, v2, :cond_17

    mul-int/lit8 v2, v0, 0x64

    int-to-double v2, v2

    .line 46
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/javax/Patch;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [D

    .line 40
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    const/4 p1, 0x0

    .line 58
    :goto_a
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    array-length v1, v0

    if-ge p1, v1, :cond_17

    mul-int/lit8 v1, p1, 0x64

    int-to-double v1, v1

    .line 59
    aput-wide v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_17
    return-void
.end method

.method public constructor <init>([B)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [D

    .line 40
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    const/4 v0, 0x0

    .line 50
    :goto_a
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    array-length v2, v1

    if-ge v0, v2, :cond_17

    mul-int/lit8 v2, v0, 0x64

    int-to-double v2, v2

    .line 51
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 52
    :cond_17
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftTuning;->load([B)V

    return-void
.end method

.method private checksumOK([B)Z
    .registers 7

    const/4 v0, 0x1

    .line 70
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x2

    .line 71
    :goto_7
    array-length v4, p1

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_13

    .line 72
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 73
    :cond_13
    array-length v3, p1

    sub-int/2addr v3, v2

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 v1, v1, 0x7f

    if-ne p1, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method


# virtual methods
.method public getTuning(I)D
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getTuning()[D
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    return-object v0
.end method

.method public load([B)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 89
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    const/16 v5, 0x7e

    if-eq v3, v5, :cond_15

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v4, :cond_1e8

    :cond_15
    const/4 v2, 0x3

    .line 90
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    if-eq v2, v3, :cond_20

    goto/16 :goto_1e8

    :cond_20
    const/4 v2, 0x4

    .line 93
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v7, 0x40c0000000000000L  # 8192.0

    const-wide/high16 v10, 0x40d0000000000000L  # 16384.0

    const-string v12, "ascii"

    const/16 v13, 0x10

    const/4 v14, 0x7

    const-wide/high16 v15, 0x4059000000000000L  # 100.0

    const/16 v3, 0x80

    const/16 v9, 0xc

    const/16 v17, 0x0

    packed-switch v2, :pswitch_data_1ea

    :pswitch_3b  #0x3
    goto/16 :goto_1e8

    :pswitch_3d  #0x9
    new-array v2, v9, [D

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v9, :cond_5d

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v10, 0x8

    .line 222
    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    mul-int/lit16 v11, v11, 0x80

    add-int/lit8 v10, v10, 0x9

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v11, v10

    int-to-double v10, v11

    div-double/2addr v10, v7

    sub-double/2addr v10, v5

    mul-double v10, v10, v15

    .line 224
    aput-wide v10, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_5d
    const/4 v1, 0x0

    .line 226
    :goto_5e
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    array-length v4, v3

    if-ge v1, v4, :cond_1e8

    mul-int/lit8 v4, v1, 0x64

    int-to-double v4, v4

    .line 227
    rem-int/lit8 v6, v1, 0xc

    aget-wide v6, v2, v6

    add-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :pswitch_70  #0x8
    new-array v2, v9, [I

    const/4 v3, 0x0

    :goto_73
    if-ge v3, v9, :cond_82

    add-int/lit8 v4, v3, 0x8

    .line 211
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x40

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_82
    const/4 v1, 0x0

    .line 212
    :goto_83
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    array-length v4, v3

    if-ge v1, v4, :cond_1e8

    mul-int/lit8 v4, v1, 0x64

    .line 213
    rem-int/lit8 v5, v1, 0xc

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-double v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 193
    :pswitch_95  #0x7
    aget-byte v2, v1, v14

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8

    const/4 v5, 0x0

    :goto_9c
    if-ge v5, v2, :cond_1e8

    add-int/lit8 v6, v3, 0x1

    .line 196
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 197
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 198
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v8, 0x1

    .line 199
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    if-ne v6, v4, :cond_bc

    if-ne v7, v4, :cond_bc

    if-eq v8, v4, :cond_ca

    .line 201
    :cond_bc
    iget-object v12, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    mul-int/lit16 v6, v6, 0x4000

    mul-int/lit16 v7, v7, 0x80

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    int-to-double v6, v6

    div-double/2addr v6, v10

    mul-double v6, v6, v15

    aput-wide v6, v12, v3

    :cond_ca
    add-int/lit8 v5, v5, 0x1

    move v3, v9

    goto :goto_9c

    .line 173
    :pswitch_ce  #0x6
    invoke-direct/range {p0 .. p1}, Lcom/codemao/midi/sun/SoftTuning;->checksumOK([B)Z

    move-result v2

    if-nez v2, :cond_d6

    goto/16 :goto_1e8

    .line 176
    :cond_d6
    :try_start_d6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v14, v13, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_db
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d6 .. :try_end_db} :catch_db

    :catch_db
    new-array v2, v9, [D

    const/4 v4, 0x0

    :goto_de
    if-ge v4, v9, :cond_fb

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v10, 0x17

    .line 182
    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    mul-int/lit16 v11, v11, 0x80

    add-int/lit8 v10, v10, 0x18

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v11, v10

    int-to-double v10, v11

    div-double/2addr v10, v7

    sub-double/2addr v10, v5

    mul-double v10, v10, v15

    .line 184
    aput-wide v10, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_de

    :cond_fb
    const/4 v1, 0x0

    .line 186
    :goto_fc
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    array-length v4, v3

    if-ge v1, v4, :cond_1e8

    mul-int/lit8 v4, v1, 0x64

    int-to-double v4, v4

    .line 187
    rem-int/lit8 v6, v1, 0xc

    aget-wide v6, v2, v6

    add-double/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    .line 155
    :pswitch_10e  #0x5
    invoke-direct/range {p0 .. p1}, Lcom/codemao/midi/sun/SoftTuning;->checksumOK([B)Z

    move-result v2

    if-nez v2, :cond_116

    goto/16 :goto_1e8

    .line 158
    :cond_116
    :try_start_116
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v14, v13, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_11b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_116 .. :try_end_11b} :catch_11b

    :catch_11b
    new-array v2, v9, [I

    const/4 v3, 0x0

    :goto_11e
    if-ge v3, v9, :cond_12d

    add-int/lit8 v4, v3, 0x17

    .line 164
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x40

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11e

    :cond_12d
    const/4 v1, 0x0

    .line 165
    :goto_12e
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    array-length v4, v3

    if-ge v1, v4, :cond_1e8

    mul-int/lit8 v4, v1, 0x64

    .line 166
    rem-int/lit8 v5, v1, 0xc

    aget v5, v2, v5

    add-int/2addr v4, v5

    int-to-double v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12e

    .line 134
    :pswitch_140  #0x4
    invoke-direct/range {p0 .. p1}, Lcom/codemao/midi/sun/SoftTuning;->checksumOK([B)Z

    move-result v2

    if-nez v2, :cond_148

    goto/16 :goto_1e8

    .line 137
    :cond_148
    :try_start_148
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v14, v13, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_14d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_148 .. :try_end_14d} :catch_14d

    :catch_14d
    const/16 v2, 0x17

    const/4 v5, 0x0

    :goto_150
    if-ge v5, v3, :cond_1e8

    add-int/lit8 v6, v2, 0x1

    .line 143
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 144
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 145
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v2, v4, :cond_16a

    if-ne v6, v4, :cond_16a

    if-eq v7, v4, :cond_178

    .line 147
    :cond_16a
    iget-object v9, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    mul-int/lit16 v2, v2, 0x4000

    mul-int/lit16 v6, v6, 0x80

    add-int/2addr v2, v6

    add-int/2addr v2, v7

    int-to-double v6, v2

    div-double/2addr v6, v10

    mul-double v6, v6, v15

    aput-wide v6, v9, v5

    :cond_178
    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_150

    :pswitch_17c  #0x2
    const/4 v2, 0x6

    .line 119
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    :goto_182
    if-ge v3, v2, :cond_1e8

    add-int/lit8 v5, v14, 0x1

    .line 122
    aget-byte v6, v1, v14

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    .line 123
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 124
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v14, v8, 0x1

    .line 125
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    if-ne v5, v4, :cond_1a2

    if-ne v7, v4, :cond_1a2

    if-eq v8, v4, :cond_1b0

    .line 127
    :cond_1a2
    iget-object v9, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    mul-int/lit16 v5, v5, 0x4000

    mul-int/lit16 v7, v7, 0x80

    add-int/2addr v5, v7

    add-int/2addr v5, v8

    int-to-double v7, v5

    div-double/2addr v7, v10

    mul-double v7, v7, v15

    aput-wide v7, v9, v6

    :cond_1b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_182

    .line 101
    :pswitch_1b3  #0x1
    :try_start_1b3
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x6

    invoke-direct {v2, v1, v5, v13, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1b9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b3 .. :try_end_1b9} :catch_1b9

    :catch_1b9
    const/16 v2, 0x16

    const/4 v5, 0x0

    :goto_1bc
    if-ge v5, v3, :cond_1e8

    add-int/lit8 v6, v2, 0x1

    .line 107
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 108
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 109
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v2, v4, :cond_1d6

    if-ne v6, v4, :cond_1d6

    if-eq v7, v4, :cond_1e4

    .line 111
    :cond_1d6
    iget-object v9, v0, Lcom/codemao/midi/sun/SoftTuning;->tuning:[D

    mul-int/lit16 v2, v2, 0x4000

    mul-int/lit16 v6, v6, 0x80

    add-int/2addr v2, v6

    add-int/2addr v2, v7

    int-to-double v6, v2

    div-double/2addr v6, v10

    mul-double v6, v6, v15

    aput-wide v6, v9, v5

    :cond_1e4
    add-int/lit8 v5, v5, 0x1

    move v2, v8

    goto :goto_1bc

    :cond_1e8
    :goto_1e8
    return-void

    nop

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_1b3  #00000001
        :pswitch_17c  #00000002
        :pswitch_3b  #00000003
        :pswitch_140  #00000004
        :pswitch_10e  #00000005
        :pswitch_ce  #00000006
        :pswitch_95  #00000007
        :pswitch_70  #00000008
        :pswitch_3d  #00000009
    .end packed-switch
.end method
