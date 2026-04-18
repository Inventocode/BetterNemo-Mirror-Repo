.class public Lcom/umeng/commonsdk/stateless/d;
.super Ljava/lang/Object;
.source "UMSLUtils.java"


# static fields
.field public static a:I

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 10

    const/16 v0, 0x65

    if-eqz p0, :cond_75

    const/4 v1, 0x0

    .line 79
    :try_start_5
    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_67
    .catchall {:try_start_5 .. :try_end_8} :catchall_5d

    .line 80
    :try_start_8
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 85
    :cond_2e
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_5a

    .line 91
    :try_start_4e
    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 92
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_57

    const/4 v0, 0x0

    .line 97
    :try_start_55
    monitor-exit v2

    goto :goto_75

    :catchall_57
    move-exception p1

    move-object v1, p2

    goto :goto_5b

    :catchall_5a
    move-exception p1

    :goto_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p1
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5d} :catch_67
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    .line 101
    :try_start_5e
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_6e

    if-eqz v1, :cond_75

    .line 105
    :goto_63
    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_75

    goto :goto_75

    :catch_67
    move-exception p1

    .line 99
    :try_start_68
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6e

    if-eqz v1, :cond_75

    goto :goto_63

    :catchall_6e
    move-exception p0

    if-eqz v1, :cond_74

    .line 105
    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_74

    .line 108
    :catchall_74
    :cond_74
    throw p0

    :catchall_75
    :cond_75
    :goto_75
    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 13

    const/4 v0, 0x0

    .line 207
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_bc

    :try_start_4
    const-string v2, "walle"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get last envelope begin, thread is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_99

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "stateless"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_99

    .line 213
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 216
    array-length v4, v2

    if-lez v4, :cond_99

    const/4 v4, 0x0

    .line 217
    :goto_65
    array-length v5, v2

    if-ge v4, v5, :cond_99

    .line 218
    aget-object v5, v2, v4

    if-eqz v5, :cond_96

    .line 219
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_96

    .line 220
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_96

    .line 221
    array-length v7, v5

    if-lez v7, :cond_96

    .line 222
    new-instance v7, Lcom/umeng/commonsdk/stateless/d$1;

    invoke-direct {v7}, Lcom/umeng/commonsdk/stateless/d$1;-><init>()V

    invoke-static {v5, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 235
    aget-object v5, v5, v6

    if-eqz v5, :cond_96

    if-eqz v0, :cond_95

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_96

    :cond_95
    move-object v0, v5

    :cond_96
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_99
    const-string v2, "walle"

    new-array v3, v3, [Ljava/lang/Object;

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get last envelope end, thread is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    monitor-exit v1

    goto :goto_c0

    :catchall_b9
    move-exception v2

    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_4 .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception v1

    .line 256
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_c0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-eqz p1, :cond_25

    .line 312
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "stateless"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    .line 314
    :cond_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".emitter"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_44

    :goto_43
    move-object v0, p0

    :catchall_44
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_23

    :try_start_4
    const-string p1, "AmapLBS"

    new-array p2, v1, [Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[lbs-build] fileDir not exist, thread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 378
    :cond_23
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_4d

    const-string p1, "AmapLBS"

    new-array p2, v1, [Ljava/lang/Object;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[lbs-build] fileDir not exist, thread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 384
    :cond_4d
    sget-object p1, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_154

    .line 385
    :try_start_50
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const-string v3, "AmapLBS"

    new-array v4, v1, [Ljava/lang/Object;

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[lbs-build] delete file begin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", thread is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    array-length v3, v2

    if-lt v3, p2, :cond_11d

    const-string v3, "AmapLBS"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "[lbs-build] file size >= max"

    aput-object v5, v4, v0

    .line 393
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 395
    array-length v4, v2

    const/4 v5, 0x0

    :goto_90
    if-ge v5, v4, :cond_9c

    aget-object v6, v2, v5

    if-eqz v6, :cond_99

    .line 397
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 401
    :cond_9c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, p2, :cond_128

    .line 402
    new-instance v4, Lcom/umeng/commonsdk/stateless/d$4;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/d$4;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 415
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v4, :cond_dc

    const/4 v4, 0x0

    .line 416
    :goto_af
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_dc

    const-string v5, "AmapLBS"

    new-array v6, v1, [Ljava/lang/Object;

    .line 417
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[lbs-build] overrun native file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    :cond_dc
    const/4 v4, 0x0

    .line 421
    :goto_dd
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p2

    if-gt v4, v5, :cond_128

    .line 422
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_11a

    const-string v5, "AmapLBS"

    new-array v6, v1, [Ljava/lang/Object;

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[lbs-build] overrun remove file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10e
    .catchall {:try_start_50 .. :try_end_10e} :catchall_151

    .line 425
    :try_start_10e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 426
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_11a} :catch_11a
    .catchall {:try_start_10e .. :try_end_11a} :catchall_151

    :catch_11a
    :cond_11a
    add-int/lit8 v4, v4, 0x1

    goto :goto_dd

    :cond_11d
    :try_start_11d
    const-string p2, "AmapLBS"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "[lbs-build] file size < max"

    aput-object v4, v3, v0

    .line 435
    invoke-static {p2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_128
    const-string p2, "AmapLBS"

    new-array v1, v1, [Ljava/lang/Object;

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[lbs-build] delete file end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    monitor-exit p1

    goto :goto_158

    :catchall_151
    move-exception p2

    monitor-exit p1
    :try_end_153
    .catchall {:try_start_11d .. :try_end_153} :catchall_151

    :try_start_153
    throw p2
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_154

    :catchall_154
    move-exception p1

    .line 441
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_158
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 453
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 458
    :cond_f
    sget-object p1, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f8

    .line 459
    :try_start_12
    new-instance v1, Lcom/umeng/commonsdk/stateless/d$5;

    invoke-direct {v1, p2}, Lcom/umeng/commonsdk/stateless/d$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c1

    .line 470
    array-length v2, p2

    if-lt v2, p3, :cond_c1

    const-string v2, "AmapLBS"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "[lbs-build] file size >= max"

    aput-object v4, v3, v0

    .line 471
    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    array-length v3, p2

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v3, :cond_40

    aget-object v5, p2, v4

    if-eqz v5, :cond_3d

    .line 475
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 479
    :cond_40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p3, :cond_cc

    .line 480
    new-instance v3, Lcom/umeng/commonsdk/stateless/d$6;

    invoke-direct {v3}, Lcom/umeng/commonsdk/stateless/d$6;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 493
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v3, :cond_80

    const/4 v3, 0x0

    .line 494
    :goto_53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_80

    const-string v4, "AmapLBS"

    new-array v5, v1, [Ljava/lang/Object;

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[lbs-build] overrun native file is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_80
    const/4 v3, 0x0

    .line 499
    :goto_81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, p3

    if-gt v3, v4, :cond_cc

    .line 500
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_be

    const-string v4, "AmapLBS"

    new-array v5, v1, [Ljava/lang/Object;

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[lbs-build] overrun remove file is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b2
    .catchall {:try_start_12 .. :try_end_b2} :catchall_f5

    .line 503
    :try_start_b2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 504
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_be} :catch_be
    .catchall {:try_start_b2 .. :try_end_be} :catchall_f5

    :catch_be
    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    :cond_c1
    :try_start_c1
    const-string p3, "AmapLBS"

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[lbs-build] file size < max"

    aput-object v3, v2, v0

    .line 513
    invoke-static {p3, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_cc
    const-string p3, "AmapLBS"

    new-array v1, v1, [Ljava/lang/Object;

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lbs-build] delete file end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", thread is "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p3, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    monitor-exit p1

    goto :goto_fc

    :catchall_f5
    move-exception p2

    monitor-exit p1
    :try_end_f7
    .catchall {:try_start_c1 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw p2
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f8

    :catchall_f8
    move-exception p1

    .line 519
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_fc
    return-void
.end method

.method public static a(JJ)Z
    .registers 5

    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 51
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 54
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 55
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_20

    return v0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 62
    :cond_23
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    :try_start_5
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 180
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    .line 181
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, v2

    .line 180
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 182
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    .line 183
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_35

    .line 184
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v3, v1, v4}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_3c
    .catchall {:try_start_5 .. :try_end_35} :catchall_3a

    .line 193
    :cond_35
    :try_start_35
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_38

    .line 196
    :catchall_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_63

    return-object v3

    :catchall_3a
    move-exception p0

    goto :goto_5d

    :catch_3c
    move-exception p0

    :try_start_3d
    const-string v3, "walle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[stateless] write envelope, e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    throw p0
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_3a

    :goto_5d
    if-eqz v2, :cond_62

    .line 193
    :try_start_5f
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_62

    .line 196
    :catchall_62
    :cond_62
    :try_start_62
    throw p0

    :catchall_63
    move-exception p0

    .line 199
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public static a([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    .line 547
    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_46

    .line 551
    :cond_7
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    .line 552
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 553
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/16 p0, 0x2000

    new-array p0, p0, [B

    const/4 v2, 0x0

    .line 556
    sput v2, Lcom/umeng/commonsdk/stateless/d;->a:I

    .line 559
    :try_start_19
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_3f

    .line 560
    :goto_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_31

    .line 561
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 562
    sget v4, Lcom/umeng/commonsdk/stateless/d;->a:I

    add-int/2addr v4, v0

    sput v4, Lcom/umeng/commonsdk/stateless/d;->a:I

    .line 563
    invoke-virtual {v3, p0, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    .line 565
    :cond_31
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_3c

    .line 568
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 570
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_3c
    move-exception p0

    move-object v0, v3

    goto :goto_40

    :catchall_3f
    move-exception p0

    :goto_40
    if-eqz v0, :cond_45

    .line 568
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_45
    throw p0

    :cond_46
    :goto_46
    return-object v0
.end method

.method public static a([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 584
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 585
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 586
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genIv()[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    .line 587
    invoke-virtual {v0, v2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 588
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 269
    :cond_4
    :try_start_4
    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_56

    .line 270
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".emitter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 272
    monitor-exit v1

    return-object v0

    .line 274
    :cond_2d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_53

    .line 276
    :try_start_35
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 277
    array-length v4, v3

    if-nez v4, :cond_3f

    goto :goto_4d

    .line 281
    :cond_3f
    new-instance v4, Lcom/umeng/commonsdk/stateless/d$2;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/d$2;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    .line 295
    aget-object v3, v3, v4

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_50

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_53

    return-object v3

    .line 278
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_50

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_53

    return-object v0

    :catchall_50
    move-exception v3

    .line 296
    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v3

    :catchall_53
    move-exception v2

    .line 297
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_53

    :try_start_55
    throw v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v1

    .line 300
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 622
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_c

    :catchall_a
    const-string p0, ""

    :goto_c
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_10f

    const/4 v2, 0x0

    .line 121
    :try_start_5
    sget-object v3, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_de
    .catchall {:try_start_5 .. :try_end_8} :catchall_b8

    :try_start_8
    const-string v4, "walle"

    new-array v5, v0, [Ljava/lang/Object;

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stateless] begin write envelope, thread is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "stateless"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 129
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 132
    :cond_4e
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_74

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 137
    :cond_74
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_9a

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 142
    :cond_9a
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9f
    .catchall {:try_start_8 .. :try_end_9f} :catchall_ae

    .line 143
    :try_start_9f
    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 144
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_ab

    .line 149
    :try_start_a5
    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a8

    goto/16 :goto_110

    :catchall_a8
    move-exception p1

    const/4 p2, 0x1

    goto :goto_b0

    :catchall_ab
    move-exception p1

    move-object v2, p2

    goto :goto_af

    :catchall_ae
    move-exception p1

    :goto_af
    const/4 p2, 0x0

    :goto_b0
    :try_start_b0
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b6

    :try_start_b1
    throw p1
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b2} :catch_b4
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception p1

    goto :goto_ba

    :catch_b4
    move-exception p1

    goto :goto_e0

    :catchall_b6
    move-exception p1

    goto :goto_b0

    :catchall_b8
    move-exception p1

    const/4 p2, 0x0

    :goto_ba
    :try_start_ba
    const-string p3, "walle"

    new-array v0, v0, [Ljava/lang/Object;

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stateless] write envelope, e is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p3, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_106

    goto :goto_103

    :catch_de
    move-exception p1

    const/4 p2, 0x0

    :goto_e0
    const-string p3, "walle"

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stateless] write envelope, e is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p3, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_101
    .catchall {:try_start_ba .. :try_end_101} :catchall_108

    if-eqz v2, :cond_106

    .line 161
    :goto_103
    :try_start_103
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_106

    :catch_106
    :cond_106
    move v0, p2

    goto :goto_110

    :catchall_108
    move-exception p0

    if-eqz v2, :cond_10e

    :try_start_10b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_10e

    .line 165
    :catch_10e
    :cond_10e
    throw p0

    :cond_10f
    const/4 v0, 0x0

    :goto_110
    return v0
.end method

.method public static b([B)[B
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    .line 594
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 596
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 598
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 632
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 611
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 612
    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_25

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 613
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 616
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)[Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 334
    :cond_4
    :try_start_4
    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_53

    .line 335
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".emitter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 337
    monitor-exit v1

    return-object v0

    .line 339
    :cond_2d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_50

    .line 341
    :try_start_35
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 342
    array-length v4, v3

    if-nez v4, :cond_3f

    goto :goto_4a

    .line 346
    :cond_3f
    new-instance v4, Lcom/umeng/commonsdk/stateless/d$3;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/d$3;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 360
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_4d

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_50

    return-object v3

    .line 343
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4d

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_50

    return-object v0

    :catchall_4d
    move-exception v3

    .line 361
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v3

    :catchall_50
    move-exception v2

    .line 362
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    :try_start_52
    throw v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v1

    .line 365
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 641
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    const-string v0, "envelope"

    .line 644
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    return-object v1

    :cond_12
    const-string v0, "_"

    .line 647
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_28

    const-string v2, "."

    .line 649
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_28

    add-int/lit8 v0, v0, 0x1

    .line 651
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_28
    return-object v1
.end method
