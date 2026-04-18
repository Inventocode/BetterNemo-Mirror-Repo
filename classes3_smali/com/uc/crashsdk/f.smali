.class public Lcom/uc/crashsdk/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z = true

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/Object;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->c:Ljava/lang/Object;

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/f;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 476
    sput-boolean v0, Lcom/uc/crashsdk/f;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .registers 6

    .line 440
    invoke-static {}, Lcom/uc/crashsdk/f;->f()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 444
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v2, :cond_1d

    aget-object v5, v0, v3

    .line 445
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    add-int/lit8 v4, v4, 0x1

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    move v1, v4

    :cond_1e
    return v1
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .registers 5

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 113
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    const-string v2, "="

    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_2a

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " line not contain \'=\'!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    const-string p1, "\n"

    .line 120
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_38

    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 125
    :cond_38
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 128
    :try_start_3c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_40} :catch_45

    if-gez p0, :cond_43

    goto :goto_49

    :cond_43
    move v1, p0

    goto :goto_49

    :catch_45
    move-exception p0

    .line 132
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_49
    return v1
.end method

.method static a(Z)I
    .registers 4

    .line 243
    sget-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    monitor-enter v0

    if-eqz p0, :cond_13

    .line 245
    :try_start_5
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-static {p0}, Lcom/uc/crashsdk/f;->c(Ljava/lang/String;)Z

    move-result v1

    .line 249
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :catchall_11
    move-exception p0

    goto :goto_38

    .line 251
    :cond_13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 252
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    invoke-static {v2}, Lcom/uc/crashsdk/f;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 257
    :cond_31
    sget-object p0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 259
    :goto_36
    monitor-exit v0

    return v1

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_11

    throw p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/StringBuffer;
    .registers 5

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 84
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/f;->d()[C

    move-result-object v0

    if-nez v0, :cond_16

    const-string p0, "crashsdk"

    const-string v0, "readCrashStatData alloc buffer failed!"

    .line 86
    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 90
    :cond_16
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    :try_start_1b
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_36
    .catchall {:try_start_1b .. :try_end_20} :catchall_34

    .line 94
    :try_start_20
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    move-result p0

    if-lez p0, :cond_2a

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v2, v0, v1, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_31
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 101
    :cond_2a
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_3d

    :catchall_2e
    move-exception p0

    move-object v1, v3

    goto :goto_3e

    :catch_31
    move-exception p0

    move-object v1, v3

    goto :goto_37

    :catchall_34
    move-exception p0

    goto :goto_3e

    :catch_36
    move-exception p0

    .line 98
    :goto_37
    :try_start_37
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    .line 101
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_3d
    return-object v2

    :goto_3e
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static a(I)V
    .registers 2

    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(II)V

    return-void
.end method

.method static a(II)V
    .registers 7

    if-nez p1, :cond_19

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Add stat for type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " with count 0!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_19
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x2ef

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-direct {v1, v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 33
    invoke-static {v0, v1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 7

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "="

    const-string v2, "\n"

    if-gez v0, :cond_19

    if-lez p2, :cond_3c

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 146
    :cond_19
    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_23

    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 151
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, v0, v2, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3c
    return-void
.end method

.method public static a(I[Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_60

    return v1

    .line 548
    :pswitch_6  #0x2f1
    sget-boolean p0, Lcom/uc/crashsdk/f;->a:Z

    if-nez p0, :cond_13

    if-eqz p1, :cond_d

    goto :goto_13

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 549
    :cond_13
    :goto_13
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/String;

    .line 552
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 554
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v0

    :cond_26
    return v1

    .line 542
    :pswitch_27  #0x2f0
    sget-boolean p0, Lcom/uc/crashsdk/f;->a:Z

    if-nez p0, :cond_34

    if-eqz p1, :cond_2e

    goto :goto_34

    :cond_2e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 543
    :cond_34
    :goto_34
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/String;

    .line 544
    invoke-static {p0}, Lcom/uc/crashsdk/f;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 535
    :pswitch_3d  #0x2ef
    sget-boolean p0, Lcom/uc/crashsdk/f;->a:Z

    if-nez p0, :cond_4a

    if-eqz p1, :cond_44

    goto :goto_4a

    :cond_44
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 536
    :cond_4a
    :goto_4a
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 537
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 538
    invoke-static {p0, p1}, Lcom/uc/crashsdk/f;->b(II)Z

    move-result p0

    return p0

    nop

    :pswitch_data_60
    .packed-switch 0x2ef
        :pswitch_3d  #000002ef
        :pswitch_27  #000002f0
        :pswitch_6  #000002f1
    .end packed-switch
.end method

.method private static a(Ljava/io/File;Ljava/lang/StringBuffer;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    :try_start_2
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_1f
    .catchall {:try_start_2 .. :try_end_7} :catchall_1d

    .line 167
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, p0, v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_1a
    .catchall {:try_start_7 .. :try_end_12} :catchall_17

    const/4 v0, 0x1

    .line 173
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_26

    :catchall_17
    move-exception p0

    move-object v1, v2

    goto :goto_27

    :catch_1a
    move-exception p0

    move-object v1, v2

    goto :goto_20

    :catchall_1d
    move-exception p0

    goto :goto_27

    :catch_1f
    move-exception p0

    .line 170
    :goto_20
    :try_start_20
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    .line 173
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_26
    return v0

    :goto_27
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 4

    .line 455
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v2, 0x2f1

    invoke-direct {v0, v2, v1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .registers 3

    .line 316
    sget-object v0, Lcom/uc/crashsdk/f;->c:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/String;Z)Z
    .registers 5

    const-string v0, "crash detail report"

    .line 320
    invoke-static {p1, v0}, Lcom/uc/crashsdk/a/h;->a(ZLjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    .line 324
    :cond_a
    new-instance p1, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x2f0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-direct {p1, v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    move-result p0

    return p0
.end method

.method static b()I
    .registers 5

    .line 461
    invoke-static {}, Lcom/uc/crashsdk/f;->f()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 465
    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v1, v2, :cond_1c

    aget-object v4, v0, v1

    .line 466
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    move v1, v3

    :cond_1d
    return v1
.end method

.method static b(Z)I
    .registers 3

    .line 280
    sget-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    monitor-enter v0

    if-eqz p0, :cond_18

    .line 282
    :try_start_5
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 284
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_1f

    :cond_14
    const/4 p0, 0x0

    goto :goto_1f

    :catchall_16
    move-exception p0

    goto :goto_21

    .line 288
    :cond_18
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    .line 289
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 291
    :goto_1f
    monitor-exit v0

    return p0

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_16

    throw p0
.end method

.method public static b(I)V
    .registers 2

    const/16 v0, 0x2bc

    if-eq p0, v0, :cond_5

    goto :goto_9

    :cond_5
    const/4 p0, 0x0

    .line 524
    invoke-static {p0}, Lcom/uc/crashsdk/f;->d(Z)V

    :goto_9
    return-void
.end method

.method private static b(II)Z
    .registers 6

    .line 40
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->u()Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_8
    const/4 v0, 0x0

    .line 46
    :try_start_9
    invoke-static {p0}, Lcom/uc/crashsdk/f;->c(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Stat type not exists: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "crashsdk"

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 52
    :cond_24
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_6a

    .line 54
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    .line 57
    :try_start_38
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 61
    :cond_3b
    :goto_3b
    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 62
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_5d

    if-nez v2, :cond_4c

    .line 64
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :cond_4c
    const-string v3, "["

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]\n"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_5d
    invoke-static {v2, v1}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p1

    .line 72
    invoke-static {v2, v1, v3}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    move-result p0
    :try_end_69
    .catchall {:try_start_38 .. :try_end_69} :catchall_6a

    return p0

    :catchall_6a
    move-exception p0

    .line 73
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 14

    .line 182
    invoke-static {}, Lcom/uc/crashsdk/f;->e()V

    .line 183
    sget-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 184
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {v1}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 186
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/StringBuffer;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 187
    monitor-exit v0

    return v3

    :cond_18
    const-string v2, "["

    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-gez v2, :cond_2a

    const-string p0, "Can not found process name start!"

    const-string v1, "crashsdk"

    .line 193
    invoke-static {v1, p0, v4}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    monitor-exit v0

    return v3

    :cond_2a
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const-string v6, "]"

    .line 198
    invoke-virtual {p0, v6, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_3d

    const-string p0, "Can not found process name end!"

    const-string v1, "crashsdk"

    .line 200
    invoke-static {v1, p0, v4}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    monitor-exit v0

    return v3

    .line 204
    :cond_3d
    invoke-virtual {p0, v2, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_93

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 207
    :goto_43
    :try_start_43
    sget-object v7, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_85

    .line 208
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 209
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 211
    invoke-static {p0, v7}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_82

    .line 213
    invoke-static {v2, v8, v9}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;II)V

    .line 216
    sget-object v10, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    monitor-enter v10
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_8c

    .line 217
    :try_start_61
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseIntArray;

    if-nez v11, :cond_71

    .line 219
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 220
    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_71
    invoke-virtual {v11, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    add-int/2addr v12, v9

    .line 224
    invoke-virtual {v11, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    monitor-exit v10
    :try_end_7a
    .catchall {:try_start_61 .. :try_end_7a} :catchall_7f

    .line 227
    :try_start_7a
    invoke-static {p0, v7, v3}, Lcom/uc/crashsdk/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8c

    const/4 v6, 0x1

    goto :goto_82

    :catchall_7f
    move-exception v2

    .line 225
    :try_start_80
    monitor-exit v10
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_8c

    :cond_82
    :goto_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_85
    if-eqz v6, :cond_8a

    .line 233
    :try_start_87
    invoke-static {v1, p0}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    .line 237
    :cond_8a
    monitor-exit v0

    return v5

    :catchall_8c
    move-exception v2

    if-eqz v6, :cond_92

    .line 233
    invoke-static {v1, p0}, Lcom/uc/crashsdk/f;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    :cond_92
    throw v2

    :catchall_93
    move-exception p0

    .line 238
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_93

    throw p0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 2

    .line 332
    invoke-static {}, Lcom/uc/crashsdk/f;->e()V

    .line 333
    sget-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 334
    :try_start_6
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    .line 335
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p0
.end method

.method static c()V
    .registers 4

    .line 516
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method static c(Z)V
    .registers 2

    .line 399
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 402
    :cond_7
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 406
    :cond_e
    invoke-static {}, Lcom/uc/crashsdk/e;->j()V

    .line 409
    invoke-static {}, Lcom/uc/crashsdk/a/h;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 411
    invoke-static {p0}, Lcom/uc/crashsdk/a/h;->a(Z)V

    .line 416
    :cond_1a
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 418
    invoke-static {p0}, Lcom/uc/crashsdk/f;->d(Z)V

    .line 419
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Z)Z

    .line 420
    invoke-static {p0}, Lcom/uc/crashsdk/a/h;->b(Z)V

    :cond_2d
    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5

    .line 265
    sget-object v0, Lcom/uc/crashsdk/f;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 270
    :cond_c
    :goto_c
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 271
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 272
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 273
    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method static d(Z)V
    .registers 4

    .line 479
    sget-boolean v0, Lcom/uc/crashsdk/f;->f:Z

    if-eqz v0, :cond_5

    return-void

    .line 483
    :cond_5
    sget-object v0, Lcom/uc/crashsdk/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_8
    sget-boolean v1, Lcom/uc/crashsdk/f;->f:Z

    if-eqz v1, :cond_e

    .line 485
    monitor-exit v0

    return-void

    :cond_e
    const-string v1, "crash detail"

    .line 487
    invoke-static {p0, v1}, Lcom/uc/crashsdk/a/h;->a(ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 488
    monitor-exit v0

    return-void

    :cond_18
    const/4 p0, 0x0

    .line 492
    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    const/4 p0, 0x2

    .line 494
    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 495
    invoke-static {}, Lcom/uc/crashsdk/b;->o()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/16 p0, 0x2a

    .line 496
    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    goto :goto_48

    .line 498
    :cond_31
    invoke-static {}, Lcom/uc/crashsdk/b;->q()Z

    move-result v1

    if-eqz v1, :cond_48

    const/16 p0, 0x65

    .line 500
    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 501
    invoke-static {}, Lcom/uc/crashsdk/b;->o()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/16 p0, 0x2b

    .line 502
    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    goto :goto_2f

    :cond_48
    :goto_48
    if-eqz p0, :cond_4d

    .line 507
    invoke-static {v2, v2}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_4d
    const/16 p0, 0x64

    .line 509
    invoke-static {p0, v2}, Lcom/uc/crashsdk/f;->a(II)V

    .line 511
    sput-boolean v2, Lcom/uc/crashsdk/f;->f:Z

    .line 512
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_56

    throw p0
.end method

.method private static d()[C
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x400

    :cond_3
    :goto_3
    if-nez v0, :cond_10

    if-lez v1, :cond_10

    .line 300
    :try_start_7
    new-array v0, v1, [C
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a

    goto :goto_3

    .line 303
    :catchall_a
    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x200

    if-ge v1, v2, :cond_3

    :cond_10
    return-object v0
.end method

.method private static e()V
    .registers 3

    .line 339
    sget-object v0, Lcom/uc/crashsdk/f;->d:Landroid/util/SparseArray;

    monitor-enter v0

    .line 340
    :try_start_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_b

    .line 341
    monitor-exit v0

    return-void

    :cond_b
    const/16 v1, 0x64

    const-string v2, "start_pv"

    .line 344
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x66

    const-string v2, "start_hpv"

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "all_all"

    .line 347
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "all_fg"

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x65

    const-string v2, "all_bg"

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "java_fg"

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "java_bg"

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "native_fg"

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "native_bg"

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    const-string v2, "native_anr_fg"

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    const-string v2, "native_anr_bg"

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v2, "native_ok"

    .line 359
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v2, "unexp_anr"

    .line 361
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1d

    const-string v2, "unexp_lowmem"

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1e

    const-string v2, "unexp_killed"

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1f

    const-string v2, "unexp_exit"

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v2, "unexp_restart"

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v2, "unexp_fg"

    .line 366
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc

    const-string v2, "unexp_bg"

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x28

    const-string v2, "anr_fg"

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x29

    const-string v2, "anr_bg"

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    const-string v2, "anr_cr_fg"

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2b

    const-string v2, "anr_cr_bg"

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xd

    const-string v2, "log_up_succ"

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe

    const-string v2, "log_up_fail"

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string v2, "log_empty"

    .line 376
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc8

    const-string v2, "log_tmp"

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v2, "log_abd_all"

    .line 380
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v2, "log_abd_builtin"

    .line 381
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v2, "log_abd_custom"

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v2, "log_large"

    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v2, "log_up_all"

    .line 385
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v2, "log_up_bytes"

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v2, "log_up_crash"

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v2, "log_up_custom"

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v2, "log_zipped"

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc9

    const-string v2, "log_enced"

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x19

    const-string v2, "log_renamed"

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    const-string v2, "log_safe_skip"

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    monitor-exit v0

    return-void

    :catchall_119
    move-exception v1

    monitor-exit v0
    :try_end_11b
    .catchall {:try_start_3 .. :try_end_11b} :catchall_119

    throw v1
.end method

.method private static f()[Ljava/io/File;
    .registers 7

    .line 425
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    array-length v2, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2c

    aget-object v4, v0, v3

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".st"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 431
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 434
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0

    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method
