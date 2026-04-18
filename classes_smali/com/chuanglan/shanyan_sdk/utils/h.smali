.class public Lcom/chuanglan/shanyan_sdk/utils/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/h;->a:[C

    return-void
.end method

.method private static a(C)I
    .registers 4

    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    :goto_13
    add-int/lit8 p0, p0, 0x1a

    return p0

    :cond_16
    const/16 v0, 0x30

    if-lt p0, v0, :cond_22

    const/16 v1, 0x39

    if-gt p0, v1, :cond_22

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1a

    goto :goto_13

    :cond_22
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_4a

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_47

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_30

    const/4 p0, 0x0

    return p0

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    const/16 p0, 0x3f

    return p0

    :cond_4a
    const/16 p0, 0x3e

    return p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 10

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v2, v0, -0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    const/4 v5, 0x0

    :goto_10
    if-gt v4, v2, :cond_5c

    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    sget-object v7, Lcom/chuanglan/shanyan_sdk/utils/h;->a:[C

    shr-int/lit8 v8, v6, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v7, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0xe

    if-lt v5, v7, :cond_5a

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_5a
    move v5, v6

    goto :goto_10

    :cond_5c
    add-int/2addr v3, v0

    add-int/lit8 v0, v3, -0x2

    if-ne v4, v0, :cond_93

    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v4, 0x1

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/h;->a:[C

    shr-int/lit8 v2, p0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "="

    :goto_8f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b4

    :cond_93
    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_b4

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/h;->a:[C

    shr-int/lit8 v2, p0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "=="

    goto :goto_8f

    :cond_b4
    :goto_b4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    if-ne v1, v0, :cond_15

    goto :goto_61

    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/h;->a(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/h;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/h;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/utils/h;->a(C)I

    move-result v5

    add-int/2addr v2, v5

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3d

    if-ne v3, v5, :cond_54

    goto :goto_61

    :cond_54
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_62

    :goto_61
    return-void

    :cond_62
    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1d
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    :try_start_6
    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/h;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_19
    .catchall {:try_start_6 .. :try_end_d} :catchall_16

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_15
    return-object p0

    :catchall_16
    move-exception p0

    move-object v0, v1

    goto :goto_23

    :catch_19
    move-object v0, v1

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_23

    :catch_1d
    :goto_1d
    :try_start_1d
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_1b

    :goto_23
    if-eqz v0, :cond_2d

    :try_start_25
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    :goto_2d
    throw p0
.end method
