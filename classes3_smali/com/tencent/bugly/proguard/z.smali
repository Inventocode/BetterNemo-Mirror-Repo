.class public Lcom/tencent/bugly/proguard/z;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/tencent/bugly/proguard/z;->b:I

    .line 28
    iput-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/tencent/bugly/proguard/z;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, -0x1

    if-nez p0, :cond_d

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "File name is null."

    .line 208
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v0

    .line 212
    :cond_d
    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 214
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 216
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_2a

    return-wide p0

    :catchall_2a
    move-exception p0

    .line 219
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_2e
    return-wide v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/util/Comparator;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3f

    if-nez p2, :cond_a

    goto :goto_3f

    .line 135
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    new-instance p6, Ljava/io/File;

    invoke-direct {p6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p6}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3e

    invoke-virtual {p6}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 140
    :try_start_1f
    new-instance p0, Lcom/tencent/bugly/proguard/z$1;

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/z$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 150
    array-length p0, v2

    if-nez p0, :cond_2e

    goto :goto_39

    :cond_2e
    const-wide/16 v5, 0x0

    sub-long v7, v0, p3

    move-object v3, p1

    move-object v4, p2

    .line 154
    invoke-static/range {v2 .. v8}, Lcom/tencent/bugly/proguard/z;->a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p5
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_3a

    goto :goto_3e

    :cond_39
    :goto_39
    return-object p5

    :catchall_3a
    move-exception p0

    .line 164
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    :cond_3e
    :goto_3e
    return-object p5

    :cond_3f
    :goto_3f
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "prefix %s and/or postfix %s is null."

    .line 131
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p5
.end method

