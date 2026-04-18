.class final Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ECI:C = '\ufffa'

.field private static final FS:C = '\u001c'

.field private static final GS:C = '\u001d'

.field private static final LATCHA:C = '\ufff7'

.field private static final LATCHB:C = '\ufff8'

.field private static final LOCK:C = '\ufff9'

.field private static final NS:C = '\ufffb'

.field private static final PAD:C = '\ufffc'

.field private static final RS:C = '\u001e'

.field private static final SETS:[Ljava/lang/String;

.field private static final SHIFTA:C = '\ufff0'

.field private static final SHIFTB:C = '\ufff1'

.field private static final SHIFTC:C = '\ufff2'

.field private static final SHIFTD:C = '\ufff3'

.field private static final SHIFTE:C = '\ufff4'

.field private static final THREESHIFTA:C = '\ufff6'

.field private static final TWOSHIFTA:C = '\ufff5'


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb \ufffc\"#$%&\'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8"

    const-string v1, "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{\ufffc}~\u007f;<=>?[\\]^_ ,./:@!|\ufffc\ufff5\ufff6\ufffc\ufff0\ufff2\ufff3\ufff4\ufff7"

    const-string v2, "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8"

    const-string v3, "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8"

    const-string v4, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa\ufffc\ufffc\u001b\ufffb\u001c\u001d\u001e\u001f\u009f\u00a0¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"

    const-string v5, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?"

    .line 49
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([BI)Lcom/google/zxing/common/DecoderResult;
    .registers 9

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x90

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2c

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p1, v1, :cond_21

    const/4 v1, 0x5

    if-eq p1, v1, :cond_16

    goto/16 :goto_bd

    :cond_16
    const/16 v1, 0x4d

    .line 100
    invoke-static {p0, v2, v1}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bd

    :cond_21
    const/16 v1, 0x5d

    .line 97
    invoke-static {p0, v2, v1}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bd

    :cond_2c
    const/4 v2, 0x0

    if-ne p1, v1, :cond_48

    .line 80
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2([B)I

    move-result v1

    .line 81
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2Length([B)I

    move-result v4

    const-string v5, "0000000000"

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, v1

    .line 82
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    .line 84
    :cond_48
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode3([B)Ljava/lang/String;

    move-result-object v1

    .line 86
    :goto_4c
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getCountry([B)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getServiceClass([B)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/16 v6, 0x54

    .line 89
    invoke-static {p0, v5, v6}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[)>\u001e01\u001d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x1d

    if-eqz v5, :cond_9f

    const/16 v2, 0x9

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 93
    :cond_9f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :goto_bd
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getBit(I[B)I
    .registers 3

    add-int/lit8 p0, p0, -0x1

    .line 108
    div-int/lit8 v0, p0, 0x6

    aget-byte p1, p1, v0

    rem-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/2addr p0, p1

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    return v0
.end method

.method private static getCountry([B)I
    .registers 2

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 123
    fill-array-data v0, :array_c

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result p0

    return p0

    :array_c
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data
.end method

.method private static getInt([B[B)I
    .registers 6

    .line 112
    array-length v0, p1

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_17

    .line 117
    aget-byte v2, p1, v0

    invoke-static {v2, p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getBit(I[B)I

    move-result v2

    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return v1

    .line 113
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getMessage([BII)Ljava/lang/String;
    .registers 15

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, p1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_b
    add-int v7, p1, p2

    const/4 v8, 0x1

    if-ge v3, v7, :cond_67

    .line 158
    sget-object v7, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    aget-object v7, v7, v4

    aget-byte v9, p0, v3

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_8a

    .line 195
    :pswitch_1d  #0xfffa
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5f

    :pswitch_21  #0xfffb
    add-int/lit8 v3, v3, 0x1

    .line 188
    aget-byte v7, p0, v3

    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    shl-int/lit8 v9, v9, 0x12

    add-int/2addr v7, v9

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    shl-int/lit8 v9, v9, 0xc

    add-int/2addr v7, v9

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    shl-int/lit8 v9, v9, 0x6

    add-int/2addr v7, v9

    add-int/2addr v3, v8

    aget-byte v9, p0, v3

    add-int/2addr v7, v9

    .line 189
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "000000000"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :pswitch_4d  #0xfff8
    const/4 v4, 0x1

    goto :goto_50

    :pswitch_4f  #0xfff7
    const/4 v4, 0x0

    :goto_50
    :pswitch_50  #0xfff9
    const/4 v5, -0x1

    goto :goto_5f

    :pswitch_52  #0xfff6
    const/4 v5, 0x3

    goto :goto_55

    :pswitch_54  #0xfff5
    const/4 v5, 0x2

    :goto_55
    move v6, v4

    const/4 v4, 0x0

    goto :goto_5f

    :pswitch_58  #0xfff0, 0xfff1, 0xfff2, 0xfff3, 0xfff4
    const v5, 0xfff0

    sub-int/2addr v7, v5

    move v6, v4

    move v4, v7

    const/4 v5, 0x1

    :goto_5f
    add-int/lit8 v7, v5, -0x1

    if-nez v5, :cond_64

    move v4, v6

    :cond_64
    add-int/2addr v3, v8

    move v5, v7

    goto :goto_b

    .line 201
    :cond_67
    :goto_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_84

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const p1, 0xfffc

    if-ne p0, p1, :cond_84

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_67

    .line 204
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_8a
    .packed-switch 0xfff0
        :pswitch_58  #0000fff0
        :pswitch_58  #0000fff1
        :pswitch_58  #0000fff2
        :pswitch_58  #0000fff3
        :pswitch_58  #0000fff4
        :pswitch_54  #0000fff5
        :pswitch_52  #0000fff6
        :pswitch_4f  #0000fff7
        :pswitch_4d  #0000fff8
        :pswitch_50  #0000fff9
        :pswitch_1d  #0000fffa
        :pswitch_21  #0000fffb
    .end packed-switch
.end method

.method private static getPostCode2([B)I
    .registers 2

    const/16 v0, 0x1e

    new-array v0, v0, [B

    .line 135
    fill-array-data v0, :array_c

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result p0

    return p0

    :array_c
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getPostCode2Length([B)I
    .registers 2

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 131
    fill-array-data v0, :array_c

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result p0

    return p0

    nop

    :array_c
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data
.end method

.method private static getPostCode3([B)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x6

    new-array v1, v0, [C

    .line 140
    sget-object v2, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    new-array v5, v0, [B

    fill-array-data v5, :array_76

    .line 142
    invoke-static {p0, v5}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v3

    aget-object v4, v2, v3

    new-array v5, v0, [B

    fill-array-data v5, :array_7e

    .line 143
    invoke-static {p0, v5}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    aput-char v4, v1, v5

    aget-object v4, v2, v3

    new-array v5, v0, [B

    fill-array-data v5, :array_86

    .line 144
    invoke-static {p0, v5}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    aput-char v4, v1, v5

    aget-object v4, v2, v3

    new-array v5, v0, [B

    fill-array-data v5, :array_8e

    .line 145
    invoke-static {p0, v5}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x3

    aput-char v4, v1, v5

    aget-object v4, v2, v3

    new-array v5, v0, [B

    fill-array-data v5, :array_96

    .line 146
    invoke-static {p0, v5}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x4

    aput-char v4, v1, v5

    aget-object v2, v2, v3

    new-array v0, v0, [B

    fill-array-data v0, :array_9e

    .line 147
    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v0, 0x5

    aput-char p0, v1, v0

    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_76
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_7e
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    nop

    :array_86
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    nop

    :array_8e
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    nop

    :array_96
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    nop

    :array_9e
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data
.end method

.method private static getServiceClass([B)I
    .registers 2

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 127
    fill-array-data v0, :array_c

    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    move-result p0

    return p0

    :array_c
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method
