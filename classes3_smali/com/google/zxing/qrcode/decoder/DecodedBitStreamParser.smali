.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 56
    new-instance v7, Lcom/google/zxing/common/BitSource;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v12, 0x0

    move-object/from16 v16, v12

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 68
    :goto_1e
    :try_start_1e
    invoke-virtual {v7}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_29

    .line 70
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_27
    move-object v6, v1

    goto :goto_32

    .line 72
    :cond_29
    invoke-virtual {v7, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v1

    goto :goto_27

    .line 74
    :goto_32
    sget-object v1, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v1, v3

    packed-switch v3, :pswitch_data_e2

    .line 111
    invoke-virtual {v6, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    goto :goto_82

    .line 102
    :pswitch_42  #0xa
    invoke-virtual {v7, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 103
    invoke-virtual {v6, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    if-ne v1, v11, :cond_5e

    .line 105
    invoke-static {v7, v9, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_5e

    .line 93
    :pswitch_54  #0x9
    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v1

    .line 94
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v16

    if-eqz v16, :cond_60

    :cond_5e
    :goto_5e
    :pswitch_5e  #0x5
    move-object v11, v6

    goto :goto_b4

    .line 96
    :cond_60
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 83
    :pswitch_65  #0x8
    invoke-virtual {v7}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_7a

    const/16 v1, 0x8

    .line 88
    invoke-virtual {v7, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 89
    invoke-virtual {v7, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    move v15, v1

    move v14, v2

    goto :goto_5e

    .line 84
    :cond_7a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_7f  #0x6, 0x7
    move-object v11, v6

    const/4 v13, 0x1

    goto :goto_b4

    .line 111
    :goto_82
    invoke-virtual {v7, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 112
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v11, :cond_b0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_ab

    const/4 v4, 0x3

    if-eq v1, v4, :cond_9f

    if-ne v1, v2, :cond_9a

    .line 123
    invoke-static {v7, v9, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_5e

    .line 126
    :cond_9a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_9f
    move-object v1, v7

    move-object v2, v9

    move-object/from16 v4, v16

    move-object v5, v10

    move-object v11, v6

    move-object/from16 v6, p3

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_b4

    :cond_ab
    move-object v11, v6

    .line 117
    invoke-static {v7, v9, v3, v13}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_b4

    :cond_b0
    move-object v11, v6

    .line 114
    invoke-static {v7, v9, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 130
    :goto_b4
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_b6} :catch_dc

    if-ne v11, v1, :cond_d9

    .line 136
    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    .line 137
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c6

    move-object v3, v12

    goto :goto_c7

    :cond_c6
    move-object v3, v10

    :goto_c7
    if-nez p2, :cond_cb

    move-object v4, v12

    goto :goto_d0

    .line 139
    :cond_cb
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_d0
    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v7

    :cond_d9
    const/4 v11, 0x1

    goto/16 :goto_1e

    .line 133
    :catch_dc
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_e2
    .packed-switch 0x5
        :pswitch_5e  #00000005
        :pswitch_7f  #00000006
        :pswitch_7f  #00000007
        :pswitch_65  #00000008
        :pswitch_54  #00000009
        :pswitch_42  #0000000a
    .end packed-switch
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    if-le p2, v1, :cond_2d

    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_28

    .line 270
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 271
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_4

    .line 268
    :cond_28
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_2d
    if-ne p2, v1, :cond_47

    .line 277
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v2, 0x6

    if-lt p2, v2, :cond_42

    .line 280
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 278
    :cond_42
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_47
    :goto_47
    if-eqz p3, :cond_72

    .line 285
    :goto_49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_72

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_6f

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_6a

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_6a

    .line 289
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_6f

    :cond_6a
    const/16 p0, 0x1d

    .line 292
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_72
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    .line 226
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_35

    .line 230
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p2, :cond_19

    const/16 v2, 0x8

    .line 232
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    if-nez p3, :cond_20

    .line 241
    invoke-static {v0, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    .line 243
    :cond_20
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 246
    :goto_24
    :try_start_24
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_30

    .line 250
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 248
    :catch_30
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 227
    :cond_35
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 151
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_47

    mul-int/lit8 v0, p2, 0x2

    .line 157
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_d
    if-lez p2, :cond_37

    const/16 v2, 0xd

    .line 161
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 162
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_24

    const v3, 0xa1a1

    goto :goto_27

    :cond_24
    const v3, 0xa6a1

    :goto_27
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 170
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 171
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    .line 177
    :cond_37
    :try_start_37
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_41} :catch_42

    return-void

    .line 179
    :catch_42
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 152
    :cond_47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 187
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_47

    mul-int/lit8 v0, p2, 0x2

    .line 193
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_d
    if-lez p2, :cond_37

    const/16 v2, 0xd

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 198
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_24

    const v3, 0x8140

    goto :goto_27

    :cond_24
    const v3, 0xc140

    :goto_27
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 206
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 207
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    .line 213
    :cond_37
    :try_start_37
    new-instance p0, Ljava/lang/String;

    const-string p2, "SJIS"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_41} :catch_42

    return-void

    .line 215
    :catch_42
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 188
    :cond_47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_3c

    .line 305
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-lt v0, v1, :cond_37

    .line 308
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_32

    .line 312
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 310
    :cond_32
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 306
    :cond_37
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6a

    .line 319
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_65

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    const/16 p2, 0x64

    if-ge p0, p2, :cond_60

    .line 326
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 324
    :cond_60
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 320
    :cond_65
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_6a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8c

    .line 330
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_87

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    if-ge p0, v1, :cond_82

    .line 337
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 335
    :cond_82
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 331
    :cond_87
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_8c
    :goto_8c
    return-void
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_d

    and-int/lit8 p0, v1, 0x7f

    return p0

    :cond_d
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1d

    .line 349
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1d
    and-int/lit16 v0, v1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_2f

    const/16 v0, 0x10

    .line 354
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p0, v0

    return p0

    .line 357
    :cond_2f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static toAlphaNumericChar(I)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v1, v0

    if-ge p0, v1, :cond_8

    .line 257
    aget-char p0, v0, p0

    return p0

    .line 255
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method