.method private static a([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v4, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_24

    cmp-long v6, p3, v4

    if-gtz v6, :cond_24

    cmp-long v6, v4, p5

    if-gtz v6, :cond_24

    .line 192
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_27
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 20
    :goto_1
    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    if-ge v0, v1, :cond_f

    .line 21
    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    if-eqz p1, :cond_1b

    .line 23
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 98
    invoke-static/range {v0 .. v6}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 102
    :try_start_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    const-string p4, "File %s is to be deleted."

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {p4, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p3

    if-eqz p3, :cond_10

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 109
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Number of overdue trace files that has deleted: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception p0

    .line 111
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;JZ)Z
    .registers 14

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 35
    :cond_4
    :try_start_4
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0, p4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v1, v8

    move-wide v6, p2

    invoke-static/range {v1 .. v7}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/Writer;[CIJJ)Z

    move-result p0

    .line 37
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_24

    return p0

    :catchall_24
    move-exception p0

    .line 40
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return v0
.end method

.method private static a(Ljava/io/Writer;[CIJJ)Z
    .registers 11

    const/4 v0, 0x0

    cmp-long v1, p3, p5

    if-ltz v1, :cond_6

    return v0

    :cond_6
    shl-int/lit8 v1, p2, 0x1

    int-to-long v1, v1

    add-long/2addr v1, p3

    cmp-long v3, v1, p5

    if-gtz v3, :cond_12

    .line 74
    :try_start_e
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/Writer;->write([CII)V

    goto :goto_1a

    :cond_12
    sub-long/2addr p5, p3

    const-wide/16 p2, 0x2

    .line 77
    div-long/2addr p5, p2

    long-to-int p2, p5

    .line 78
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/Writer;->write([CII)V

    .line 80
    :goto_1a
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_1f

    const/4 p0, 0x1

    return p0

    :catch_1f
    move-exception p0

    .line 83
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "rqdp{  sv sd start} %s"

    .line 232
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_4d

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_18

    goto :goto_4d

    .line 236
    :cond_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_33

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 242
    :cond_30
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_33
    int-to-long v3, p2

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-gez p0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    invoke-static {v1, p1, v3, v4, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;JZ)Z

    move-result p0
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_43

    return p0

    :catchall_43
    move-exception p0

    .line 246
    invoke-static {p0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 247
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4d
    :goto_4d
    return v2
.end method


# virtual methods
.method public a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3

    .line 46
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3

    .line 53
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 4

    .line 88
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 89
    iget-object p3, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3

    .line 81
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3

    .line 67
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 4

    .line 74
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 75
    iget-object p3, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 4

    const/16 v0, 0x7b

    .line 357
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    if-nez p1, :cond_14

    .line 359
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 361
    :cond_14
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/StringBuilder;I)V

    :goto_1d
    const/16 p1, 0x7d

    const/4 p2, 0x0

    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    if-nez p1, :cond_b

    .line 310
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f3

    .line 311
    :cond_b
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1a

    .line 312
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 313
    :cond_1a
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_29

    .line 314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 315
    :cond_29
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_38

    .line 316
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 317
    :cond_38
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_47

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 319
    :cond_47
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_56

    .line 320
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/z;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 321
    :cond_56
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_65

    .line 322
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 323
    :cond_65
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_74

    .line 324
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/z;->a(DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 325
    :cond_74
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7f

    .line 326
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 327
    :cond_7f
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8a

    .line 328
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto/16 :goto_f3

    .line 329
    :cond_8a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_94

    .line 330
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 331
    :cond_94
    instance-of v0, p1, Lcom/tencent/bugly/proguard/j;

    if-eqz v0, :cond_9e

    .line 332
    check-cast p1, Lcom/tencent/bugly/proguard/j;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 333
    :cond_9e
    instance-of v0, p1, [B

    if-eqz v0, :cond_a8

    .line 334
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 335
    :cond_a8
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b2

    .line 336
    check-cast p1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 337
    :cond_b2
    instance-of v0, p1, [S

    if-eqz v0, :cond_bc

    .line 338
    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 339
    :cond_bc
    instance-of v0, p1, [I

    if-eqz v0, :cond_c6

    .line 340
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 341
    :cond_c6
    instance-of v0, p1, [J

    if-eqz v0, :cond_d0

    .line 342
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 343
    :cond_d0
    instance-of v0, p1, [F

    if-eqz v0, :cond_da

    .line 344
    check-cast p1, [F

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 345
    :cond_da
    instance-of v0, p1, [D

    if-eqz v0, :cond_e4

    .line 346
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_f3

    .line 347
    :cond_e4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 348
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    :goto_f3
    return-object p0

    .line 350
    :cond_f4
    new-instance p1, Lcom/tencent/bugly/proguard/b;

    const-string p2, "write object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3

    .line 95
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 97
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 99
    :cond_d
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_17
    return-object p0
.end method

.method public a(Ljava/util/Collection;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    if-nez p1, :cond_d

    .line 284
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 288
    :cond_d
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 242
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 245
    :cond_d
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 246
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", {}\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 249
    :cond_22
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", {\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 251
    new-instance v0, Lcom/tencent/bugly/proguard/z;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/16 v3, 0x28

    .line 253
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    const/16 v1, 0x29

    .line 256
    invoke-virtual {p2, v1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    goto :goto_4e

    :cond_74
    const/16 p1, 0x7d

    .line 258
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3

    .line 60
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 3

    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    const/16 p1, 0x54

    goto :goto_c

    :cond_a
    const/16 p1, 0x46

    :goto_c
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 7

    .line 107
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 109
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 112
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1c

    .line 113
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 116
    :cond_1c
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    aget-byte v3, p1, v1

    .line 119
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    const/16 p1, 0x5d

    .line 120
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 8

    .line 221
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 223
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 226
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1c

    .line 227
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 230
    :cond_1c
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 232
    array-length v0, p1

    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    aget-wide v3, p1, v1

    .line 233
    invoke-virtual {p2, v3, v4, v2}, Lcom/tencent/bugly/proguard/z;->a(DLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    const/16 p1, 0x5d

    .line 234
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 7

    .line 202
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 204
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 207
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1c

    .line 208
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 211
    :cond_1c
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 213
    array-length v0, p1

    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    aget v3, p1, v1

    .line 214
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(FLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    const/16 p1, 0x5d

    .line 215
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 7

    .line 164
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 166
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 169
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1c

    .line 170
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 173
    :cond_1c
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 175
    array-length v0, p1

    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    aget v3, p1, v1

    .line 176
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    const/16 p1, 0x5d

    .line 177
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 8

    .line 183
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 185
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 188
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1c

    .line 189
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 192
    :cond_1c
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 194
    array-length v0, p1

    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    aget-wide v3, p1, v1

    .line 195
    invoke-virtual {p2, v3, v4, v2}, Lcom/tencent/bugly/proguard/z;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    const/16 p1, 0x5d

    .line 196
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/z;"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 266
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 269
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1c

    .line 270
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 273
    :cond_1c
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 275
    array-length v0, p1

    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    aget-object v3, p1, v1

    .line 276
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    const/16 p1, 0x5d

    .line 277
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method

.method public a([SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;
    .registers 7

    .line 145
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 147
    iget-object p1, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 150
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1c

    .line 151
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 154
    :cond_1c
    iget-object p2, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance p2, Lcom/tencent/bugly/proguard/z;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/z;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/z;-><init>(Ljava/lang/StringBuilder;I)V

    .line 156
    array-length v0, p1

    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    aget-short v3, p1, v1

    .line 157
    invoke-virtual {p2, v3, v2}, Lcom/tencent/bugly/proguard/z;->a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    const/16 p1, 0x5d

    .line 158
    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/z;->a(CLjava/lang/String;)Lcom/tencent/bugly/proguard/z;

    return-object p0
.end method
