.class public Lcom/unikuwei/mianmi/account/shield/e/l;
.super Ljava/lang/Object;


# static fields
.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/unikuwei/mianmi/account/shield/e/l;->b:[B

    return-void

    :array_a
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
        -0x1t
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
        -0x1t
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
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static a([B)[B
    .registers 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "MkYxNEQwRjU1MEQyNEYxOENCQTU1MTlGNEZBMjI2QUU="

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([B[I)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[I)[B
    .registers 3

    array-length v0, p0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([BZ)[I

    move-result-object p0

    invoke-static {p0, p1}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([I[I)[I

    move-result-object p0

    invoke-static {p0, v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([I)[B
    .registers 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "MkYxNEQwRjU1MEQyNEYxOENCQTU1MTlGNEZBMjI2QUU="

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/e/l;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([I[I)[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([IZ)[B
    .registers 6

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_f

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p1, p0, p1

    if-le p1, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    move v0, p1

    :cond_f
    new-array p1, v0, [B

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_25

    ushr-int/lit8 v2, v1, 0x2

    aget v2, p0, v2

    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_25
    return-object p1
.end method

.method public static a(Ljava/lang/String;)[I
    .registers 2

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/l;->c(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/unikuwei/mianmi/account/shield/e/l;->a([BZ)[I

    move-result-object p0

    return-object p0
.end method

.method private static a([BZ)[I
    .registers 8

    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_9

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    goto :goto_e

    :cond_9
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_e
    if-eqz p1, :cond_18

    add-int/lit8 p1, v0, 0x1

    new-array p1, p1, [I

    array-length v1, p0

    aput v1, p1, v0

    goto :goto_1a

    :cond_18
    new-array p1, v0, [I

    :goto_1a
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_31

    ushr-int/lit8 v2, v1, 0x2

    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    return-object p1
.end method

.method private static a([I[I)[I
    .registers 14

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_6

    return-object p0

    :cond_6
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v1, v3, :cond_12

    new-array v1, v3, [I

    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :cond_12
    aget v1, p0, v0

    aget v1, p0, v2

    const v3, -0x61c88647

    const/16 v4, 0x34

    add-int/lit8 v5, v0, 0x1

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    mul-int v4, v4, v3

    :goto_22
    if-eqz v4, :cond_6a

    ushr-int/lit8 v5, v4, 0x2

    and-int/lit8 v5, v5, 0x3

    move v6, v0

    :goto_29
    if-lez v6, :cond_4c

    add-int/lit8 v7, v6, -0x1

    aget v7, p0, v7

    aget v8, p0, v6

    ushr-int/lit8 v9, v7, 0x5

    shl-int/lit8 v10, v1, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v1, 0x3

    shl-int/lit8 v11, v7, 0x4

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v1, v4

    and-int/lit8 v10, v6, 0x3

    xor-int/2addr v10, v5

    aget v10, p1, v10

    xor-int/2addr v7, v10

    add-int/2addr v1, v7

    xor-int/2addr v1, v9

    sub-int v1, v8, v1

    aput v1, p0, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_29

    :cond_4c
    aget v7, p0, v0

    aget v8, p0, v2

    ushr-int/lit8 v9, v7, 0x5

    shl-int/lit8 v10, v1, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v1, 0x3

    shl-int/lit8 v11, v7, 0x4

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v1, v4

    and-int/lit8 v6, v6, 0x3

    xor-int/2addr v5, v6

    aget v5, p1, v5

    xor-int/2addr v5, v7

    add-int/2addr v1, v5

    xor-int/2addr v1, v9

    sub-int v1, v8, v1

    aput v1, p0, v2

    sub-int/2addr v4, v3

    goto :goto_22

    :cond_6a
    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_87

    :goto_d
    sget-object v3, Lcom/unikuwei/mianmi/account/shield/e/l;->b:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v3, v2

    const/4 v3, -0x1

    if-ge v4, v0, :cond_1d

    if-eq v2, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move v2, v4

    goto :goto_d

    :cond_1d
    :goto_1d
    if-ne v2, v3, :cond_21

    goto/16 :goto_87

    :cond_21
    :goto_21
    sget-object v5, Lcom/unikuwei/mianmi/account/shield/e/l;->b:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v5, v4

    if-ge v6, v0, :cond_30

    if-eq v4, v3, :cond_2e

    goto :goto_30

    :cond_2e
    move v4, v6

    goto :goto_21

    :cond_30
    :goto_30
    if-ne v4, v3, :cond_33

    goto :goto_87

    :cond_33
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v5, v4, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3d
    add-int/lit8 v2, v6, 0x1

    aget-byte v5, p0, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_4a

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_4a
    sget-object v7, Lcom/unikuwei/mianmi/account/shield/e/l;->b:[B

    aget-byte v5, v7, v5

    if-ge v2, v0, :cond_55

    if-eq v5, v3, :cond_53

    goto :goto_55

    :cond_53
    move v6, v2

    goto :goto_3d

    :cond_55
    :goto_55
    if-ne v5, v3, :cond_58

    goto :goto_87

    :cond_58
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v7, v5, 0x3c

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_64
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    if-ne v2, v6, :cond_6f

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_6f
    sget-object v7, Lcom/unikuwei/mianmi/account/shield/e/l;->b:[B

    aget-byte v2, v7, v2

    if-ge v4, v0, :cond_7a

    if-eq v2, v3, :cond_78

    goto :goto_7a

    :cond_78
    move v2, v4

    goto :goto_64

    :cond_7a
    :goto_7a
    if-ne v2, v3, :cond_7d

    goto :goto_87

    :cond_7d
    and-int/lit8 v3, v5, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v4

    goto :goto_b

    :cond_87
    :goto_87
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)[B
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_68

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p0, v3

    const/16 v5, 0x5a

    const/16 v6, 0x39

    const/16 v7, 0x41

    const/16 v8, 0x30

    if-lt v4, v8, :cond_2a

    aget-byte v4, p0, v3

    if-gt v4, v6, :cond_2a

    aget-byte v4, p0, v3

    sub-int/2addr v4, v8

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    goto :goto_3c

    :cond_2a
    aget-byte v4, p0, v3

    if-lt v4, v7, :cond_3c

    aget-byte v4, p0, v3

    if-gt v4, v5, :cond_3c

    aget-byte v4, p0, v3

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, 0xa

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, p0, v3

    if-lt v4, v8, :cond_51

    aget-byte v4, p0, v3

    if-gt v4, v6, :cond_51

    aget-byte v4, v1, v2

    aget-byte v3, p0, v3

    sub-int/2addr v3, v8

    int-to-byte v3, v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    goto :goto_65

    :cond_51
    aget-byte v4, p0, v3

    if-lt v4, v7, :cond_65

    aget-byte v4, p0, v3

    if-gt v4, v5, :cond_65

    aget-byte v4, v1, v2

    aget-byte v3, p0, v3

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_68
    return-object v1
.end method
