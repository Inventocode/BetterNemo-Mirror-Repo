.class public Lcom/arthenica/ffmpegkit/FFmpegKitConfig;
.super Ljava/lang/Object;
.source "FFmpegKitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
    }
.end annotation


# static fields
.field private static activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

.field private static asyncConcurrencyLimit:I

.field private static asyncExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

.field private static globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field private static globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

.field private static final safFileDescriptorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final safIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessionHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessionHistoryLock:Ljava/lang/Object;

.field private static final sessionHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation
.end field

.field private static sessionHistorySize:I

.field private static final uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -$$Nest$sfgetsessionHistorySize()I
    .registers 1

    sget v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const-string v0, "com.arthenica"

    .line 134
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->registerRootPackage(Ljava/lang/String;)V

    const-string v0, "ffmpeg-kit"

    const-string v1, "Loading ffmpeg-kit."

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpeg()Z

    move-result v1

    .line 145
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpegKit(Z)V

    .line 147
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 150
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLogLevel()I

    move-result v1

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/Level;->from(I)Lcom/arthenica/ffmpegkit/Level;

    move-result-object v1

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    const/16 v1, 0xa

    .line 152
    sput v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    .line 153
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 155
    sput v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    .line 156
    new-instance v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;

    invoke-direct {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;-><init>()V

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    .line 163
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 164
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 166
    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 167
    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 172
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    .line 173
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    .line 174
    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    sput-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadAbi()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadBuildDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Loaded ffmpeg-kit-%s-%s-%s-%s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSession(Lcom/arthenica/ffmpegkit/Session;)V
    .registers 5

    .line 1120
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_3
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1128
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->deleteExpiredSessions()V

    .line 1132
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public static argumentsToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 1377
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1378
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    if-lez v1, :cond_15

    const-string v2, " "

    .line 1380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    :cond_15
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1385
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static deleteExpiredSessions()V
    .registers 4

    .line 1103
    :cond_0
    :goto_0
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    if-le v1, v2, :cond_23

    const/4 v1, 0x0

    .line 1105
    :try_start_b
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arthenica/ffmpegkit/Session;

    if-eqz v0, :cond_0

    .line 1107
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_0

    :catch_21
    nop

    goto :goto_0

    :cond_23
    return-void
.end method

.method private static native disableNativeRedirection()V
.end method

.method private static native enableNativeRedirection()V
.end method

.method static extractExtensionFromSafDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "."

    .line 945
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_11

    .line 946
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, p0

    .line 950
    :goto_12
    :try_start_12
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " ."

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 952
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p0

    const-string p0, "Failed to extract extension from saf display name: %s.%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ffmpeg-kit"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "raw"

    return-object p0
.end method

.method public static ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    .registers 4

    .line 655
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->startRunning()V

    .line 658
    :try_start_3
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFmpegExecute(J[Ljava/lang/String;)I

    move-result v0

    .line 659
    new-instance v1, Lcom/arthenica/ffmpegkit/ReturnCode;

    invoke-direct {v1, v0}, Lcom/arthenica/ffmpegkit/ReturnCode;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/AbstractSession;->complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_18

    goto :goto_3c

    :catch_18
    move-exception v0

    .line 661
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;->fail(Ljava/lang/Exception;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p0

    const-string p0, "FFmpeg execute failed: %s.%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ffmpeg-kit"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return-void
.end method

.method public static getBuildDate()Ljava/lang/String;
    .registers 1

    .line 592
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeBuildDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .registers 1

    .line 1286
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    return-object v0
.end method

.method private static native getNativeBuildDate()Ljava/lang/String;
.end method

.method private static native getNativeFFmpegVersion()Ljava/lang/String;
.end method

.method static native getNativeLogLevel()I
.end method

.method private static native getNativeVersion()Ljava/lang/String;
.end method

.method public static getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, "_display_name"

    .line 969
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ffmpeg-kit"

    const/16 v5, 0x13

    if-ge v1, v5, :cond_20

    new-array p0, v3, [Ljava/lang/Object;

    .line 970
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "getSafParameter is not supported on API Level %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 975
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_85

    if-eqz v1, :cond_48

    .line 976
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 977
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3e

    goto :goto_4a

    :catchall_3e
    move-exception p0

    .line 975
    :try_start_3f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p2

    :try_start_44
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_85

    :cond_48
    const-string v5, "unknown"

    :goto_4a
    if-eqz v1, :cond_4f

    .line 979
    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_85

    .line 984
    :cond_4f
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 985
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v2, v3, p1, p2, p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;-><init>(Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 987
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "saf:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->extractExtensionFromSafDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_85
    move-exception p0

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v2

    .line 980
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const/4 p1, 0x2

    invoke-static {p0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "Failed to get %s column for %s.%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    throw p0
.end method

.method public static getSafParameterForRead(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-string v0, "r"

    .line 1001
    invoke-static {p0, p1, v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSession(J)Lcom/arthenica/ffmpegkit/Session;
    .registers 4

    .line 1142
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_3
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/arthenica/ffmpegkit/Session;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 1144
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 3

    .line 570
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->isLTSBuild()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 571
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s-lts"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :cond_17
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native ignoreNativeSignal(I)V
.end method

.method public static isLTSBuild()Z
    .registers 1

    .line 583
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->isNativeLTSBuild()Z

    move-result v0

    return v0
.end method

.method private static log(JI[B)V
    .registers 9

    .line 219
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/Level;->from(I)Lcom/arthenica/ffmpegkit/Level;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 221
    new-instance p3, Lcom/arthenica/ffmpegkit/Log;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/arthenica/ffmpegkit/Log;-><init>(JLcom/arthenica/ffmpegkit/Level;Ljava/lang/String;)V

    .line 224
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 227
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    sget-object v4, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    if-ne v3, v4, :cond_1e

    sget-object v3, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v3

    if-ne p2, v3, :cond_26

    :cond_1e
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v3

    if-le p2, v3, :cond_27

    :cond_26
    return-void

    .line 232
    :cond_27
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string v3, "ffmpeg-kit"

    if-eqz p0, :cond_5a

    .line 234
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v2

    .line 235
    invoke-interface {p0, p3}, Lcom/arthenica/ffmpegkit/Session;->addLog(Lcom/arthenica/ffmpegkit/Log;)V

    .line 237
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;

    move-result-object v4

    if-eqz v4, :cond_5a

    .line 242
    :try_start_3e
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/arthenica/ffmpegkit/LogCallback;->apply(Lcom/arthenica/ffmpegkit/Log;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_58

    :catch_46
    move-exception p0

    new-array v4, p2, [Ljava/lang/Object;

    .line 244
    invoke-static {p0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, p1

    const-string p0, "Exception thrown inside session log callback.%s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    const/4 p0, 0x1

    goto :goto_5b

    :cond_5a
    const/4 p0, 0x0

    .line 249
    :goto_5b
    sget-object v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    if-eqz v4, :cond_76

    .line 255
    :try_start_5f
    invoke-interface {v4, p3}, Lcom/arthenica/ffmpegkit/LogCallback;->apply(Lcom/arthenica/ffmpegkit/Log;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_75

    :catch_63
    move-exception p3

    new-array v4, p2, [Ljava/lang/Object;

    .line 257
    invoke-static {p3}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, p1

    const-string p1, "Exception thrown inside global log callback.%s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    const/4 p1, 0x1

    .line 262
    :cond_76
    sget-object p3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p3, p3, v2

    if-eq p3, p2, :cond_b3

    const/4 p2, 0x2

    if-eq p3, p2, :cond_92

    const/4 p2, 0x3

    if-eq p3, p2, :cond_8f

    const/4 p2, 0x4

    if-eq p3, p2, :cond_8a

    goto :goto_95

    :cond_8a
    if-nez p1, :cond_8e

    if-eqz p0, :cond_95

    :cond_8e
    return-void

    :cond_8f
    if-eqz p0, :cond_95

    return-void

    :cond_92
    if-eqz p1, :cond_95

    return-void

    .line 290
    :cond_95
    :goto_95
    sget-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_b4

    .line 317
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 311
    :pswitch_a4  #0x6, 0x7, 0x8
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 305
    :pswitch_a8  #0x5
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 301
    :pswitch_ac  #0x4
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 297
    :pswitch_b0  #0x2, 0x3
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    :pswitch_b3  #0x1
    return-void

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_b3  #00000001
        :pswitch_b0  #00000002
        :pswitch_b0  #00000003
        :pswitch_ac  #00000004
        :pswitch_a8  #00000005
        :pswitch_a4  #00000006
        :pswitch_a4  #00000007
        :pswitch_a4  #00000008
    .end packed-switch
.end method

.method public static native messagesInTransmit(J)I
.end method

.method static native nativeFFmpegCancel(J)V
.end method

.method private static native nativeFFmpegExecute(J[Ljava/lang/String;)I
.end method

.method static native nativeFFprobeExecute(J[Ljava/lang/String;)I
.end method

.method public static parseArguments(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    .line 1316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1322
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_7f

    if-lez v3, :cond_21

    add-int/lit8 v6, v3, -0x1

    .line 1325
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    .line 1329
    :goto_22
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v7, v8, :cond_47

    if-nez v4, :cond_43

    if-eqz v5, :cond_30

    goto :goto_43

    .line 1334
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7c

    .line 1335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7c

    .line 1333
    :cond_43
    :goto_43
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_47
    const/16 v8, 0x27

    const/16 v10, 0x5c

    if-ne v7, v8, :cond_61

    if-eqz v6, :cond_55

    .line 1338
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-eq v8, v10, :cond_61

    :cond_55
    if-eqz v4, :cond_59

    const/4 v4, 0x0

    goto :goto_7c

    :cond_59
    if-eqz v5, :cond_5f

    .line 1342
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_5f
    const/4 v4, 0x1

    goto :goto_7c

    :cond_61
    const/16 v8, 0x22

    if-ne v7, v8, :cond_79

    if-eqz v6, :cond_6d

    .line 1346
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-eq v6, v10, :cond_79

    :cond_6d
    if-eqz v5, :cond_71

    const/4 v5, 0x0

    goto :goto_7c

    :cond_71
    if-eqz v4, :cond_77

    .line 1350
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7c

    :cond_77
    const/4 v5, 0x1

    goto :goto_7c

    .line 1355
    :cond_79
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7c
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1359
    :cond_7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_8c

    .line 1360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8c
    new-array p0, v2, [Ljava/lang/String;

    .line 1363
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static native registerNewNativeFFmpegPipe(Ljava/lang/String;)I
.end method

.method private static safClose(I)I
    .registers 7

    const-string v0, "ffmpeg-kit"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1051
    :try_start_4
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    if-eqz v4, :cond_3a

    .line 1053
    invoke-virtual {v4}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 1055
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 1056
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getSafId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1057
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    return v1

    :cond_28
    const-string v3, "ParcelFileDescriptor for SAF fd %d not found."

    new-array v4, v1, [Ljava/lang/Object;

    .line 1060
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    :cond_3a
    const-string v3, "SAF fd %d not found."

    new-array v4, v1, [Ljava/lang/Object;

    .line 1063
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_4c

    goto :goto_65

    :catchall_4c
    move-exception v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1066
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v3}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Failed to close SAF fd: %d.%s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return v2
.end method

.method private static safOpen(I)I
    .registers 8

    const-string v0, "ffmpeg-kit"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1026
    :try_start_4
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    if-eqz v3, :cond_2b

    .line 1028
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getOpenMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1029
    invoke-virtual {v3, v4}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 1030
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    .line 1031
    sget-object v5, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v4

    :cond_2b
    const-string v3, "SAF id %d not found."

    new-array v4, v1, [Ljava/lang/Object;

    .line 1034
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3d

    goto :goto_56

    :catchall_3d
    move-exception v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1037
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v3}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Failed to open SAF id: %d.%s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return v2
.end method

.method private static native setNativeEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native setNativeLogLevel(I)V
.end method

.method private static statistics(JIFFJDDD)V
    .registers 29

    .line 338
    new-instance v15, Lcom/arthenica/ffmpegkit/Statistics;

    move-object v1, v15

    move-wide/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    invoke-direct/range {v1 .. v14}, Lcom/arthenica/ffmpegkit/Statistics;-><init>(JIFFJDDD)V

    .line 340
    invoke-static/range {p0 .. p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ffmpeg-kit"

    if-eqz v0, :cond_4b

    .line 341
    invoke-interface {v0}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 342
    check-cast v0, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 343
    invoke-virtual {v0, v15}, Lcom/arthenica/ffmpegkit/FFmpegSession;->addStatistics(Lcom/arthenica/ffmpegkit/Statistics;)V

    .line 345
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 348
    :try_start_31
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/arthenica/ffmpegkit/StatisticsCallback;->apply(Lcom/arthenica/ffmpegkit/Statistics;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_4b

    :catch_39
    move-exception v0

    new-array v4, v2, [Ljava/lang/Object;

    .line 350
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "Exception thrown inside session statistics callback.%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_4b
    :goto_4b
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    if-eqz v0, :cond_66

    .line 359
    :try_start_4f
    invoke-interface {v0, v15}, Lcom/arthenica/ffmpegkit/StatisticsCallback;->apply(Lcom/arthenica/ffmpegkit/Statistics;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_66

    :catch_53
    move-exception v0

    move-object v4, v0

    new-array v0, v2, [Ljava/lang/Object;

    .line 361
    invoke-static {v4}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Exception thrown inside global statistics callback.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method
