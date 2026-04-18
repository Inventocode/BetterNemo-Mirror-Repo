.class public Lcom/sdk/q/d;
.super Ljava/lang/Object;


# static fields
.field public static b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sdk/q/d;->b:[B

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

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_83

    :goto_11
    sget-object v3, Lcom/sdk/q/d;->b:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v3, v2

    const/4 v3, -0x1

    if-ge v4, v0, :cond_21

    if-eq v2, v3, :cond_1f

    goto :goto_21

    :cond_1f
    move v2, v4

    goto :goto_11

    :cond_21
    :goto_21
    if-ne v2, v3, :cond_25

    goto/16 :goto_83

    :cond_25
    :goto_25
    sget-object v5, Lcom/sdk/q/d;->b:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v5, v4

    if-ge v6, v0, :cond_34

    if-eq v4, v3, :cond_32

    goto :goto_34

    :cond_32
    move v4, v6

    goto :goto_25

    :cond_34
    :goto_34
    if-ne v4, v3, :cond_37

    goto :goto_83

    :cond_37
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v5, v4, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_41
    add-int/lit8 v2, v6, 0x1

    aget-byte v5, p0, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_4a

    goto :goto_83

    :cond_4a
    sget-object v7, Lcom/sdk/q/d;->b:[B

    aget-byte v5, v7, v5

    if-ge v2, v0, :cond_55

    if-eq v5, v3, :cond_53

    goto :goto_55

    :cond_53
    move v6, v2

    goto :goto_41

    :cond_55
    :goto_55
    if-ne v5, v3, :cond_58

    goto :goto_83

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

    if-ne v2, v6, :cond_6b

    goto :goto_83

    :cond_6b
    sget-object v7, Lcom/sdk/q/d;->b:[B

    aget-byte v2, v7, v2

    if-ge v4, v0, :cond_76

    if-eq v2, v3, :cond_74

    goto :goto_76

    :cond_74
    move v2, v4

    goto :goto_64

    :cond_76
    :goto_76
    if-ne v2, v3, :cond_79

    goto :goto_83

    :cond_79
    and-int/lit8 v3, v5, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v4

    goto :goto_f

    :cond_83
    :goto_83
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
