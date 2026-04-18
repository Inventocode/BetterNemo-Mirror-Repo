.class public Lcom/qiniu/android/utils/IPAddressUtil;
.super Ljava/lang/Object;
.source "IPAddressUtil.java"


# direct methods
.method public static convertFromIPv4MappedAddress([B)[B
    .registers 5

    .line 232
    invoke-static {p0}, Lcom/qiniu/android/utils/IPAddressUtil;->isIPv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 234
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isIPv4MappedAddress([B)Z
    .registers 5

    .line 248
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_7

    return v1

    .line 251
    :cond_7
    aget-byte v0, p0, v1

    if-nez v0, :cond_48

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    if-nez v2, :cond_48

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    if-nez v2, :cond_48

    const/16 v2, 0xa

    aget-byte v2, p0, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_48

    const/16 v2, 0xb

    aget-byte p0, p0, v2

    if-ne p0, v3, :cond_48

    return v0

    :cond_48
    return v1
.end method

.method public static isIPv6LiteralAddress(Ljava/lang/String;)Z
    .registers 1

    .line 221
    invoke-static {p0}, Lcom/qiniu/android/utils/IPAddressUtil;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static textToNumericFormatV4(Ljava/lang/String;)[B
    .registers 16

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_89

    const/16 v3, 0xf

    if-le v1, v3, :cond_10

    goto/16 :goto_89

    :cond_10
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v7, v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_16
    const/4 v10, 0x3

    const-wide/16 v11, 0xff

    if-ge v6, v1, :cond_4b

    .line 53
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_39

    cmp-long v13, v7, v4

    if-ltz v13, :cond_38

    cmp-long v13, v7, v11

    if-gtz v13, :cond_38

    if-ne v9, v10, :cond_2e

    goto :goto_38

    :cond_2e
    add-int/lit8 v10, v9, 0x1

    and-long/2addr v7, v11

    long-to-int v8, v7

    int-to-byte v7, v8

    .line 58
    aput-byte v7, v0, v9

    move-wide v7, v4

    move v9, v10

    goto :goto_48

    :cond_38
    :goto_38
    return-object v2

    :cond_39
    const/16 v10, 0xa

    .line 61
    invoke-static {v13, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-gez v10, :cond_42

    return-object v2

    :cond_42
    const-wide/16 v11, 0xa

    mul-long v7, v7, v11

    int-to-long v10, v10

    add-long/2addr v7, v10

    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_4b
    cmp-long p0, v7, v4

    if-ltz p0, :cond_89

    const-wide/16 v4, 0x1

    rsub-int/lit8 p0, v9, 0x4

    const/16 v1, 0x8

    mul-int/lit8 p0, p0, 0x8

    shl-long/2addr v4, p0

    cmp-long p0, v7, v4

    if-ltz p0, :cond_5d

    goto :goto_89

    :cond_5d
    const/4 p0, 0x2

    const/4 v2, 0x1

    if-eqz v9, :cond_68

    if-eq v9, v2, :cond_71

    if-eq v9, p0, :cond_7a

    if-eq v9, v10, :cond_81

    goto :goto_88

    :cond_68
    const/16 v4, 0x18

    shr-long v4, v7, v4

    and-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v3

    :cond_71
    const/16 v4, 0x10

    shr-long v4, v7, v4

    and-long/2addr v4, v11

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    :cond_7a
    shr-long v1, v7, v1

    and-long/2addr v1, v11

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, v0, p0

    :cond_81
    shr-long v1, v7, v3

    and-long/2addr v1, v11

    long-to-int p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v10

    :goto_88
    return-object v0

    :cond_89
    :goto_89
    return-object v2
.end method

.method public static textToNumericFormatV6(Ljava/lang/String;)[B
    .registers 17

    move-object/from16 v0, p0

    .line 98
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_b

    return-object v3

    .line 106
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v2, 0x10

    new-array v4, v2, [B

    .line 109
    array-length v5, v1

    const-string v6, "%"

    .line 110
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v5, -0x1

    if-ne v6, v7, :cond_1f

    return-object v3

    :cond_1f
    const/4 v7, -0x1

    if-eq v6, v7, :cond_23

    move v5, v6

    :cond_23
    const/4 v6, 0x0

    .line 122
    aget-char v8, v1, v6

    const/16 v9, 0x3a

    const/4 v10, 0x1

    if-ne v8, v9, :cond_32

    .line 123
    aget-char v8, v1, v10

    if-eq v8, v9, :cond_30

    return-object v3

    :cond_30
    const/4 v8, 0x1

    goto :goto_33

    :cond_32
    const/4 v8, 0x0

    :goto_33
    move v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_38
    if-ge v8, v5, :cond_b4

    add-int/lit8 v10, v8, 0x1

    .line 129
    aget-char v8, v1, v8

    .line 130
    invoke-static {v8, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-eq v6, v7, :cond_53

    shl-int/lit8 v8, v12, 0x4

    or-int v12, v8, v6

    const v6, 0xffff

    if-le v12, v6, :cond_4e

    return-object v3

    :cond_4e
    move v8, v10

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x1

    goto :goto_38

    :cond_53
    if-ne v8, v9, :cond_7f

    if-nez v13, :cond_60

    if-eq v15, v7, :cond_5a

    return-object v3

    :cond_5a
    move v8, v10

    move v11, v8

    move v15, v14

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_38

    :cond_60
    if-ne v10, v5, :cond_63

    return-object v3

    :cond_63
    add-int/lit8 v6, v14, 0x2

    if-le v6, v2, :cond_68

    return-object v3

    :cond_68
    add-int/lit8 v6, v14, 0x1

    shr-int/lit8 v8, v12, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 151
    aput-byte v8, v4, v14

    add-int/lit8 v14, v6, 0x1

    and-int/lit16 v8, v12, 0xff

    int-to-byte v8, v8

    .line 152
    aput-byte v8, v4, v6

    move v8, v10

    move v11, v8

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_38

    :cond_7f
    const/16 v1, 0x2e

    if-ne v8, v1, :cond_b3

    add-int/lit8 v6, v14, 0x4

    if-gt v6, v2, :cond_b3

    .line 158
    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 161
    :goto_8d
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v7, :cond_98

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    :cond_98
    const/4 v1, 0x3

    if-eq v6, v1, :cond_9c

    return-object v3

    .line 168
    :cond_9c
    invoke-static {v0}, Lcom/qiniu/android/utils/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_a3

    return-object v3

    :cond_a3
    const/4 v1, 0x0

    :goto_a4
    const/4 v5, 0x4

    if-ge v1, v5, :cond_b1

    add-int/lit8 v5, v14, 0x1

    .line 173
    aget-byte v6, v0, v1

    aput-byte v6, v4, v14

    add-int/lit8 v1, v1, 0x1

    move v14, v5

    goto :goto_a4

    :cond_b1
    const/4 v13, 0x0

    goto :goto_b4

    :cond_b3
    return-object v3

    :cond_b4
    :goto_b4
    if-eqz v13, :cond_cb

    add-int/lit8 v0, v14, 0x2

    if-le v0, v2, :cond_bb

    return-object v3

    :cond_bb
    add-int/lit8 v0, v14, 0x1

    shr-int/lit8 v1, v12, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 183
    aput-byte v1, v4, v14

    add-int/lit8 v14, v0, 0x1

    and-int/lit16 v1, v12, 0xff

    int-to-byte v1, v1

    .line 184
    aput-byte v1, v4, v0

    :cond_cb
    if-eq v15, v7, :cond_e6

    sub-int v0, v14, v15

    if-ne v14, v2, :cond_d2

    return-object v3

    :cond_d2
    const/4 v10, 0x1

    :goto_d3
    if-gt v10, v0, :cond_e4

    rsub-int/lit8 v1, v10, 0x10

    add-int v5, v15, v0

    sub-int/2addr v5, v10

    .line 193
    aget-byte v6, v4, v5

    aput-byte v6, v4, v1

    const/4 v1, 0x0

    .line 194
    aput-byte v1, v4, v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_d3

    :cond_e4
    const/16 v14, 0x10

    :cond_e6
    if-eq v14, v2, :cond_e9

    return-object v3

    .line 200
    :cond_e9
    invoke-static {v4}, Lcom/qiniu/android/utils/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v0

    if-eqz v0, :cond_f0

    return-object v0

    :cond_f0
    return-object v4
.end method
