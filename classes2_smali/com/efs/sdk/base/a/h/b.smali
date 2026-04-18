.class public final Lcom/efs/sdk/base/a/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/a/h/b;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(Lcom/efs/sdk/base/a/f/b;)Ljava/lang/String;
    .registers 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2164
    iget-object v1, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    iget-object v2, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v2, v2, Lcom/efs/sdk/base/a/f/a;->d:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    iget-object v2, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v2, v2, Lcom/efs/sdk/base/a/f/a;->e:I

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3140
    iget-object p0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte p0, p0, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {}, Lcom/efs/sdk/base/a/h/g;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/efs/sdk/base/a/h/b;->a:Ljava/util/Random;

    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p0, :cond_e

    .line 223
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p0

    const-string v0, "efs.util.file"

    const-string v1, "safe close error"

    .line 225
    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    const/high16 v0, 0x80000

    new-array v0, v0, [B

    .line 1185
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1187
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1189
    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1190
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    :cond_21
    const/4 v1, 0x0

    .line 1194
    :try_start_22
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_4b
    .catchall {:try_start_22 .. :try_end_27} :catchall_48

    .line 1195
    :try_start_27
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_44
    .catchall {:try_start_27 .. :try_end_2c} :catchall_40

    .line 1197
    :goto_2c
    :try_start_2c
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_38

    const/4 v1, 0x0

    .line 1198
    invoke-virtual {v3, v0, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_3e
    .catchall {:try_start_2c .. :try_end_37} :catchall_3c

    goto :goto_2c

    .line 1203
    :cond_38
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_57

    :catchall_3c
    move-exception p0

    goto :goto_42

    :catch_3e
    move-exception p1

    goto :goto_46

    :catchall_40
    move-exception p0

    move-object v3, v1

    :goto_42
    move-object v1, v2

    goto :goto_5f

    :catch_44
    move-exception p1

    move-object v3, v1

    :goto_46
    move-object v1, v2

    goto :goto_4d

    :catchall_48
    move-exception p0

    move-object v3, v1

    goto :goto_5f

    :catch_4b
    move-exception p1

    move-object v3, v1

    :goto_4d
    :try_start_4d
    const-string v0, "efs.util.file"

    const-string v2, "error when copy"

    .line 1201
    invoke-static {v0, v2, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_5e

    .line 1203
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 1204
    :goto_57
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 210
    invoke-static {p0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    return-void

    :catchall_5e
    move-exception p0

    .line 1203
    :goto_5f
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    .line 1204
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;[B)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;[B)Z
    .registers 6

    const/4 v0, 0x0

    .line 54
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    .line 55
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    const/4 p0, 0x1

    .line 61
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_30

    :catchall_11
    move-exception p1

    move-object v0, v1

    goto :goto_15

    :catchall_14
    move-exception p1

    :goto_15
    :try_start_15
    const-string v1, "efs.util.file"

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "write file error, filename is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_31

    .line 61
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    :goto_30
    return p0

    :catchall_31
    move-exception p0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 131
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_1e
    .catchall {:try_start_4 .. :try_end_9} :catchall_1c

    .line 132
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array v0, p0, [B

    .line 133
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_19
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 137
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_29

    :catchall_16
    move-exception p0

    move-object v1, v2

    goto :goto_2a

    :catch_19
    move-exception p0

    move-object v1, v2

    goto :goto_1f

    :catchall_1c
    move-exception p0

    goto :goto_2a

    :catch_1e
    move-exception p0

    :goto_1f
    :try_start_1f
    const-string v2, "efs.util.file"

    const-string v3, "read data error"

    .line 135
    invoke-static {v2, v3, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 137
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    :goto_29
    return-object v0

    :goto_2a
    invoke-static {v1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Lcom/efs/sdk/base/a/f/b;
    .registers 5

    const-string v0, "_"

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    array-length v1, v0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_17

    const-string v0, "File name error, name is "

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "efs.util.file"

    const/4 v1, 0x0

    .line 4025
    invoke-static {v0, p0, v1}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_17
    const/4 p0, 0x0

    .line 304
    aget-object p0, v0, p0

    const/4 v1, 0x1

    .line 305
    aget-object v1, v0, v1

    const/4 v2, 0x2

    .line 306
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v3, 0x3

    .line 307
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 309
    new-instance v3, Lcom/efs/sdk/base/a/f/b;

    invoke-direct {v3, p0, v0}, Lcom/efs/sdk/base/a/f/b;-><init>(Ljava/lang/String;B)V

    .line 310
    invoke-virtual {v3, v1}, Lcom/efs/sdk/base/a/f/b;->a(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3, v2}, Lcom/efs/sdk/base/a/f/b;->a(I)V

    return-object v3
.end method

.method public static b(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_27

    .line 148
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 151
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 154
    array-length v1, v0

    if-lez v1, :cond_24

    .line 155
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 156
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 160
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_27
    :goto_27
    return-void
.end method

.method public static c(Ljava/io/File;)J
    .registers 7

    .line 239
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1d

    .line 240
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_f

    return-wide v1

    .line 246
    :cond_f
    array-length v0, p0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_22

    aget-object v4, p0, v3

    .line 247
    invoke-static {v4}, Lcom/efs/sdk/base/a/h/b;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 250
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_22
    return-wide v1
.end method

.method public static d(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 266
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 268
    array-length v0, p0

    if-gtz v0, :cond_15

    goto :goto_35

    .line 272
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_34

    aget-object v3, p0, v2

    .line 275
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 276
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 278
    :cond_2a
    invoke-static {v3}, Lcom/efs/sdk/base/a/h/b;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_34
    return-object v0

    .line 269
    :cond_35
    :goto_35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const/4 v0, 0x0

    .line 103
    :try_start_a
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_33

    const/16 p0, 0x400

    :try_start_11
    new-array p0, p0, [B

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    :goto_18
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_28

    .line 109
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 111
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_30

    .line 115
    invoke-static {v2}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    goto :goto_3e

    :catchall_30
    move-exception p0

    move-object v0, v2

    goto :goto_34

    :catchall_33
    move-exception p0

    :goto_34
    :try_start_34
    const-string v2, "efs.util.file"

    const-string v3, "read file error"

    .line 113
    invoke-static {v2, v3, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    .line 115
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    :goto_3e
    return-object v1

    :catchall_3f
    move-exception p0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/Closeable;)V

    throw p0
.end method
