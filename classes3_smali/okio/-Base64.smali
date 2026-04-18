.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source "-Base64.kt"


# static fields
.field private static final BASE64:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->getData$jvm()[B

    move-result-object v1

    sput-object v1, Lokio/-Base64;->BASE64:[B

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 28
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$jvm()[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .registers 17

    move-object/from16 v0, p0

    const-string v1, "$receiver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_b
    const/16 v2, 0x9

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-lez v1, :cond_2b

    add-int/lit8 v6, v1, -0x1

    .line 34
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_28

    if-eq v6, v5, :cond_28

    if-eq v6, v4, :cond_28

    if-eq v6, v3, :cond_28

    if-eq v6, v2, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_2b
    :goto_2b
    int-to-long v6, v1

    const-wide/16 v8, 0x6

    mul-long v6, v6, v8

    const-wide/16 v8, 0x8

    .line 42
    div-long/2addr v6, v8

    long-to-int v7, v6

    new-array v6, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3a
    const/4 v13, 0x0

    if-ge v9, v1, :cond_a7

    .line 48
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5a

    const/16 v8, 0x41

    if-le v8, v14, :cond_48

    goto :goto_4d

    :cond_48
    if-lt v15, v14, :cond_4d

    add-int/lit8 v14, v14, -0x41

    goto :goto_86

    :cond_4d
    :goto_4d
    const/16 v8, 0x7a

    const/16 v15, 0x61

    if-le v15, v14, :cond_54

    goto :goto_59

    :cond_54
    if-lt v8, v14, :cond_59

    add-int/lit8 v14, v14, -0x47

    goto :goto_86

    :cond_59
    :goto_59
    const/16 v8, 0x39

    const/16 v15, 0x30

    if-le v15, v14, :cond_60

    goto :goto_65

    :cond_60
    if-lt v8, v14, :cond_65

    add-int/lit8 v14, v14, 0x4

    goto :goto_86

    :cond_65
    :goto_65
    const/16 v8, 0x2b

    if-eq v14, v8, :cond_84

    const/16 v8, 0x2d

    if-ne v14, v8, :cond_6e

    goto :goto_84

    :cond_6e
    const/16 v8, 0x2f

    if-eq v14, v8, :cond_81

    const/16 v8, 0x5f

    if-ne v14, v8, :cond_77

    goto :goto_81

    :cond_77
    if-eq v14, v5, :cond_a4

    if-eq v14, v4, :cond_a4

    if-eq v14, v3, :cond_a4

    if-ne v14, v2, :cond_80

    goto :goto_a4

    :cond_80
    return-object v13

    :cond_81
    :goto_81
    const/16 v14, 0x3f

    goto :goto_86

    :cond_84
    :goto_84
    const/16 v14, 0x3e

    :goto_86
    shl-int/lit8 v8, v11, 0x6

    or-int v11, v8, v14

    add-int/lit8 v10, v10, 0x1

    .line 81
    rem-int/lit8 v8, v10, 0x4

    if-nez v8, :cond_a4

    add-int/lit8 v8, v12, 0x1

    shr-int/lit8 v13, v11, 0x10

    int-to-byte v13, v13

    .line 82
    aput-byte v13, v6, v12

    add-int/lit8 v12, v8, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    .line 83
    aput-byte v13, v6, v8

    add-int/lit8 v8, v12, 0x1

    int-to-byte v13, v11

    .line 84
    aput-byte v13, v6, v12

    move v12, v8

    :cond_a4
    :goto_a4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 88
    :cond_a7
    rem-int/lit8 v10, v10, 0x4

    const/4 v0, 0x1

    if-eq v10, v0, :cond_d8

    const/4 v0, 0x2

    if-eq v10, v0, :cond_c4

    const/4 v0, 0x3

    if-eq v10, v0, :cond_b3

    goto :goto_ce

    :cond_b3
    shl-int/lit8 v0, v11, 0x6

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    .line 102
    aput-byte v2, v6, v12

    add-int/lit8 v12, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 103
    aput-byte v0, v6, v1

    goto :goto_ce

    :cond_c4
    shl-int/lit8 v0, v11, 0xc

    add-int/lit8 v1, v12, 0x1

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 97
    aput-byte v0, v6, v12

    move v12, v1

    :goto_ce
    if-ne v12, v7, :cond_d1

    return-object v6

    .line 111
    :cond_d1
    new-array v0, v12, [B

    const/4 v1, 0x0

    .line 112
    invoke-static {v6, v1, v0, v1, v12}, Lokio/-Platform;->arraycopy([BI[BII)V

    return-object v0

    :cond_d8
    return-object v13
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .registers 12

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 118
    new-array v0, v0, [B

    .line 120
    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v3, v2, :cond_58

    add-int/lit8 v5, v3, 0x1

    .line 123
    aget-byte v3, p0, v3

    add-int/lit8 v6, v5, 0x1

    .line 124
    aget-byte v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    .line 125
    aget-byte v6, p0, v6

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v3, 0xff

    shr-int/2addr v9, v1

    .line 126
    aget-byte v9, p1, v9

    aput-byte v9, v0, v4

    add-int/lit8 v4, v8, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v9, v5, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v3, v9

    .line 127
    aget-byte v3, p1, v3

    aput-byte v3, v0, v8

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    and-int/lit16 v8, v6, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    .line 128
    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v6, 0x3f

    .line 129
    aget-byte v5, p1, v5

    aput-byte v5, v0, v3

    move v3, v7

    goto :goto_1a

    .line 131
    :cond_58
    array-length v5, p0

    sub-int/2addr v5, v2

    const/16 v2, 0x3d

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8d

    if-eq v5, v1, :cond_62

    goto :goto_aa

    :cond_62
    add-int/lit8 v5, v3, 0x1

    .line 140
    aget-byte v3, p0, v3

    .line 141
    aget-byte p0, p0, v5

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v6, v3, 0xff

    shr-int/2addr v6, v1

    .line 142
    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v6, p0, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v3, v6

    .line 143
    aget-byte v3, p1, v3

    aput-byte v3, v0, v5

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    .line 144
    aget-byte p0, p1, p0

    aput-byte p0, v0, v4

    int-to-byte p0, v2

    .line 145
    aput-byte p0, v0, v3

    goto :goto_aa

    .line 133
    :cond_8d
    aget-byte p0, p0, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit16 v5, p0, 0xff

    shr-int/lit8 v1, v5, 0x2

    .line 134
    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, v3, 0x1

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    .line 135
    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    add-int/lit8 p0, v1, 0x1

    int-to-byte p1, v2

    .line 136
    aput-byte p1, v0, v1

    .line 137
    aput-byte p1, v0, p0

    .line 148
    :goto_aa
    invoke-static {v0}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 116
    sget-object p1, Lokio/-Base64;->BASE64:[B

    :cond_6
    invoke-static {p0, p1}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
