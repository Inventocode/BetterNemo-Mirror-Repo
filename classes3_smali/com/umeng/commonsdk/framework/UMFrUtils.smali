.class public Lcom/umeng/commonsdk/framework/UMFrUtils;
.super Ljava/lang/Object;
.source "UMFrUtils.java"


# static fields
.field private static final KEY_LAST_INSTANT_SUCC_BUILD_TIME:Ljava/lang/String; = "last_instant_build_time"

.field private static final KEY_LAST_SUCC_BUILD_TIME:Ljava/lang/String; = "last_successful_build_time"

.field private static mDefaultEnvelopeDir:Ljava/lang/String; = "envelope"

.field private static mDefaultEnvelopeDirPath:Ljava/lang/String; = null

.field private static mEnvelopeBuildTimeLock:Ljava/lang/Object; = null

.field private static mEnvelopeFileLock:Ljava/lang/Object; = null

.field private static sCurrentProcessName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4a

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_37

    :try_start_e
    const-string v2, "android.content.Context"

    .line 153
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkSelfPermission"

    new-array v5, v4, [Ljava/lang/Class;

    .line 154
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 155
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_32

    if-nez p0, :cond_4a

    :goto_30
    const/4 v0, 0x1

    goto :goto_4a

    :catchall_32
    move-exception p0

    .line 159
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 163
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_46

    if-nez p0, :cond_4a

    goto :goto_30

    :catchall_46
    move-exception p0

    .line 169
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    return v0
.end method

.method public static envelopeFileNumber(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 213
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    .line 215
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 218
    array-length v1, v1

    monitor-exit v2

    return v1

    .line 221
    :cond_1e
    monitor-exit v2

    goto :goto_27

    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v1

    .line 223
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return v0
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 83
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 85
    :try_start_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 87
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 89
    sput-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    goto :goto_50

    :cond_19
    const-string v1, "activity"

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_50

    .line 93
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_50

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 96
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_33

    .line 97
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_48

    goto :goto_50

    :catchall_48
    move-exception v0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 108
    :cond_50
    :goto_50
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    return-object p0
.end method

.method private static getDistanceDays(JJ)J
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    sub-long/2addr p2, p0

    goto :goto_8

    :cond_6
    sub-long p2, p0, p2

    :goto_8
    const-wide/32 p0, 0x5265c00

    .line 245
    div-long/2addr p2, p0

    return-wide p2
.end method

.method public static getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 466
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    if-nez v1, :cond_2c

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    .line 471
    :cond_2c
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_49

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "--->>> Create Envelope Directory failed!!!"

    .line 474
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v1

    .line 478
    :try_start_46
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 480
    :cond_49
    :goto_49
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_4d
    move-exception p0

    .line 481
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public static getEnvelopeFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 309
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter p0

    .line 311
    :try_start_10
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 312
    array-length v2, v1

    if-nez v2, :cond_1a

    goto :goto_27

    .line 316
    :cond_1a
    new-instance v0, Lcom/umeng/commonsdk/framework/UMFrUtils$2;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils$2;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 330
    aget-object v0, v1, v0

    monitor-exit p0

    return-object v0

    .line 313
    :cond_27
    :goto_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception v0

    .line 331
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public static getLastInstantBuildTime(Landroid/content/Context;)J
    .registers 5

    .line 492
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "last_instant_build_time"

    const-wide/16 v2, 0x0

    .line 494
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_11
    move-exception p0

    .line 495
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static getLastSuccessfulBuildTime(Landroid/content/Context;)J
    .registers 5

    .line 485
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "last_successful_build_time"

    const-wide/16 v2, 0x0

    .line 487
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_11
    move-exception p0

    .line 488
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static getLegacyEnvelopeDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 423
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_64

    const-string v2, "--->>> getEnvelopeDir: use current process name as envelope directory."

    const/16 v3, 0x5f

    const/16 v4, 0x3a

    if-nez v1, :cond_1c

    .line 426
    :try_start_14
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    const-string v0, "activity"

    .line 430
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_68

    .line 432
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v0, "--->>> getEnvelopeDir: can\'t get process name, use default envelope directory."

    .line 434
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 435
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    return-object p0

    .line 437
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3d

    .line 438
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_64

    return-object p0

    .line 441
    :cond_3d
    :try_start_3d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 442
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_41

    .line 443
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 444
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_3d .. :try_end_5e} :catchall_5f

    return-object v0

    :catchall_5f
    move-exception v0

    .line 450
    :try_start_60
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception v0

    .line 455
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 457
    :cond_68
    :goto_68
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    return-object p0
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 57
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_33

    .line 58
    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_34

    .line 68
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_32

    :catchall_32
    return-object p0

    :catchall_33
    move-object v1, v0

    :catchall_34
    if-eqz v1, :cond_39

    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_39

    :catchall_39
    :cond_39
    return-object v0
.end method

.method public static getSubProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    .line 119
    :try_start_2
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_14

    add-int/lit8 v3, v2, 0x1

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_14
    if-gez v2, :cond_3b

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_3c

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_33

    goto :goto_3c

    :catchall_33
    move-exception v1

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3b
    move-object v1, v0

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public static hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 8

    const-string v0, "a"

    .line 622
    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_8

    const-string v0, "i"

    .line 625
    :cond_8
    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_e

    const-string v0, "z"

    .line 628
    :cond_e
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_48

    .line 630
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    sget-object p1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter p1

    .line 633
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 634
    array-length v3, v2

    if-nez v3, :cond_27

    goto :goto_3d

    .line 637
    :cond_27
    array-length v3, v2

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_43

    aget-object v5, v2, v4

    .line 638
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_3f

    if-eqz v5, :cond_3a

    .line 639
    :try_start_37
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 635
    :cond_3d
    :goto_3d
    monitor-exit p1

    return v1

    :catchall_3f
    move-exception v0

    .line 643
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 645
    :cond_43
    monitor-exit p1

    return v1

    :catchall_45
    move-exception p0

    .line 646
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    throw p0

    :cond_48
    return v1
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 189
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "connectivity"

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_25

    .line 192
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 194
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return p0

    :catchall_1d
    move-exception v0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public static removeEnvelopeFile(Ljava/io/File;)Z
    .registers 4

    .line 565
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_19

    .line 568
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 569
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v1

    return p0

    :catchall_15
    move-exception p0

    .line 572
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_19
    const/4 p0, 0x1

    .line 574
    monitor-exit v1

    return p0

    :catchall_1c
    move-exception p0

    .line 575
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public static removeRedundantEnvelopeFiles(Landroid/content/Context;I)V
    .registers 7

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 262
    array-length v2, v0

    if-gt v2, p1, :cond_16

    goto :goto_50

    .line 266
    :cond_16
    new-instance v2, Lcom/umeng/commonsdk/framework/UMFrUtils$1;

    invoke-direct {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils$1;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 281
    array-length v2, v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_52

    if-le v2, p1, :cond_4e

    const/4 v2, 0x0

    .line 284
    :goto_22
    :try_start_22
    array-length v3, v0

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_4e

    .line 285
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_47

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> remove ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] file fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_4a

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :catchall_4a
    move-exception p1

    .line 291
    :try_start_4b
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 294
    :cond_4e
    monitor-exit v1

    return-void

    .line 263
    :cond_50
    :goto_50
    monitor-exit v1

    return-void

    :catchall_52
    move-exception p0

    .line 294
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_52

    throw p0
.end method

.method public static saveEnvelopeFile(Landroid/content/Context;Ljava/lang/String;[B)I
    .registers 8

    const/16 v0, 0x65

    if-nez p2, :cond_5

    return v0

    .line 529
    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 533
    :try_start_26
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_56
    .catchall {:try_start_26 .. :try_end_2b} :catchall_54

    .line 534
    :try_start_2b
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 535
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_51
    .catchall {:try_start_2b .. :try_end_31} :catchall_4e

    .line 552
    :try_start_31
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Ljava/lang/String;)Z

    move-result p2

    .line 553
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p2, :cond_46

    .line 555
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->updateLastSuccessfulBuildTime(Landroid/content/Context;)V

    :cond_46
    if-eqz p1, :cond_4b

    .line 558
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->updateLastInstantBuildTime(Landroid/content/Context;)V

    :cond_4b
    const/4 p0, 0x0

    .line 560
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_71

    return p0

    :catchall_4e
    move-exception p1

    move-object v3, v4

    goto :goto_66

    :catch_51
    move-exception p1

    move-object v3, v4

    goto :goto_57

    :catchall_54
    move-exception p1

    goto :goto_66

    :catch_56
    move-exception p1

    .line 539
    :goto_57
    :try_start_57
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_54

    if-eqz v3, :cond_64

    .line 544
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception p1

    .line 546
    :try_start_61
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 547
    :cond_64
    :goto_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_71

    return v0

    :goto_66
    if-eqz v3, :cond_70

    .line 544
    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception p2

    .line 546
    :try_start_6d
    invoke-static {p0, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 547
    :cond_70
    :goto_70
    throw p1

    :catchall_71
    move-exception p0

    .line 561
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_71

    throw p0
.end method

.method public static syncLegacyEnvelopeIfNeeded(Landroid/content/Context;)V
    .registers 9

    if-nez p0, :cond_3

    return-void

    .line 344
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLegacyEnvelopeDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 350
    :cond_e
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    .line 354
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    return-void

    .line 360
    :cond_3f
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 361
    array-length v2, v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_96

    if-nez v2, :cond_49

    goto :goto_87

    .line 373
    :cond_49
    :try_start_49
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 374
    :goto_4e
    array-length v4, v0

    if-ge v3, v4, :cond_78

    .line 375
    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 377
    :cond_78
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_81
    .catchall {:try_start_49 .. :try_end_81} :catchall_82

    goto :goto_9a

    :catchall_82
    move-exception v0

    .line 381
    :try_start_83
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_96

    goto :goto_9a

    .line 363
    :cond_87
    :goto_87
    :try_start_87
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception v0

    .line 367
    :try_start_92
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    :cond_95
    :goto_95
    return-void

    :catchall_96
    move-exception v0

    .line 384
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 590
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 592
    :try_start_8
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 593
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    .line 594
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, v2

    .line 593
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 594
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 596
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    .line 597
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_39

    const/4 v4, 0x0

    .line 598
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_39} :catch_45
    .catchall {:try_start_8 .. :try_end_39} :catchall_43

    .line 606
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p0

    .line 608
    :try_start_3e
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 609
    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_53

    return-object v3

    :catchall_43
    move-exception p0

    goto :goto_4a

    :catch_45
    move-exception p0

    .line 602
    :try_start_46
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 603
    throw p0
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_43

    .line 606
    :goto_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v2

    .line 608
    :try_start_4f
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 609
    :goto_52
    throw p0

    :catchall_53
    move-exception p0

    .line 611
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_53

    throw p0
.end method

.method private static updateLastInstantBuildTime(Landroid/content/Context;)V
    .registers 5

    .line 507
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 510
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "last_instant_build_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 511
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private static updateLastSuccessfulBuildTime(Landroid/content/Context;)V
    .registers 5

    .line 499
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 502
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "last_successful_build_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method
