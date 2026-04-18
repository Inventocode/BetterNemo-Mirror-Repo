.class public Lcom/tencent/open/log/a;
.super Lcom/tencent/open/log/Tracer;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/tencent/open/log/b;

.field private b:Ljava/io/FileWriter;

.field private c:Ljava/io/FileWriter;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:[C

.field private volatile g:Lcom/tencent/open/log/f;

.field private volatile h:Lcom/tencent/open/log/f;

.field private volatile i:Lcom/tencent/open/log/f;

.field private volatile j:Lcom/tencent/open/log/f;

.field private volatile k:Z

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IZLcom/tencent/open/log/g;Lcom/tencent/open/log/b;)V
    .registers 5

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/open/log/Tracer;-><init>(IZLcom/tencent/open/log/g;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/tencent/open/log/a;->k:Z

    .line 99
    invoke-virtual {p0, p4}, Lcom/tencent/open/log/a;->a(Lcom/tencent/open/log/b;)V

    .line 101
    new-instance p1, Lcom/tencent/open/log/f;

    invoke-direct {p1}, Lcom/tencent/open/log/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/open/log/a;->g:Lcom/tencent/open/log/f;

    .line 102
    new-instance p1, Lcom/tencent/open/log/f;

    invoke-direct {p1}, Lcom/tencent/open/log/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/open/log/a;->h:Lcom/tencent/open/log/f;

    .line 104
    iget-object p1, p0, Lcom/tencent/open/log/a;->g:Lcom/tencent/open/log/f;

    iput-object p1, p0, Lcom/tencent/open/log/a;->i:Lcom/tencent/open/log/f;

    .line 105
    iget-object p1, p0, Lcom/tencent/open/log/a;->h:Lcom/tencent/open/log/f;

    iput-object p1, p0, Lcom/tencent/open/log/a;->j:Lcom/tencent/open/log/f;

    .line 107
    invoke-virtual {p4}, Lcom/tencent/open/log/b;->d()I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/tencent/open/log/a;->f:[C

    .line 109
    new-instance p1, Landroid/os/HandlerThread;

    invoke-virtual {p4}, Lcom/tencent/open/log/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/tencent/open/log/b;->f()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/tencent/open/log/a;->l:Landroid/os/HandlerThread;

    .line 113
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 116
    iget-object p1, p0, Lcom/tencent/open/log/a;->l:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/tencent/open/log/a;->l:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 118
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/tencent/open/log/a;->l:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/tencent/open/log/a;->m:Landroid/os/Handler;

    :cond_56
    return-void
.end method

.method public constructor <init>(Lcom/tencent/open/log/b;)V
    .registers 5

    .line 79
    sget v0, Lcom/tencent/open/log/c;->b:I

    sget-object v1, Lcom/tencent/open/log/g;->a:Lcom/tencent/open/log/g;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/tencent/open/log/a;-><init>(IZLcom/tencent/open/log/g;Lcom/tencent/open/log/b;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 11

    .line 294
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_73

    .line 299
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1a

    return-void

    .line 304
    :cond_1a
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_73

    aget-object v2, p1, v1

    .line 305
    invoke-direct {p0, v2}, Lcom/tencent/open/log/a;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_70

    .line 309
    :cond_27
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x2b

    .line 312
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 315
    sget-boolean v7, Lcom/tencent/tauth/Tencent;->USE_ONE_HOUR:Z

    if-eqz v7, :cond_3f

    const-wide/32 v7, 0x36ee80

    goto :goto_42

    :cond_3f
    const-wide/32 v7, 0xf731400

    :goto_42
    sub-long/2addr v5, v7

    .line 316
    invoke-static {v5, v6}, Lcom/tencent/open/log/b;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 317
    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_4e

    goto :goto_70

    .line 321
    :cond_4e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", success="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileTracer"

    invoke-static {v3, v2}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_73
    :goto_73
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/tencent/open/log/a;->i:Lcom/tencent/open/log/f;

    invoke-virtual {v0, p1}, Lcom/tencent/open/log/f;->a(Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcom/tencent/open/log/a;->i:Lcom/tencent/open/log/f;

    invoke-virtual {p1}, Lcom/tencent/open/log/f;->a()I

    move-result p1

    invoke-virtual {p0}, Lcom/tencent/open/log/a;->c()Lcom/tencent/open/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/log/b;->d()I

    move-result v0

    if-lt p1, v0, :cond_18

    .line 171
    invoke-virtual {p0}, Lcom/tencent/open/log/a;->a()V

    :cond_18
    return-void
.end method

.method private b(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 331
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileTracer"

    invoke-static {v2, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    return v0

    .line 341
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2e

    return v0

    :cond_2e
    const-string v1, "com.tencent.mobileqq_connectSdk."

    .line 345
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, ".log"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    const/4 v0, 0x1

    :cond_3f
    return v0
.end method

.method private f()V
    .registers 4

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/log/a;->l:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_9

    return-void

    .line 216
    :cond_9
    iget-boolean v0, p0, Lcom/tencent/open/log/a;->k:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/tencent/open/log/a;->k:Z

    .line 224
    invoke-direct {p0}, Lcom/tencent/open/log/a;->j()V

    .line 228
    :try_start_14
    iget-object v0, p0, Lcom/tencent/open/log/a;->j:Lcom/tencent/open/log/f;

    invoke-direct {p0}, Lcom/tencent/open/log/a;->g()[Ljava/io/Writer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/log/a;->f:[C

    invoke-virtual {v0, v1, v2}, Lcom/tencent/open/log/f;->a([Ljava/io/Writer;[C)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_27
    .catchall {:try_start_14 .. :try_end_1f} :catchall_25

    .line 237
    :goto_1f
    iget-object v0, p0, Lcom/tencent/open/log/a;->j:Lcom/tencent/open/log/f;

    invoke-virtual {v0}, Lcom/tencent/open/log/f;->b()V

    goto :goto_30

    :catchall_25
    move-exception v0

    goto :goto_34

    :catch_27
    move-exception v0

    :try_start_28
    const-string v1, "FileTracer"

    const-string v2, "flushBuffer exception"

    .line 232
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    goto :goto_1f

    :goto_30
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/tencent/open/log/a;->k:Z

    return-void

    .line 237
    :goto_34
    iget-object v1, p0, Lcom/tencent/open/log/a;->j:Lcom/tencent/open/log/f;

    invoke-virtual {v1}, Lcom/tencent/open/log/f;->b()V

    .line 238
    throw v0
.end method

.method private g()[Ljava/io/Writer;
    .registers 9

    .line 253
    invoke-virtual {p0}, Lcom/tencent/open/log/a;->c()Lcom/tencent/open/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/log/b;->a()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_66

    .line 254
    array-length v4, v0

    if-lt v4, v2, :cond_66

    .line 255
    aget-object v4, v0, v1

    const-string v5, "openSDK_LOG"

    const/4 v6, 0x0

    if-eqz v4, :cond_1f

    .line 257
    iget-object v7, p0, Lcom/tencent/open/log/a;->d:Ljava/io/File;

    invoke-virtual {v4, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    :cond_1f
    iget-object v7, p0, Lcom/tencent/open/log/a;->b:Ljava/io/FileWriter;

    if-nez v7, :cond_3b

    if-eqz v4, :cond_3b

    .line 258
    :cond_25
    iput-object v4, p0, Lcom/tencent/open/log/a;->d:Ljava/io/File;

    .line 260
    invoke-direct {p0}, Lcom/tencent/open/log/a;->h()V

    .line 263
    :try_start_2a
    new-instance v4, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/tencent/open/log/a;->d:Ljava/io/File;

    invoke-direct {v4, v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v4, p0, Lcom/tencent/open/log/a;->b:Ljava/io/FileWriter;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_3b

    .line 265
    :catch_34
    iput-object v6, p0, Lcom/tencent/open/log/a;->b:Ljava/io/FileWriter;

    const-string v4, "-->obtainFileWriter() old log file permission denied"

    .line 266
    invoke-static {v5, v4}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_3b
    :goto_3b
    aget-object v0, v0, v3

    if-eqz v0, :cond_47

    .line 272
    iget-object v4, p0, Lcom/tencent/open/log/a;->e:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_47
    iget-object v4, p0, Lcom/tencent/open/log/a;->c:Ljava/io/FileWriter;

    if-nez v4, :cond_66

    if-eqz v0, :cond_66

    .line 273
    :cond_4d
    iput-object v0, p0, Lcom/tencent/open/log/a;->e:Ljava/io/File;

    .line 275
    invoke-direct {p0}, Lcom/tencent/open/log/a;->i()V

    .line 278
    :try_start_52
    new-instance v4, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/tencent/open/log/a;->e:Ljava/io/File;

    invoke-direct {v4, v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v4, p0, Lcom/tencent/open/log/a;->c:Ljava/io/FileWriter;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5b} :catch_5c

    goto :goto_63

    .line 280
    :catch_5c
    iput-object v6, p0, Lcom/tencent/open/log/a;->c:Ljava/io/FileWriter;

    const-string v4, "-->obtainFileWriter() app specific file permission denied"

    .line 281
    invoke-static {v5, v4}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_63
    invoke-direct {p0, v0}, Lcom/tencent/open/log/a;->a(Ljava/io/File;)V

    :cond_66
    new-array v0, v2, [Ljava/io/Writer;

    .line 287
    iget-object v2, p0, Lcom/tencent/open/log/a;->b:Ljava/io/FileWriter;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/tencent/open/log/a;->c:Ljava/io/FileWriter;

    aput-object v1, v0, v3

    return-object v0
.end method

.method private h()V
    .registers 4

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/log/a;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_15

    .line 357
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 358
    iget-object v0, p0, Lcom/tencent/open/log/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "openSDK_LOG"

    const-string v2, "-->closeFileWriter() exception:"

    .line 363
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private i()V
    .registers 4

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/log/a;->c:Ljava/io/FileWriter;

    if-eqz v0, :cond_15

    .line 376
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 377
    iget-object v0, p0, Lcom/tencent/open/log/a;->c:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "openSDK_LOG"

    const-string v2, "-->closeAppSpecificFileWriter() exception:"

    .line 382
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private j()V
    .registers 3

    .line 391
    monitor-enter p0

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/tencent/open/log/a;->i:Lcom/tencent/open/log/f;

    iget-object v1, p0, Lcom/tencent/open/log/a;->g:Lcom/tencent/open/log/f;

    if-ne v0, v1, :cond_10

    .line 395
    iget-object v0, p0, Lcom/tencent/open/log/a;->h:Lcom/tencent/open/log/f;

    iput-object v0, p0, Lcom/tencent/open/log/a;->i:Lcom/tencent/open/log/f;

    .line 396
    iget-object v0, p0, Lcom/tencent/open/log/a;->g:Lcom/tencent/open/log/f;

    iput-object v0, p0, Lcom/tencent/open/log/a;->j:Lcom/tencent/open/log/f;

    goto :goto_18

    .line 400
    :cond_10
    iget-object v0, p0, Lcom/tencent/open/log/a;->g:Lcom/tencent/open/log/f;

    iput-object v0, p0, Lcom/tencent/open/log/a;->i:Lcom/tencent/open/log/f;

    .line 401
    iget-object v0, p0, Lcom/tencent/open/log/a;->h:Lcom/tencent/open/log/f;

    iput-object v0, p0, Lcom/tencent/open/log/a;->j:Lcom/tencent/open/log/f;

    .line 403
    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/tencent/open/log/a;->m:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 134
    iget-object v0, p0, Lcom/tencent/open/log/a;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    :cond_f
    iget-object v0, p0, Lcom/tencent/open/log/a;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/tencent/open/log/b;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/tencent/open/log/a;->a:Lcom/tencent/open/log/b;

    return-void
.end method

.method public b()V
    .registers 2

    .line 150
    invoke-direct {p0}, Lcom/tencent/open/log/a;->h()V

    .line 151
    invoke-direct {p0}, Lcom/tencent/open/log/a;->i()V

    .line 153
    iget-object v0, p0, Lcom/tencent/open/log/a;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public c()Lcom/tencent/open/log/b;
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/tencent/open/log/a;->a:Lcom/tencent/open/log/b;

    return-object v0
.end method

.method protected doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 16

    .line 159
    invoke-virtual {p0}, Lcom/tencent/open/log/Tracer;->e()Lcom/tencent/open/log/g;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/open/log/g;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Lcom/tencent/open/log/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 178
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x400

    if-eq p1, v0, :cond_7

    goto :goto_a

    .line 182
    :cond_7
    invoke-direct {p0}, Lcom/tencent/open/log/a;->f()V

    :goto_a
    const/4 p1, 0x1

    return p1
.end method
