.class public Lcom/codemao/team/download/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static delete(Ljava/lang/String;)Z
    .registers 2

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static write(Ljava/io/InputStream;JLjava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/lang/String;",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 162
    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 164
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_31

    .line 165
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p3

    if-nez p3, :cond_31

    .line 166
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "目标文件所处的文件夹不存在!"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_7d
    .catchall {:try_start_7 .. :try_end_26} :catchall_7b

    if-eqz p0, :cond_30

    .line 190
    :try_start_28
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    :goto_30
    return-void

    .line 170
    :cond_31
    :try_start_31
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_7d
    .catchall {:try_start_31 .. :try_end_36} :catchall_7b

    .line 171
    :goto_36
    :try_start_36
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5f

    int-to-long v4, v3

    add-long/2addr v1, v4

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p3, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    long-to-float v3, v1

    const/high16 v4, 0x42c80000  # 100.0f

    mul-float v3, v3, v4

    long-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0x5f

    if-le v3, v4, :cond_57

    .line 177
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_36

    .line 179
    :cond_57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_36

    .line 182
    :cond_5f
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    const/16 p1, 0x64

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 184
    invoke-interface {p4}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6e} :catch_78
    .catchall {:try_start_36 .. :try_end_6e} :catchall_75

    .line 190
    :try_start_6e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 191
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_74} :catch_8a

    goto :goto_95

    :catchall_75
    move-exception p1

    move-object v3, p3

    goto :goto_96

    :catch_78
    move-exception p1

    move-object v3, p3

    goto :goto_7e

    :catchall_7b
    move-exception p1

    goto :goto_96

    :catch_7d
    move-exception p1

    .line 186
    :goto_7e
    :try_start_7e
    invoke-interface {p4, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    .line 187
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_7b

    if-eqz p0, :cond_8c

    .line 190
    :try_start_86
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_8c

    :catch_8a
    move-exception p0

    goto :goto_92

    :cond_8c
    :goto_8c
    if-eqz v3, :cond_95

    .line 191
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_91} :catch_8a

    goto :goto_95

    .line 193
    :goto_92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_95
    :goto_95
    return-void

    :goto_96
    if-eqz p0, :cond_9e

    .line 190
    :try_start_98
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_9e

    :catch_9c
    move-exception p0

    goto :goto_a4

    :cond_9e
    :goto_9e
    if-eqz v3, :cond_a7

    .line 191
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a3} :catch_9c

    goto :goto_a7

    .line 193
    :goto_a4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :cond_a7
    :goto_a7
    throw p1
.end method
