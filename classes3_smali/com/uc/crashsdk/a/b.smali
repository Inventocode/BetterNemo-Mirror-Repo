.class public final Lcom/uc/crashsdk/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 15
    fill-array-data v1, :array_18

    sput-object v1, Lcom/uc/crashsdk/a/b;->a:[I

    new-array v1, v0, [I

    .line 16
    fill-array-data v1, :array_2c

    sput-object v1, Lcom/uc/crashsdk/a/b;->b:[I

    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_40

    sput-object v0, Lcom/uc/crashsdk/a/b;->c:[I

    return-void

    :array_18
    .array-data 4
        0x7e
        0x93
        0x73
        0xf1
        0x65
        0xc6
        0xd7
        0x86
    .end array-data

    :array_2c
    .array-data 4
        0x7d
        0xb9
        0xe9
        0xe2
        0x81
        0x8e
        0x97
        0xb0
    .end array-data

    :array_40
    .array-data 4
        0xee
        0xb9
        0xe9
        0xb3
        0x81
        0x8e
        0x97
        0xa7
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_d

    return-object v1

    .line 35
    :cond_d
    :try_start_d
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_52
    .catchall {:try_start_d .. :try_end_12} :catchall_50

    .line 36
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 38
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 40
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_4b
    .catchall {:try_start_12 .. :try_end_1f} :catchall_47

    .line 43
    :try_start_1f
    sget-object p0, Lcom/uc/crashsdk/a/b;->a:[I

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/b;->a([B[I)[B

    move-result-object p0

    if-eqz p0, :cond_43

    .line 45
    array-length v0, p0

    if-lez v0, :cond_43

    .line 46
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 48
    aget-byte v2, p0, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3a

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_3f

    :cond_3a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3f} :catch_52
    .catchall {:try_start_1f .. :try_end_3f} :catchall_50

    .line 57
    :goto_3f
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v2

    .line 52
    :cond_43
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_47
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_5d

    :catch_4b
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_54

    :catchall_50
    move-exception p0

    goto :goto_5d

    :catch_52
    move-exception p0

    move-object v0, v1

    .line 53
    :goto_54
    :try_start_54
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5b

    .line 55
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_5b
    move-exception p0

    move-object v1, v0

    .line 57
    :goto_5d
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    if-nez p2, :cond_3

    return-object p0

    .line 288
    :cond_3
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p0

    .line 292
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x300000

    cmp-long v5, v1, v3

    if-lez v5, :cond_22

    goto/16 :goto_bf

    .line 297
    :cond_22
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 298
    array-length v2, v1

    if-gtz v2, :cond_2d

    goto/16 :goto_bf

    :cond_2d
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_84

    const/4 p2, 0x0

    .line 310
    :try_start_32
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_4a

    .line 311
    :try_start_37
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_45

    .line 312
    :try_start_3c
    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 313
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_43

    goto :goto_51

    :catchall_43
    move-exception p2

    goto :goto_4e

    :catchall_45
    move-exception v5

    move-object v6, v5

    move-object v5, p2

    move-object p2, v6

    goto :goto_4e

    :catchall_4a
    move-exception v4

    move-object v5, p2

    move-object p2, v4

    move-object v4, v5

    .line 314
    :goto_4e
    :try_start_4e
    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_7c

    .line 317
    :goto_51
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 322
    :try_start_57
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5d

    const/4 p2, 0x1

    goto :goto_62

    :catchall_5d
    move-exception p2

    .line 324
    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_62
    if-eqz p2, :cond_7b

    if-eqz v1, :cond_7b

    .line 328
    array-length p2, v1

    if-gtz p2, :cond_6a

    goto :goto_7b

    .line 331
    :cond_6a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_86

    :cond_7b
    :goto_7b
    return-object p0

    :catchall_7c
    move-exception p0

    .line 317
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_84
    move-object p1, p0

    const/4 p2, 0x0

    :goto_86
    if-eqz p2, :cond_bf

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    goto :goto_a7

    :cond_a5
    move-object p2, p1

    const/4 v4, 0x0

    :goto_a7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result p2

    if-nez p2, :cond_b4

    const/4 v2, 0x0

    goto :goto_bc

    :cond_b4
    if-eqz v4, :cond_bc

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_bc
    :goto_bc
    if-eqz v2, :cond_bf

    return-object p1

    :cond_bf
    :goto_bf
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 458
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 462
    :cond_e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_19

    :catchall_14
    move-exception p0

    .line 463
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_19
    const/4 v0, 0x0

    if-nez p0, :cond_1d

    return v0

    .line 471
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v1, Lcom/uc/crashsdk/a/b;->a:[I

    invoke-static {p1, v1}, Lcom/uc/crashsdk/a/b;->b([B[I)[B

    move-result-object p1

    if-nez p1, :cond_2d

    .line 474
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return v0

    .line 480
    :cond_2d
    :try_start_2d
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_35

    const/4 v0, 0x1

    .line 485
    :goto_31
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_3a

    :catchall_35
    move-exception p1

    .line 482
    :try_start_36
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    goto :goto_31

    :goto_3a
    return v0

    :catchall_3b
    move-exception p1

    .line 485
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static a([B[I)[B
    .registers 10

    .line 385
    array-length v0, p0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_48

    if-eqz p1, :cond_48

    array-length v0, p1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_f

    goto :goto_48

    .line 390
    :cond_f
    array-length v0, p0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 394
    :try_start_12
    new-array v2, v0, [B
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_14} :catch_44

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    if-ge v4, v0, :cond_29

    add-int/lit8 v6, v4, 0x0

    .line 404
    aget-byte v6, p0, v6

    .line 405
    rem-int/lit8 v7, v4, 0x8

    aget v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    .line 406
    aput-byte v6, v2, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_29
    add-int/lit8 v4, v0, 0x0

    .line 410
    aget-byte v4, p0, v4

    aget v6, p1, v1

    xor-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    if-ne v4, v6, :cond_43

    const/4 v4, 0x1

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    aget-byte p0, p0, v0

    aget p1, p1, v4

    xor-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_43

    return-object v2

    :cond_43
    return-object v3

    :catch_44
    move-exception p0

    .line 398
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    return-object v3
.end method

.method private static b([B[I)[B
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    if-eqz p1, :cond_37

    .line 425
    array-length v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    goto :goto_37

    .line 429
    :cond_b
    array-length v1, p0

    add-int/lit8 v2, v1, 0x2

    .line 433
    :try_start_e
    new-array v0, v2, [B
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_10} :catch_33

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v3, v1, :cond_24

    .line 443
    aget-byte v5, p0, v3

    .line 444
    rem-int/lit8 v6, v3, 0x8

    aget v6, p1, v6

    xor-int/2addr v6, v5

    int-to-byte v6, v6

    .line 445
    aput-byte v6, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 449
    :cond_24
    aget p0, p1, v2

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    add-int/2addr v1, p0

    .line 450
    aget p0, p1, p0

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0

    :catch_33
    move-exception p0

    .line 437
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-object v0
.end method
