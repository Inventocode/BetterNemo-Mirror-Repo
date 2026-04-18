.class Lcom/qiniu/android/storage/UploadSourceFile;
.super Ljava/lang/Object;
.source "UploadSourceFile.java"

# interfaces
.implements Lcom/qiniu/android/storage/UploadSource;


# instance fields
.field private final file:Ljava/io/File;

.field private final randomAccessFile:Ljava/io/RandomAccessFile;

.field private readException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    .line 14
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    .line 17
    :try_start_8
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    move-object v0, v1

    goto :goto_14

    :catch_11
    move-exception p1

    .line 19
    iput-object p1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    .line 21
    :goto_14
    iput-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_d

    .line 86
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_d

    .line 89
    :catch_8
    :try_start_8
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    :goto_d
    return-void
.end method

.method public couldReloadSource()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qiniu/android/storage/UploadSourceFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public readData(IJ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_18

    .line 52
    iget-object p1, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    if-eqz p1, :cond_10

    .line 53
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/qiniu/android/storage/UploadSourceFile;->readException:Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 55
    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "file is invalid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_18
    new-array v1, p1, [B

    .line 62
    :try_start_1a
    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_1f
    if-ge p3, p1, :cond_2e

    .line 64
    iget-object v0, p0, Lcom/qiniu/android/storage/UploadSourceFile;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int v2, p1, p3

    invoke-virtual {v0, v1, p3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_2c

    goto :goto_2e

    :cond_2c
    add-int/2addr p3, v0

    goto :goto_1f

    :cond_2e
    :goto_2e
    if-ge p3, p1, :cond_36

    .line 72
    new-array p1, p3, [B

    .line 73
    invoke-static {v1, p2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_35} :catch_37

    move-object v1, p1

    :cond_36
    return-object v1

    :catch_37
    move-exception p1

    .line 77
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public reloadSource()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
