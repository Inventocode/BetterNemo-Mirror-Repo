.class public final Lcom/qiniu/android/storage/FileRecorder;
.super Ljava/lang/Object;
.source "FileRecorder.java"

# interfaces
.implements Lcom/qiniu/android/storage/Recorder;


# instance fields
.field public directory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/qiniu/android/storage/FileRecorder;->directory:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 23
    :cond_17
    new-instance p1, Ljava/io/IOException;

    const-string v0, "mkdir failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_26

    return-void

    .line 28
    :cond_26
    new-instance p1, Ljava/io/IOException;

    const-string v0, "does not mkdir"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "SHA-1"

    .line 34
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 38
    :goto_14
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    .line 39
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 41
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private outOfDate(Ljava/io/File;)Z
    .registers 6

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method


# virtual methods
.method public del(Ljava/lang/String;)V
    .registers 4

    .line 122
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/storage/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/storage/FileRecorder;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public get(Ljava/lang/String;)[B
    .registers 5

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/storage/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/storage/FileRecorder;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 88
    :try_start_c
    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/FileRecorder;->outOfDate(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p1

    .line 92
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1d} :catch_2c

    .line 93
    :try_start_1d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_29

    .line 94
    :try_start_22
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_27

    goto :goto_33

    :catch_27
    move-exception v0

    goto :goto_2f

    :catch_29
    move-exception v0

    move-object v2, p1

    goto :goto_2f

    :catch_2c
    move-exception v0

    move-object v1, p1

    move-object v2, v1

    .line 96
    :goto_2f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_33
    if-eqz v2, :cond_3d

    .line 100
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v2

    .line 102
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3d
    :goto_3d
    if-nez v0, :cond_40

    return-object p1

    :cond_40
    return-object v1
.end method

.method public set(Ljava/lang/String;[B)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 59
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/storage/FileRecorder;->directory:Ljava/lang/String;

    invoke-static {p1}, Lcom/qiniu/android/storage/FileRecorder;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    :try_start_f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_1a

    .line 63
    :try_start_14
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception p1

    goto :goto_1d

    :catch_1a
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    .line 65
    :goto_1d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_20
    if-eqz v1, :cond_2a

    .line 69
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-void
.end method
