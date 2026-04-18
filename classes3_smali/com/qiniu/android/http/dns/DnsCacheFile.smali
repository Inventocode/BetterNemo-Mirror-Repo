.class public Lcom/qiniu/android/http/dns/DnsCacheFile;
.super Ljava/lang/Object;
.source "DnsCacheFile.java"

# interfaces
.implements Lcom/qiniu/android/storage/Recorder;


# instance fields
.field public directory:Ljava/lang/String;

.field public f:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_36

    .line 23
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->directory:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->f:Ljava/io/File;

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_25

    .line 27
    iget-object p1, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_25

    .line 29
    :cond_1d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "mkdir failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->f:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2e

    return-void

    .line 34
    :cond_2e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "does not mkdir"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string v0, "directory invalid"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public del(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 110
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->directory:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_c
    return-void
.end method

.method public get(Ljava/lang/String;)[B
    .registers 5

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->directory:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 83
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_1e

    .line 84
    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_1b

    .line 85
    :try_start_14
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_25

    :catch_19
    move-exception v0

    goto :goto_21

    :catch_1b
    move-exception v0

    move-object v2, p1

    goto :goto_21

    :catch_1e
    move-exception v0

    move-object v1, p1

    move-object v2, v1

    .line 87
    :goto_21
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_25
    if-eqz v2, :cond_2f

    .line 91
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v2

    .line 93
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2f
    :goto_2f
    if-nez v0, :cond_32

    return-object p1

    :cond_32
    return-object v1
.end method

.method public set(Ljava/lang/String;[B)V
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 48
    :cond_9
    array-length v1, v0

    if-lez v1, :cond_1c

    const/4 v1, 0x0

    .line 49
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 50
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qiniu/android/http/dns/DnsCacheFile;->del(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 54
    :cond_1c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qiniu/android/http/dns/DnsCacheFile;->directory:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 57
    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_2f

    .line 58
    :try_start_29
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p1

    goto :goto_32

    :catch_2f
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    .line 60
    :goto_32
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_35
    if-eqz v1, :cond_3f

    .line 64
    :try_start_37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3f
    :goto_3f
    return-void
.end method
