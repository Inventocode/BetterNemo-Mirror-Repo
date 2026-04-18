.class public Lcom/uc/crashsdk/a/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z = true

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Z = false

.field private static final i:Ljava/lang/Object;

.field private static final j:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/g;->i:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 590
    fill-array-data v0, :array_12

    sput-object v0, Lcom/uc/crashsdk/a/g;->j:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    .line 394
    sget-object v0, Lcom/uc/crashsdk/a/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/io/File;IZ)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_1a

    .line 158
    :try_start_7
    new-array p0, p1, [B

    .line 159
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_27

    .line 161
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v0, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    .line 168
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v3

    :catchall_18
    move-exception p0

    goto :goto_1c

    :catchall_1a
    move-exception p0

    move-object v2, v1

    :goto_1c
    if-eqz p2, :cond_27

    .line 165
    :try_start_1e
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 168
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_27
    :goto_27
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 269
    invoke-static {p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_2a

    :cond_17
    if-eqz p2, :cond_29

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    :cond_29
    move-object v1, p0

    :cond_2a
    :goto_2a
    if-nez v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object p1, v1

    :goto_2e
    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 537
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 539
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3c

    .line 540
    :try_start_12
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x200

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_39

    .line 542
    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    :goto_1e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 545
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 548
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_37

    .line 552
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 553
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_37
    move-exception v2

    goto :goto_3f

    :catchall_39
    move-exception v2

    move-object p0, v0

    goto :goto_3f

    :catchall_3c
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_3f
    const/4 v3, 0x0

    .line 549
    :try_start_40
    invoke-static {v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4a

    .line 552
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 553
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_4a
    move-exception v0

    .line 552
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 553
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/io/File;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 200
    :try_start_7
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2d

    .line 201
    :try_start_c
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v4, 0x200

    invoke-direct {p0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_29

    const/4 v2, 0x0

    .line 204
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 205
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_27

    add-int/lit8 v2, v2, 0x1

    if-lez p1, :cond_14

    if-lt v2, p1, :cond_14

    .line 208
    :cond_23
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_35

    :catchall_27
    move-exception p1

    goto :goto_2b

    :catchall_29
    move-exception p1

    move-object p0, v2

    :goto_2b
    move-object v2, v3

    goto :goto_2f

    :catchall_2d
    move-exception p1

    move-object p0, v2

    .line 211
    :goto_2f
    :try_start_2f
    invoke-static {p1, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_39

    .line 214
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 215
    :goto_35
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_39
    move-exception p1

    .line 214
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(I)V
    .registers 2

    const/16 v0, 0x320

    if-eq p0, v0, :cond_f

    .line 485
    sget-boolean p0, Lcom/uc/crashsdk/a/g;->a:Z

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 481
    :cond_f
    invoke-static {}, Lcom/uc/crashsdk/a/g;->l()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 372
    sget-object v0, Lcom/uc/crashsdk/a/g;->b:Landroid/content/Context;

    if-eqz v0, :cond_9

    const-string v0, "mContext is existed"

    .line 373
    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 375
    :cond_9
    sput-object p0, Lcom/uc/crashsdk/a/g;->b:Landroid/content/Context;

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 377
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/a/g;->c:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/a/g;->d:Ljava/lang/String;

    .line 381
    :try_start_17
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "primaryCpuAbi"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 384
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 385
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 386
    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/uc/crashsdk/a/g;->e:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_32

    :cond_31
    return-void

    :catchall_32
    move-exception p0

    const/4 v0, 0x0

    .line 388
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 256
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p0

    const/4 v0, 0x1

    .line 257
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    :cond_b
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    const/high16 v0, 0x80000

    new-array v0, v0, [B

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    :cond_21
    const/4 v1, 0x0

    :try_start_22
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_45

    :try_start_27
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_41

    :goto_2c
    :try_start_2c
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_38

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3f

    goto :goto_2c

    :cond_38
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_3f
    move-exception p1

    goto :goto_43

    :catchall_41
    move-exception p1

    move-object p0, v1

    :goto_43
    move-object v1, v2

    goto :goto_47

    :catchall_45
    move-exception p1

    move-object p0, v1

    :goto_47
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/lang/Throwable;)V
    .registers 2

    const/4 v0, 0x0

    .line 334
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;Z)V
    .registers 2

    if-nez p1, :cond_8

    .line 346
    :try_start_2
    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 347
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_b

    :catchall_b
    :cond_b
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 7

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_22

    aget-object v4, v0, v3

    .line 103
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 111
    :cond_22
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 242
    :try_start_2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_16

    .line 243
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p1, v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    const/4 v0, 0x1

    .line 248
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_1d

    :catchall_13
    move-exception p0

    move-object v1, v2

    goto :goto_17

    :catchall_16
    move-exception p0

    .line 245
    :goto_17
    :try_start_17
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 248
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_1d
    return v0

    :catchall_1e
    move-exception p0

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/File;[B)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15

    .line 226
    :try_start_7
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 227
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_12

    const/4 v0, 0x1

    .line 232
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_1c

    :catchall_12
    move-exception p0

    move-object v1, v2

    goto :goto_16

    :catchall_15
    move-exception p0

    .line 229
    :goto_16
    :try_start_16
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    .line 232
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_1c
    return v0

    :catchall_1d
    move-exception p0

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_f

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/StringBuffer;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 299
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 398
    sget-object v0, Lcom/uc/crashsdk/a/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/io/File;)V
    .registers 2

    const-string v0, ""

    .line 115
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .registers 2

    const/4 v0, 0x1

    .line 341
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 1

    .line 303
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)J
    .registers 6

    .line 308
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_16

    .line 310
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_10} :catch_16

    cmp-long p0, v3, v1

    if-gez p0, :cond_15

    goto :goto_16

    :cond_15
    move-wide v1, v3

    :catch_16
    :cond_16
    :goto_16
    return-wide v1
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 402
    sget-object v0, Lcom/uc/crashsdk/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 130
    :try_start_b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_33

    const/16 p0, 0x100

    :try_start_12
    new-array p0, p0, [B

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    :goto_19
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_28

    .line 136
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 138
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_30

    .line 142
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_3a

    :catchall_30
    move-exception p0

    move-object v0, v3

    goto :goto_34

    :catchall_33
    move-exception p0

    .line 139
    :goto_34
    :try_start_34
    invoke-static {p0, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 142
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_3a
    return-object v1

    :catchall_3b
    move-exception p0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 406
    sget-object v0, Lcom/uc/crashsdk/a/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, ""

    return-object v0
.end method

.method public static d(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x40

    const/4 v1, 0x1

    .line 150
    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "utf-8"

    .line 565
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "MD5"

    .line 566
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 568
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 570
    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    add-int/2addr v0, v2

    :goto_1d
    if-ge v2, v0, :cond_36

    aget-byte v3, p0, v2

    sget-object v4, Lcom/uc/crashsdk/a/g;->j:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v5, v4, v5

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_44

    :catch_3b
    move-exception p0

    const-string v0, "crashsdk"

    const-string v1, "getMD5: "

    .line 572
    invoke-static {v0, v1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_44
    return-object p0
.end method

.method public static e()Z
    .registers 1

    .line 429
    invoke-static {}, Lcom/uc/crashsdk/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 432
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/a/g;->f()Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/io/File;)[B
    .registers 5

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 182
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 183
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1e

    .line 184
    :try_start_14
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    .line 189
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    move-object v1, v0

    goto :goto_27

    :catchall_1c
    move-exception p0

    goto :goto_20

    :catchall_1e
    move-exception p0

    move-object v2, v1

    :goto_20
    const/4 v0, 0x0

    .line 186
    :try_start_21
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;Z)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 189
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_27
    return-object v1

    :catchall_28
    move-exception p0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static f()Z
    .registers 2

    .line 437
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .registers 3

    .line 442
    invoke-static {}, Lcom/uc/crashsdk/a/g;->i()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    const-string v1, " root "

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_29

    .line 447
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_29
    return v2
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    .line 457
    invoke-static {}, Lcom/uc/crashsdk/a/g;->l()V

    .line 458
    sget-object v0, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    return-object v0

    .line 461
    :cond_e
    sget-object v0, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    .line 465
    invoke-static {}, Lcom/uc/crashsdk/a/g;->l()V

    .line 466
    sget-object v0, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    return-object v0

    .line 469
    :cond_e
    sget-object v0, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static j()V
    .registers 4

    .line 473
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x3a98

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static k()V
    .registers 2

    .line 525
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/uc/crashsdk/a/g;->h:Z

    if-nez v0, :cond_9

    goto :goto_17

    :cond_9
    const/16 v0, 0x7b

    .line 528
    sget-object v1, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 v0, 0x7c

    .line 529
    sget-object v1, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_17
    :goto_17
    return-void
.end method

.method private static l()V
    .registers 6

    .line 493
    sget-boolean v0, Lcom/uc/crashsdk/a/g;->h:Z

    if-eqz v0, :cond_5

    return-void

    .line 497
    :cond_5
    sget-object v0, Lcom/uc/crashsdk/a/g;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_8
    sget-boolean v1, Lcom/uc/crashsdk/a/g;->h:Z

    if-eqz v1, :cond_e

    .line 499
    monitor-exit v0

    return-void

    :cond_e
    const-string v1, "sh"

    const-string v2, "-c"

    const-string v3, "type su"

    .line 502
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_65

    .line 504
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    .line 506
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_65

    const-string v4, "/su"

    .line 507
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_65

    const/16 v4, 0x2f

    add-int/2addr v2, v3

    .line 508
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_65

    .line 510
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/a/g;->f:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v4

    const-string v4, "-l"

    aput-object v4, v2, v3

    const/4 v4, 0x2

    aput-object v1, v2, v4

    .line 511
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 514
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/a/g;->g:Ljava/lang/String;

    .line 519
    :cond_65
    sput-boolean v3, Lcom/uc/crashsdk/a/g;->h:Z

    .line 520
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_6c

    .line 521
    invoke-static {}, Lcom/uc/crashsdk/a/g;->k()V

    return-void

    :catchall_6c
    move-exception v1

    .line 520
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method
