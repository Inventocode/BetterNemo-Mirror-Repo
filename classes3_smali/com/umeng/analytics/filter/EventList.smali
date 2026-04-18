.class public Lcom/umeng/analytics/filter/EventList;
.super Lcom/umeng/analytics/filter/c;
.source "EventList.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# static fields
.field private static final DELETE_LIST_DATA:I = 0x2

.field private static final LOAD_LIST_DATA:I = 0x1

.field private static final SAVE_LIST_DATA:I


# instance fields
.field private mAppContext:Landroid/content/Context;

.field protected mEventList:Ljava/lang/String;

.field protected mEventListKey:Ljava/lang/String;

.field protected mEventListName:Ljava/lang/String;

.field protected mEventListVersionKey:Ljava/lang/String;

.field private mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/umeng/analytics/filter/c;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    .line 49
    new-instance p1, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {p1}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    return-void
.end method

.method private deleteDataFile(Ljava/io/File;)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 139
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    monitor-enter v0

    .line 140
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 143
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1

    :cond_15
    :goto_15
    return-void
.end method

.method private loadEventListFromFile(Landroid/content/Context;Ljava/io/File;)Z
    .registers 11

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x0

    .line 81
    :try_start_10
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 82
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_a6

    .line 83
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    :goto_1f
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 88
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 91
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    iput-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/umeng/analytics/filter/EventList;->eventListChange()V

    const-string v4, "MobclickRT"

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> loadEventListFromFile: mEventList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_83

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 101
    iput-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V
    :try_end_6e
    .catchall {:try_start_1a .. :try_end_6e} :catchall_a4

    .line 126
    :try_start_6e
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_76
    return v5

    .line 107
    :cond_77
    :try_start_77
    invoke-virtual {p0, v5}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_a4

    .line 126
    :try_start_7a
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_82
    return v1

    .line 112
    :cond_83
    :try_start_83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 113
    iput-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/umeng/analytics/filter/EventList;->eventListChange()V
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_a4

    .line 126
    :try_start_8e
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_96

    :catchall_92
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_96
    return v5

    .line 126
    :cond_97
    :try_start_97
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_9f
    return v1

    .line 126
    :cond_a0
    :try_start_a0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_b3

    goto :goto_c4

    :catchall_a4
    move-exception v0

    goto :goto_aa

    :catchall_a6
    move-exception p2

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    .line 122
    :goto_aa
    :try_start_aa
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b8

    if-eqz p2, :cond_c4

    .line 126
    :try_start_af
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_c4

    :catchall_b3
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_c4

    :catchall_b8
    move-exception v0

    if-eqz p2, :cond_c3

    .line 126
    :try_start_bb
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bf

    goto :goto_c3

    :catchall_bf
    move-exception p2

    .line 128
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 129
    :cond_c3
    :goto_c3
    throw v0

    :cond_c4
    :goto_c4
    return v1
.end method

.method private saveEventListToFile(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    .line 151
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 152
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p2

    .line 155
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    .line 63
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected eventListChange()V
    .registers 1

    return-void
.end method

.method public matchHit(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/io/File;I)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p2, :cond_e

    .line 275
    monitor-enter p0

    .line 276
    :try_start_4
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/umeng/analytics/filter/EventList;->saveEventListToFile(Landroid/content/Context;Ljava/io/File;)V

    .line 277
    monitor-exit p0

    goto :goto_3c

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p1

    :cond_e
    if-ne p2, v0, :cond_2d

    .line 279
    monitor-enter p0

    .line 280
    :try_start_11
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/umeng/analytics/filter/EventList;->loadEventListFromFile(Landroid/content/Context;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "MobclickRT"

    const-string p2, "--->>> find event list data file, load it."

    .line 281
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_21
    const-string p1, "MobclickRT"

    const-string p2, "--->>> can\'t find event list file."

    .line 283
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_28
    monitor-exit p0

    goto :goto_3c

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw p1

    :cond_2d
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3c

    .line 287
    monitor-enter p0

    const/4 p2, 0x0

    .line 288
    :try_start_32
    iput-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 289
    invoke-direct {p0, p1}, Lcom/umeng/analytics/filter/EventList;->deleteDataFile(Ljava/io/File;)V

    .line 290
    monitor-exit p0

    goto :goto_3c

    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw p1

    :cond_3c
    :goto_3c
    return v0
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "ekv_bl_ver"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "MobclickRT"

    if-eqz v0, :cond_24

    if-nez p2, :cond_24

    const-string v0, "--->>> disable black list for ekv."

    .line 195
    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-virtual {v3, v0, p0, v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    :cond_24
    const-string v0, "ekv_wl_ver"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    if-nez p2, :cond_45

    const-string p1, "--->>> disable white list for ekv."

    .line 201
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-virtual {p2, p1, p0, v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    :cond_45
    return-void
.end method

.method public onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 212
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> onPreProcessImprintKey: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; len of value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickRT"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> onPreProcessImprintKey: value = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/umeng/analytics/filter/EventList;->eventListChange()V

    .line 217
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_68

    .line 220
    :try_start_5a
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_68

    .line 224
    :catch_5e
    :try_start_5e
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception p2

    .line 226
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 230
    :cond_68
    :goto_68
    iget-object p2, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V

    :cond_71
    const/4 p1, 0x1

    return p1
.end method

.method public register(Landroid/content/Context;)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    .line 168
    :cond_a
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 173
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-virtual {v0, p1, p0, v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    goto :goto_37

    .line 175
    :cond_34
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/filter/EventList;->setMD5ClearFlag(Z)V

    .line 180
    :cond_37
    :goto_37
    iget-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 181
    iget-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registPreProcessCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;)V

    .line 182
    iget-object p1, p0, Lcom/umeng/analytics/filter/EventList;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    :cond_55
    return-void
.end method

.method public setMD5ClearFlag(Z)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventListName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/analytics/filter/EventList;->mEventListName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listKey:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventListKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_6f

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listKeyValue:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventList:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_6f
    const-string v1, "listKeyValue:empty,"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :goto_74
    iget-object v1, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listKeyVer:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/analytics/filter/EventList;->mEventListVersionKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    :cond_96
    const-string v1, "listKeyVer:empty]"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a0
    const-string v0, "Uninitialized EventList."

    return-object v0
.end method
