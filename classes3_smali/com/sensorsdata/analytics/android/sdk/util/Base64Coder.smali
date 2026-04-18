.class public Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static map1:[C

.field private static map2:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x40

    new-array v1, v0, [C

    .line 49
    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 51
    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    const/4 v1, 0x0

    const/16 v2, 0x41

    const/4 v3, 0x0

    :goto_10
    const/16 v4, 0x5a

    if-gt v2, v4, :cond_1f

    .line 56
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_10

    :cond_1f
    const/16 v2, 0x61

    :goto_21
    const/16 v4, 0x7a

    if-gt v2, v4, :cond_30

    .line 58
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_21

    :cond_30
    const/16 v2, 0x30

    :goto_32
    const/16 v4, 0x39

    if-gt v2, v4, :cond_41

    .line 60
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_32

    .line 61
    :cond_41
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2b

    aput-char v5, v2, v3

    const/16 v3, 0x2f

    .line 62
    aput-char v3, v2, v4

    const/4 v2, 0x0

    .line 66
    :goto_4e
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    array-length v4, v3

    if-ge v2, v4, :cond_59

    const/4 v4, -0x1

    .line 67
    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_59
    :goto_59
    if-ge v1, v0, :cond_67

    .line 69
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_67
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 1

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decode([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([C)[B
    .registers 12

    .line 162
    array-length v0, p0

    .line 163
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_8f

    :goto_5
    if-lez v0, :cond_12

    add-int/lit8 v1, v0, -0x1

    .line 166
    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_12
    mul-int/lit8 v1, v0, 0x3

    .line 168
    div-int/lit8 v1, v1, 0x4

    .line 169
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v3, v0, :cond_8e

    add-int/lit8 v5, v3, 0x1

    .line 173
    aget-char v3, p0, v3

    add-int/lit8 v6, v5, 0x1

    .line 174
    aget-char v5, p0, v5

    const/16 v7, 0x41

    if-ge v6, v0, :cond_2d

    add-int/lit8 v8, v6, 0x1

    .line 175
    aget-char v6, p0, v6

    goto :goto_30

    :cond_2d
    move v8, v6

    const/16 v6, 0x41

    :goto_30
    if-ge v8, v0, :cond_37

    add-int/lit8 v7, v8, 0x1

    .line 176
    aget-char v8, p0, v8

    goto :goto_3a

    :cond_37
    move v7, v8

    const/16 v8, 0x41

    :goto_3a
    const-string v9, "Illegal character in Base64 encoded data."

    const/16 v10, 0x7f

    if-gt v3, v10, :cond_88

    if-gt v5, v10, :cond_88

    if-gt v6, v10, :cond_88

    if-gt v8, v10, :cond_88

    .line 179
    sget-object v10, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map2:[B

    aget-byte v3, v10, v3

    .line 180
    aget-byte v5, v10, v5

    .line 181
    aget-byte v6, v10, v6

    .line 182
    aget-byte v8, v10, v8

    if-ltz v3, :cond_82

    if-ltz v5, :cond_82

    if-ltz v6, :cond_82

    if-ltz v8, :cond_82

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v3, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v9, v6, 0x2

    or-int/2addr v5, v9

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v8

    add-int/lit8 v8, v4, 0x1

    int-to-byte v3, v3

    .line 188
    aput-byte v3, v2, v4

    if-ge v8, v1, :cond_76

    add-int/lit8 v3, v8, 0x1

    int-to-byte v4, v5

    .line 190
    aput-byte v4, v2, v8

    move v8, v3

    :cond_76
    if-ge v8, v1, :cond_7f

    add-int/lit8 v3, v8, 0x1

    int-to-byte v4, v6

    .line 192
    aput-byte v4, v2, v8

    move v4, v3

    goto :goto_80

    :cond_7f
    move v4, v8

    :goto_80
    move v3, v7

    goto :goto_1a

    .line 184
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    return-object v2

    .line 164
    :cond_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 139
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .registers 2

    .line 96
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([BI)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([BI)[C
    .registers 14

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 108
    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p1, 0x2

    .line 109
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 110
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v3, p1, :cond_68

    add-int/lit8 v5, v3, 0x1

    .line 114
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ge v5, p1, :cond_22

    add-int/lit8 v6, v5, 0x1

    .line 115
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    goto :goto_24

    :cond_22
    move v6, v5

    const/4 v5, 0x0

    :goto_24
    if-ge v6, p1, :cond_30

    add-int/lit8 v7, v6, 0x1

    .line 116
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_31

    :cond_30
    const/4 v7, 0x0

    :goto_31
    ushr-int/lit8 v8, v3, 0x2

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v3, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v9, v7, 0x6

    or-int/2addr v5, v9

    and-int/lit8 v7, v7, 0x3f

    add-int/lit8 v9, v4, 0x1

    .line 121
    sget-object v10, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->map1:[C

    aget-char v8, v10, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v9, 0x1

    .line 122
    aget-char v3, v10, v3

    aput-char v3, v1, v9

    const/16 v3, 0x3d

    if-ge v4, v0, :cond_58

    .line 123
    aget-char v5, v10, v5

    goto :goto_5a

    :cond_58
    const/16 v5, 0x3d

    :goto_5a
    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_62

    .line 125
    aget-char v3, v10, v7

    :cond_62
    aput-char v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_11

    :cond_68
    return-object v1
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 81
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception p0

    .line 83
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const-string p0, ""

    return-object p0
.end method
