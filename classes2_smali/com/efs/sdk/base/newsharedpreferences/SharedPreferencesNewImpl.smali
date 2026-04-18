.class public final Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;,
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;,
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteFloatUtils;,
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;,
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteLongUtils;,
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;,
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;,
        Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$SUPPORTED_TYPE;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CONTENT_LENGTH_LOST:I = 0x1

.field private static final CONTENT_OVER_SIZE:I = 0x7

.field private static final DATA_TYPE_ERROR:I = 0x8

.field private static final DATA_TYPE_INVALID:I = 0x9

.field private static final DELAY_TIME_TO_SAVE:J = 0x3e8L

.field private static final FINISH_MARK:B = 0x12t

.field private static final FINISH_MARK_LENGTH:I = 0x1

.field private static final ID_LENGTH:I = 0x4

.field private static final INIT_EXCEPTION:I = 0xa

.field private static final LOAD_BAK_FILE:I = 0xc

.field private static final MAPPED_BUFFER_ERROR:I = 0x4

.field private static final MAX_HANDLERTHREAD:I = 0x3

.field private static final MAX_LOCK_FILE_TIME:J = 0x2710L

.field private static final MAX_NUM:I = 0x7fffffff

.field private static final MAX_TRY_TIME:I = 0x6

.field private static final MIN_INCREASE_LENGTH:I = 0x400

.field private static final MODIFY_ID_LOST:I = 0x2

.field private static final OTHER_EXCEPTION:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesNew"

.field private static final TRY_RELOAD_INTERVAL:J = 0x3cL

.field private static final TRY_SAVE_TIME_DELAY:I = 0x7d0

.field private static final TYPE_CAST_EXCEPTION:I = 0xd

.field private static final VALUE_LOST:I = 0x3

.field private static final mFileMonitorSyncObj:Ljava/lang/Object;

.field private static mHandlerThreadPool:[Landroid/os/HandlerThread; = null

.field private static final mSaveMessageID:I = 0x533e

.field private static sCachedThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mBackupFilePath:Ljava/lang/String;

.field private mCurTryTime:I

.field private mEditorList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

.field private mFile:Ljava/io/File;

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mFileMonitor:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

.field private mHandler:Landroid/os/Handler;

.field private mIsSaving:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private final mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

.field private mModifyErrorCnt:I

.field private mModifyID:I

.field private mSaveRunnable:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

.field private final mSyncObj:Ljava/lang/Object;

.field private final mSyncSaveObj:Ljava/lang/Object;

.field private final mTryReloadRunnable:Ljava/lang/Runnable;

.field private mTryReloadStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitorSyncObj:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/os/HandlerThread;

    .line 94
    sput-object v1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_2c

    .line 96
    sget-object v2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    new-instance v3, Landroid/os/HandlerThread;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "newsp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 97
    sget-object v2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 100
    :cond_2c
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->sCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V
    .registers 5

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    .line 55
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    .line 56
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncSaveObj:Ljava/lang/Object;

    .line 87
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    const/4 p2, 0x0

    .line 91
    iput-boolean p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    .line 449
    new-instance p2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$2;

    invoke-direct {p2, p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$2;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    .line 531
    new-instance p2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$4;

    invoke-direct {p2, p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$4;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

    .line 128
    iput-object p3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    .line 129
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->initBuffer()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 133
    invoke-direct {p0, p4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->startLoadFromDisk(Z)V

    .line 135
    :cond_6d
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$1;

    invoke-direct {p2, p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$1;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;-><init>(Ljava/io/File;ILcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Landroid/content/SharedPreferences$Editor;ZZZ)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->save(Landroid/content/SharedPreferences$Editor;ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    return p0
.end method

.method static synthetic access$300(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Z)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->loadFromDiskLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->tryReload()V

    return-void
.end method

.method private allocBuffer(I)Ljava/nio/MappedByteBuffer;
    .registers 9

    .line 823
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_9

    .line 824
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 828
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 830
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 833
    :goto_1c
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz p1, :cond_23

    .line 834
    invoke-virtual {p1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 837
    :cond_23
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    return-object p1
.end method

.method private awaitLoadedLocked()V
    .registers 2

    .line 792
    iget-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    if-nez v0, :cond_17

    .line 793
    monitor-enter p0

    .line 794
    :goto_5
    :try_start_5
    iget-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_14

    if-nez v0, :cond_12

    .line 796
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    .line 798
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 801
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw v0

    .line 804
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->tryReload()V

    return-void
.end method

.method private backup()V
    .registers 11

    const/4 v0, 0x0

    .line 1250
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1252
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1254
    :cond_11
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_36

    .line 1255
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1256
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    int-to-long v6, v1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_30

    .line 1260
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1261
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    return-void

    :catchall_30
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_39

    :catchall_36
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 1258
    :goto_39
    :try_start_39
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    .line 1260
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1261
    invoke-direct {p0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    return-void

    :catchall_43
    move-exception v2

    .line 1260
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1261
    invoke-direct {p0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    throw v2
.end method

.method private getBCCCode([B)B
    .registers 6

    .line 1327
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    return v2
.end method

.method private getBytes(Ljava/lang/Object;)[B
    .registers 5

    if-eqz p1, :cond_54

    .line 1196
    :try_start_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 1197
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 1198
    :cond_d
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_23

    .line 1199
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    int-to-byte p1, v0

    aput-byte p1, v1, v2

    return-object v1

    .line 1201
    :cond_23
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_32

    .line 1202
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteFloatUtils;->floatToBytes(F)[B

    move-result-object p1

    return-object p1

    .line 1203
    :cond_32
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_41

    .line 1204
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object p1

    return-object p1

    .line 1205
    :cond_41
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_54

    .line 1206
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteLongUtils;->longToBytes(J)[B

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_2 .. :try_end_4f} :catchall_50

    return-object p1

    :catchall_50
    move-exception p1

    .line 1209
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_54
    const/4 p1, 0x0

    return-object p1
.end method

.method private getContentLength()I
    .registers 8

    .line 637
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, -0x1

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_a

    goto :goto_62

    .line 641
    :cond_a
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_d
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 644
    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v4, v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 645
    invoke-static {v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v4

    .line 646
    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 647
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->get()B

    move-result v2

    const/16 v5, 0x12

    if-eq v2, v5, :cond_34

    .line 648
    invoke-direct {p0, v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v3

    if-ne v2, v3, :cond_36

    :cond_34
    if-gez v4, :cond_55

    .line 649
    :cond_36
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_53

    .line 650
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_4e

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_50

    :cond_4e
    const-wide/16 v5, 0x0

    :goto_50
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 653
    :cond_53
    monitor-exit v0

    return v1

    :cond_55
    const v1, 0x7fffffff

    if-le v4, v1, :cond_5d

    const v4, 0x7fffffff

    .line 660
    :cond_5d
    monitor-exit v0

    return v4

    :catchall_5f
    move-exception v1

    .line 661
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_d .. :try_end_61} :catchall_5f

    throw v1

    :cond_62
    :goto_62
    return v1
.end method

.method private getDataBytes()Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[[B>;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [[B

    .line 577
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 579
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 580
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_8c

    .line 584
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_27
    if-ltz v0, :cond_82

    .line 586
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 587
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 588
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v8, :cond_7f

    .line 589
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7f

    if-eqz v7, :cond_7f

    .line 591
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 592
    array-length v9, v8

    invoke-static {v9}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v9

    .line 593
    aput-object v9, v1, v6

    add-int/lit8 v10, v6, 0x1

    .line 594
    aput-object v8, v1, v10

    .line 595
    array-length v9, v9

    array-length v8, v8

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 598
    invoke-direct {p0, v7}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getBytes(Ljava/lang/Object;)[B

    move-result-object v8

    .line 599
    array-length v9, v8

    invoke-static {v9}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v9

    add-int/lit8 v10, v6, 0x2

    .line 601
    aput-object v9, v1, v10

    add-int/lit8 v10, v6, 0x3

    .line 602
    aput-object v8, v1, v10

    .line 603
    array-length v9, v9

    array-length v8, v8

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    new-array v8, v3, [B

    .line 607
    invoke-direct {p0, v7}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getObjectType(Ljava/lang/Object;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v8, v4

    add-int/lit8 v7, v6, 0x4

    .line 608
    aput-object v8, v1, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x5

    :cond_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 614
    :cond_82
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_8c
    move-exception v1

    .line 580
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method private getHandlerThread()Landroid/os/HandlerThread;
    .registers 3

    .line 1362
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_c

    neg-int v0, v0

    .line 1363
    :cond_c
    rem-int/lit8 v0, v0, 0x3

    .line 1364
    sget-object v1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandlerThreadPool:[Landroid/os/HandlerThread;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private getMaskByte([B)B
    .registers 2

    .line 1334
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getBCCCode([B)B

    move-result p1

    return p1
.end method

.method private getObjectByType([BI)Ljava/lang/Object;
    .registers 5

    if-eqz p1, :cond_46

    .line 1172
    array-length v0, p1

    if-lez v0, :cond_46

    const/4 v0, 0x5

    if-ne p2, v0, :cond_10

    .line 1175
    :try_start_8
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    :catchall_e
    move-exception p1

    goto :goto_43

    :cond_10
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v0, :cond_20

    const/4 p2, 0x0

    .line 1177
    aget-byte p1, p1, p2

    if-ne p1, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2c

    .line 1179
    invoke-static {p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteFloatUtils;->bytesToFloat([B)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2c
    if-ne p2, v1, :cond_37

    .line 1181
    invoke-static {p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_37
    const/4 v0, 0x3

    if-ne p2, v0, :cond_46

    .line 1183
    invoke-static {p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteLongUtils;->bytesToLong([B)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_e

    return-object p1

    .line 1186
    :goto_43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method private getObjectType(Ljava/lang/Object;)I
    .registers 3

    .line 1156
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 p1, 0x5

    return p1

    .line 1158
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    const/4 p1, 0x4

    return p1

    .line 1160
    :cond_c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_12

    const/4 p1, 0x2

    return p1

    .line 1162
    :cond_12
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    return p1

    .line 1164
    :cond_18
    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_1e

    const/4 p1, 0x3

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private getOneString([BI)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1043
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 1047
    aget-byte v0, p1, p2

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1f

    aget-byte v0, p1, p2

    invoke-direct {p0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v4

    if-ne v0, v4, :cond_17

    goto :goto_1f

    .line 1048
    :cond_17
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "length string\'s finish mark missing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_1f
    add-int/lit8 p2, p2, 0x1

    .line 1053
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v0

    if-ltz v0, :cond_5b

    add-int v1, p2, v0

    .line 1054
    array-length v4, p1

    if-ge v1, v4, :cond_5b

    const v4, 0x7fffffff

    if-gt v0, v4, :cond_5b

    const/4 v4, 0x0

    if-eqz v0, :cond_4f

    .line 1062
    new-array v4, v0, [B

    .line 1063
    invoke-static {p1, p2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    aget-byte p2, p1, v1

    if-eq p2, v3, :cond_4e

    aget-byte p1, p1, v1

    invoke-direct {p0, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result p2

    if-ne p1, p2, :cond_46

    goto :goto_4e

    .line 1067
    :cond_46
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Stored bytes\' finish mark missing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    :goto_4e
    move p2, v1

    :cond_4f
    add-int/lit8 p2, p2, 0x1

    .line 1072
    new-instance p1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 1055
    :cond_5b
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "length string is invalid"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private increaseModifyID()I
    .registers 3

    .line 632
    iget v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    return v0
.end method

.method private initBuffer()Z
    .registers 9

    .line 846
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_90

    const/16 v0, 0xa

    .line 848
    :try_start_8
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 849
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 850
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 852
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_4b

    .line 857
    :cond_2a
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_4b

    .line 861
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_4a

    .line 862
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_4a
    const/4 v2, 0x0

    .line 866
    :cond_4b
    :goto_4b
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 868
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;

    if-nez v2, :cond_62

    .line 870
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->initFileHeader()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_62} :catch_64

    :cond_62
    move v1, v2

    goto :goto_91

    :catch_64
    move-exception v2

    .line 874
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 876
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_91

    .line 877
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-interface {v3, v2, v0, v4, v5}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_91

    :cond_90
    const/4 v1, 0x1

    :cond_91
    :goto_91
    return v1
.end method

.method private initFileHeader()V
    .registers 6

    .line 1140
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_31

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1143
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x4

    .line 1144
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1145
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v0, v3

    .line 1146
    invoke-static {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    const/4 v4, 0x5

    .line 1147
    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x9

    .line 1148
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v0, v3

    .line 1150
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1151
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_31
    return-void
.end method

.method private load(Z)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move-object v2, v0

    goto :goto_a

    .line 683
    :cond_6
    invoke-direct {p0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->lockFile(Z)Ljava/nio/channels/FileLock;

    move-result-object v2

    :goto_a
    if-nez v2, :cond_15

    if-eqz p1, :cond_f

    goto :goto_15

    :cond_f
    if-nez p1, :cond_14

    .line 728
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_14
    return-void

    :cond_15
    :goto_15
    const/4 p1, 0x0

    .line 687
    :try_start_16
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->reallocBuffer()V

    .line 689
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_8b

    .line 693
    :cond_24
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getContentLength()I

    move-result v3
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_a8

    int-to-long v3, v3

    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4c

    .line 709
    :try_start_2f
    invoke-direct {p0, v0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v0

    .line 711
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    if-eqz p1, :cond_3e

    .line 714
    iget p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_41

    .line 715
    :cond_3e
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_41
    if-eqz v2, :cond_4b

    .line 720
    :try_start_43
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-void

    .line 698
    :cond_4c
    :try_start_4c
    invoke-virtual {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getModifyID()I

    move-result v5

    iput v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-lez v5, :cond_6c

    .line 700
    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v5
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_a8

    .line 701
    :try_start_57
    iget-object v6, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    long-to-int v4, v3

    sub-int/2addr v4, v7

    .line 702
    new-array v0, v4, [B

    .line 703
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v3, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 704
    monitor-exit v5

    goto :goto_6c

    :catchall_69
    move-exception v3

    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_a8

    .line 709
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-direct {p0, v0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v1

    .line 711
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_75
    if-eqz p1, :cond_7d

    if-nez v0, :cond_80

    .line 714
    iget p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_80

    .line 715
    :cond_7d
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_80
    if-eqz v2, :cond_8a

    .line 720
    :try_start_82
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8a
    :goto_8a
    return-void

    .line 709
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-direct {p0, v0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception v0

    .line 711
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_94
    if-eqz p1, :cond_9a

    .line 714
    iget p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_9d

    .line 715
    :cond_9a
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_9d
    if-eqz v2, :cond_a7

    .line 720
    :try_start_9f
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_a7

    :catch_a3
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a7
    :goto_a7
    return-void

    :catchall_a8
    move-exception v3

    .line 709
    :try_start_a9
    invoke-direct {p0, v0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result p1
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception v1

    .line 711
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b2
    if-eqz p1, :cond_ba

    if-nez v0, :cond_bd

    .line 714
    iget p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-gez p1, :cond_bd

    .line 715
    :cond_ba
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->loadFromBakFile()Z

    :cond_bd
    if-eqz v2, :cond_c7

    .line 720
    :try_start_bf
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_c7

    :catch_c3
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    :cond_c7
    :goto_c7
    throw v3
.end method

.method private loadFromBakFile()Z
    .registers 15

    const-string v0, "#"

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1281
    :try_start_7
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_81

    const/4 v6, 0x4

    :try_start_11
    new-array v7, v6, [B

    .line 1283
    invoke-virtual {v5, v7, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1284
    invoke-static {v7}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v6
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_7c

    const/16 v7, 0xa

    if-gt v6, v7, :cond_2a

    .line 1302
    invoke-direct {p0, v5}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1305
    :try_start_21
    invoke-direct {p0, v2, v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    .line 1307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_29
    return v3

    :cond_2a
    const v8, 0x7fffffff

    if-le v6, v8, :cond_32

    const v6, 0x7fffffff

    :cond_32
    int-to-long v8, v6

    .line 1291
    :try_start_33
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_40

    .line 1292
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    :cond_40
    sub-int/2addr v6, v7

    .line 1295
    new-array v2, v6, [B

    const-wide/16 v7, 0xa

    .line 1296
    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1297
    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_7c

    .line 1302
    invoke-direct {p0, v5}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1305
    :try_start_4e
    invoke-direct {p0, v2, v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v4
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v2

    .line 1307
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1311
    :goto_57
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_ba

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v5, v6

    :goto_78
    invoke-interface {v2, v0, v1, v5, v6}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_ba

    :catchall_7c
    move-exception v6

    move-object v13, v5

    move-object v5, v2

    move-object v2, v13

    goto :goto_83

    :catchall_81
    move-exception v6

    move-object v5, v2

    .line 1300
    :goto_83
    :try_start_83
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_bb

    .line 1302
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1305
    :try_start_89
    invoke-direct {p0, v5, v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v4
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception v2

    .line 1307
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1311
    :goto_92
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_ba

    .line 1312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v5, :cond_b7

    goto :goto_b8

    :cond_b7
    array-length v3, v5

    :goto_b8
    int-to-long v5, v3

    goto :goto_78

    :cond_ba
    :goto_ba
    return v4

    :catchall_bb
    move-exception v7

    .line 1302
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeClose(Ljava/io/Closeable;)V

    .line 1305
    :try_start_bf
    invoke-direct {p0, v5, v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->parseBytesIntoMap([BZ)Z

    move-result v4
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c3} :catch_c4

    goto :goto_c8

    :catch_c4
    move-exception v2

    .line 1307
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1311
    :goto_c8
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_f2

    .line 1312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v5, :cond_ed

    goto :goto_ee

    :cond_ed
    array-length v3, v5

    :goto_ee
    int-to-long v3, v3

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_f2
    throw v7
.end method

.method private loadFromDiskLocked()V
    .registers 2

    .line 781
    iget-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 785
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->load(Z)V

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    .line 788
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private lockFile(Z)Ljava/nio/channels/FileLock;
    .registers 10

    .line 886
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    if-eqz p1, :cond_32

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_c
    if-nez v1, :cond_3b

    .line 895
    :try_start_e
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_16

    move-object v1, p1

    goto :goto_1a

    :catch_16
    move-exception p1

    .line 897
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    if-nez v1, :cond_26

    const-wide/16 v4, 0x64

    .line 902
    :try_start_1e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 904
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 908
    :cond_26
    :goto_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x2710

    cmp-long p1, v4, v6

    if-lez p1, :cond_c

    goto :goto_3b

    .line 914
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 916
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method private merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 394
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;

    invoke-virtual {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->doClear()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 396
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 398
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 401
    :cond_15
    invoke-virtual {v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;->getAll()Ljava/util/HashMap;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_24

    if-eqz v2, :cond_23

    return v4

    :cond_23
    return v0

    .line 410
    :cond_24
    monitor-enter p1

    .line 411
    :try_start_25
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_49

    .line 417
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    .line 419
    :cond_49
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 420
    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_52
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_55
    if-nez p3, :cond_2d

    .line 426
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->notifyDataChanged(Ljava/lang/String;)V

    goto :goto_2d

    .line 429
    :cond_5b
    monitor-exit p1

    return v4

    :catchall_5d
    move-exception p2

    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_25 .. :try_end_5f} :catchall_5d

    throw p2
.end method

.method private mergeWhenReload()V
    .registers 6

    .line 941
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 942
    :try_start_3
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 943
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$Editor;

    .line 944
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z

    goto :goto_11

    .line 947
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private notifyDataChanged(Ljava/lang/String;)V
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    .line 438
    :goto_9
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 439
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v1, :cond_1e

    .line 441
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method private obtainTotalBytes()[B
    .registers 10

    .line 1077
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getDataBytes()Landroid/util/Pair;

    move-result-object v0

    .line 1079
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [[B

    array-length v1, v1

    .line 1080
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    const v1, 0x7fffffff

    if-le v2, v1, :cond_1e

    const v2, 0x7fffffff

    .line 1084
    :cond_1e
    new-array v3, v2, [B

    .line 1088
    invoke-static {v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    .line 1089
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    array-length v4, v2

    add-int/2addr v4, v5

    .line 1091
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 1095
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->increaseModifyID()I

    move-result v2

    invoke-static {v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->intToBytes(I)[B

    move-result-object v2

    .line 1096
    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1097
    array-length v6, v2

    add-int/2addr v4, v6

    .line 1098
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 1102
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [[B

    array-length v2, v0

    const/4 v6, 0x0

    :goto_4f
    if-ge v6, v2, :cond_9e

    aget-object v7, v0, v6

    if-eqz v7, :cond_9b

    .line 1104
    array-length v8, v7

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    if-gt v8, v1, :cond_6a

    .line 1105
    array-length v8, v7

    invoke-static {v7, v5, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    array-length v8, v7

    add-int/2addr v4, v8

    .line 1107
    invoke-direct {p0, v7}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v7

    aput-byte v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    .line 1110
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Write too much data in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_7c

    :cond_7b
    move-object v1, v2

    :goto_7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedPreferencesNew"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v0, :cond_9e

    .line 1112
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v1, :cond_94

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_94
    const/4 v1, 0x7

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_9e

    :cond_9b
    :goto_9b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    :cond_9e
    :goto_9e
    return-object v3
.end method

.method private parseBytesIntoMap([BZ)Z
    .registers 15

    .line 958
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    .line 962
    :try_start_6
    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_12

    :catchall_e
    move-exception p1

    goto/16 :goto_f8

    :cond_11
    move-object v2, v1

    :goto_12
    if-eqz p2, :cond_1d

    .line 967
    iget v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-lez v3, :cond_1d

    .line 968
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1d
    const/4 v3, 0x1

    if-eqz p1, :cond_f6

    .line 971
    array-length v4, p1

    if-nez v4, :cond_25

    goto/16 :goto_f6

    :cond_25
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 976
    :goto_28
    array-length v7, p1
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_e

    if-ge v5, v7, :cond_ea

    .line 978
    :try_start_2b
    invoke-direct {p0, p1, v5}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getOneString([BI)Landroid/util/Pair;

    move-result-object v5

    .line 979
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 981
    invoke-direct {p0, p1, v7}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getOneString([BI)Landroid/util/Pair;

    move-result-object v7

    .line 982
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 985
    aget-byte v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    .line 987
    aget-byte v10, p1, v8

    add-int/lit8 v8, v8, 0x1

    const/16 v11, 0x12

    if-eq v10, v11, :cond_70

    new-array v11, v3, [B

    aput-byte v9, v11, v4

    .line 989
    invoke-direct {p0, v11}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v11

    if-eq v10, v11, :cond_70

    .line 990
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_eb

    .line 991
    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_66

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_67

    :cond_66
    move-object v5, v1

    :goto_67
    const/16 v6, 0x8

    array-length v7, p1

    int-to-long v7, v7

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto/16 :goto_eb

    .line 996
    :cond_70
    invoke-virtual {p0, v9}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->checkTypeValid(B)Z

    move-result v10

    if-nez v10, :cond_8e

    .line 998
    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v5, :cond_8b

    .line 999
    iget-object v6, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v6, :cond_83

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_84

    :cond_83
    move-object v6, v1

    :goto_84
    const/16 v7, 0x9

    array-length v9, p1

    int-to-long v9, v9

    invoke-interface {v5, v6, v7, v9, v10}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    :cond_8b
    move v5, v8

    const/4 v6, 0x0

    goto :goto_28

    .line 1006
    :cond_8e
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    invoke-direct {p0, v7, v9}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getObjectByType([BI)Ljava/lang/Object;

    move-result-object v7

    .line 1007
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_b8

    move-object v9, v5

    check-cast v9, [B

    array-length v9, v9

    if-lez v9, :cond_b8

    if-eqz v7, :cond_b8

    .line 1008
    new-instance v9, Ljava/lang/String;

    check-cast v5, [B

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    if-nez p2, :cond_b3

    .line 1009
    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8

    .line 1010
    :cond_b3
    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_b8} :catch_bb
    .catchall {:try_start_2b .. :try_end_b8} :catchall_e

    :cond_b8
    move v5, v8

    goto/16 :goto_28

    :catch_bb
    move-exception v3

    .line 1014
    :try_start_bc
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1015
    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v5, :cond_eb

    .line 1016
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v7, :cond_d0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_d0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    array-length p1, p1

    int-to-long v6, p1

    invoke-interface {v5, v1, v3, v6, v7}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    goto :goto_eb

    :cond_ea
    move v4, v6

    :cond_eb
    :goto_eb
    if-nez v4, :cond_f4

    if-eqz p2, :cond_f4

    .line 1026
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 1029
    :cond_f4
    monitor-exit v0

    return v4

    .line 973
    :cond_f6
    :goto_f6
    monitor-exit v0

    return v3

    .line 1029
    :goto_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_bc .. :try_end_f9} :catchall_e

    throw p1
.end method

.method private reallocBuffer()V
    .registers 4

    .line 665
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_5

    return-void

    .line 669
    :cond_5
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_8
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getContentLength()I

    move-result v1

    .line 672
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_20

    add-int/lit16 v1, v1, 0x400

    .line 674
    invoke-direct {p0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1c
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception v1

    goto :goto_22

    :catch_1c
    move-exception v1

    .line 677
    :try_start_1d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_1a

    throw v1
.end method

.method private safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 808
    array-length v1, p2

    if-nez v1, :cond_9

    goto :goto_1e

    .line 811
    :cond_9
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 812
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    .line 813
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    .line 814
    array-length v3, p2

    add-int/2addr v1, v3

    if-le v1, v2, :cond_19

    return v0

    .line 817
    :cond_19
    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1

    :cond_1e
    :goto_1e
    return v0
.end method

.method private safeBufferPut(Ljava/nio/MappedByteBuffer;[B)V
    .registers 6

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    .line 928
    array-length v0, p2

    if-nez v0, :cond_8

    goto :goto_23

    .line 932
    :cond_8
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    .line 933
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v1

    array-length v2, p2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_20

    .line 934
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->position()I

    move-result p1

    array-length v0, p2

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x400

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->allocBuffer(I)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    .line 937
    :cond_20
    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_23
    :goto_23
    return-void
.end method

.method private safeClose(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p1, :cond_a

    .line 1268
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 1270
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    return-void
.end method

.method private save(Landroid/content/SharedPreferences$Editor;ZZZ)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 544
    :cond_3
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    const/4 v1, 0x0

    .line 545
    :try_start_7
    iput v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mCurTryTime:I

    const/4 v2, 0x1

    .line 549
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, v3, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->merge(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;Z)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 551
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1d

    .line 552
    monitor-exit v0

    return-void

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    if-eqz v1, :cond_24

    .line 557
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_4d

    if-eqz p3, :cond_2b

    .line 562
    invoke-direct {p0, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V

    return-void

    :cond_2b
    if-eqz p4, :cond_30

    const-wide/16 p3, 0x3e8

    goto :goto_32

    :cond_30
    const-wide/16 p3, 0x0

    .line 565
    :goto_32
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;->setArg(Ljava/lang/Object;)V

    .line 566
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSaveRunnable:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x533e

    .line 567
    iput p2, p1, Landroid/os/Message;->what:I

    .line 568
    iget-object p2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_4d
    move-exception p1

    .line 559
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method private saveInner(Z)V
    .registers 9

    .line 482
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncSaveObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 483
    :try_start_4
    invoke-direct {p0, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->lockFile(Z)Ljava/nio/channels/FileLock;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_8a

    if-eqz v2, :cond_73

    const/4 v3, 0x1

    .line 486
    :try_start_b
    iput-boolean v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    .line 488
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->tryReloadWhenSave()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 489
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mergeWhenReload()V

    const/4 v3, 0x0

    .line 490
    invoke-direct {p0, v3}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->notifyDataChanged(Ljava/lang/String;)V

    .line 493
    :cond_1a
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_4b

    .line 494
    :try_start_1d
    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mEditorList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_32

    .line 495
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_48

    .line 511
    :try_start_26
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a
    .catchall {:try_start_26 .. :try_end_29} :catchall_8a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 513
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 515
    :goto_2e
    iput-boolean v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_8a

    return-void

    .line 497
    :cond_32
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_48

    .line 499
    :try_start_33
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->obtainTotalBytes()[B

    move-result-object v3

    .line 501
    invoke-direct {p0, v3, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->saveToMappedBuffer([BZ)V

    .line 503
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->backup()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_4b

    .line 511
    :try_start_3d
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41
    .catchall {:try_start_3d .. :try_end_40} :catchall_8a

    goto :goto_45

    :catch_41
    move-exception p1

    .line 513
    :try_start_42
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 515
    :goto_45
    iput-boolean v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_8a

    goto :goto_88

    :catchall_48
    move-exception p1

    .line 497
    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p1

    .line 505
    :try_start_4c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 506
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v3, :cond_5e

    .line 507
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0xb

    const-wide/16 v5, -0x1

    invoke-interface {v3, p1, v4, v5, v6}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_67

    .line 511
    :cond_5e
    :try_start_5e
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_8a

    goto :goto_45

    :catch_62
    move-exception p1

    .line 513
    :try_start_63
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_8a

    goto :goto_45

    :catchall_67
    move-exception p1

    .line 511
    :try_start_68
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_8a

    goto :goto_70

    :catch_6c
    move-exception v2

    .line 513
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 515
    :goto_70
    iput-boolean v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    throw p1

    .line 518
    :cond_73
    iget v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mCurTryTime:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mCurTryTime:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_88

    .line 519
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$3;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Z)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    :cond_88
    :goto_88
    monitor-exit v0

    return-void

    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_6d .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method private saveToMappedBuffer([BZ)V
    .registers 6

    .line 622
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_3
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 624
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v1, p1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferPut(Ljava/nio/MappedByteBuffer;[B)V

    if-eqz p2, :cond_15

    .line 626
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 628
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private startLoadFromDisk(Z)V
    .registers 3

    .line 761
    monitor-enter p0

    const/4 v0, 0x0

    .line 762
    :try_start_2
    iput-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mLoaded:Z

    .line 763
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_16

    .line 765
    new-instance v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$5;

    invoke-direct {v0, p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$5;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V

    if-eqz p1, :cond_10

    .line 774
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 776
    :cond_10
    sget-object p1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->sCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_16
    move-exception p1

    .line 763
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private tryReload()V
    .registers 6

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadStartTime:J

    .line 466
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mTryReloadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method private tryReloadWhenSave()Z
    .registers 3

    .line 472
    invoke-virtual {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getModifyID()I

    move-result v0

    if-lez v0, :cond_f

    .line 473
    iget v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyID:I

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    .line 474
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->load(Z)V

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final checkTypeValid(B)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_12

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    if-eq p1, v0, :cond_12

    const/4 v1, 0x3

    if-eq p1, v1, :cond_12

    const/4 v1, 0x5

    if-ne p1, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x0

    return p1

    :cond_12
    :goto_12
    return v0
.end method

.method public final contains(Ljava/lang/String;)Z
    .registers 4

    .line 245
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 246
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 247
    :try_start_6
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_e
    move-exception p1

    .line 248
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 253
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 254
    new-instance v0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$EditorImpl;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 153
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 154
    :try_start_6
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    .line 155
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 8

    .line 229
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 230
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 232
    :try_start_6
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    .line 233
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_14} :catch_18
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    :cond_14
    :try_start_14
    monitor-exit v0

    return p2

    :catchall_16
    move-exception p1

    goto :goto_50

    :catch_18
    move-exception v1

    .line 235
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_4e

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_4b

    :cond_49
    const-wide/16 v3, 0x0

    :goto_4b
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 238
    :cond_4e
    monitor-exit v0

    return p2

    .line 240
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_16

    throw p1
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .registers 8

    .line 213
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 214
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 216
    :try_start_6
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_14

    .line 217
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_14} :catch_18
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    :cond_14
    :try_start_14
    monitor-exit v0

    return p2

    :catchall_16
    move-exception p1

    goto :goto_50

    :catch_18
    move-exception v1

    .line 219
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_4e

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_4b

    :cond_49
    const-wide/16 v3, 0x0

    :goto_4b
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 222
    :cond_4e
    monitor-exit v0

    return p2

    .line 224
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_16

    throw p1
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 8

    .line 181
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 182
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 184
    :try_start_6
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_14} :catch_18
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    :cond_14
    :try_start_14
    monitor-exit v0

    return p2

    :catchall_16
    move-exception p1

    goto :goto_50

    :catch_18
    move-exception v1

    .line 187
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_4e

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_4b

    :cond_49
    const-wide/16 v3, 0x0

    :goto_4b
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 190
    :cond_4e
    monitor-exit v0

    return p2

    .line 192
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_16

    throw p1
.end method

.method public final getLong(Ljava/lang/String;J)J
    .registers 9

    .line 197
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 198
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 200
    :try_start_6
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 201
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_14} :catch_18
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    :cond_14
    :try_start_14
    monitor-exit v0

    return-wide p2

    :catchall_16
    move-exception p1

    goto :goto_50

    :catch_18
    move-exception v1

    .line 203
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_4e

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_49

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_4b

    :cond_49
    const-wide/16 v3, 0x0

    :goto_4b
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 206
    :cond_4e
    monitor-exit v0

    return-wide p2

    .line 208
    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_16

    throw p1
.end method

.method final getModifyID()I
    .registers 8

    .line 735
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 739
    :cond_6
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_9
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 742
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-direct {p0, v3, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->safeBufferGet(Ljava/nio/MappedByteBuffer;[B)Z

    .line 743
    invoke-static {v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$ByteIntUtils;->bytesToInt([B)I

    move-result v3

    .line 745
    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 746
    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->get()B

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_32

    .line 747
    invoke-direct {p0, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->getMaskByte([B)B

    move-result v2

    if-ne v4, v2, :cond_34

    :cond_32
    if-gez v3, :cond_5c

    .line 748
    :cond_34
    iget v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mModifyErrorCnt:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5a

    .line 750
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_5a

    .line 751
    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v5, :cond_55

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_57

    :cond_55
    const-wide/16 v5, 0x0

    :goto_57
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 754
    :cond_5a
    monitor-exit v0

    return v1

    .line 756
    :cond_5c
    monitor-exit v0

    return v3

    :catchall_5e
    move-exception v1

    .line 757
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_9 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 160
    invoke-direct {p0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->awaitLoadedLocked()V

    .line 161
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 163
    :try_start_6
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_e} :catch_15
    .catchall {:try_start_6 .. :try_end_e} :catchall_13

    if-eqz v1, :cond_11

    move-object p2, v1

    .line 164
    :cond_11
    :try_start_11
    monitor-exit v0

    return-object p2

    :catchall_13
    move-exception p1

    goto :goto_4d

    :catch_15
    move-exception v1

    .line 166
    iget-object v2, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    if-eqz v2, :cond_4b

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFile:Ljava/io/File;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_48

    :cond_46
    const-wide/16 v3, 0x0

    :goto_48
    invoke-interface {v2, p1, v1, v3, v4}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;->onError(Ljava/lang/String;IJ)V

    .line 169
    :cond_4b
    monitor-exit v0

    return-object p2

    .line 171
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_13

    throw p1
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "putStringSet is not supported!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onDestroy()V
    .registers 3

    .line 1356
    iget-boolean v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mIsSaving:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x533e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    const/4 v0, 0x0

    .line 1357
    invoke-direct {p0, v0}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V

    :cond_12
    return-void
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 5

    if-eqz p1, :cond_3e

    .line 260
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 261
    :try_start_5
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3b

    if-nez p1, :cond_2d

    .line 264
    :try_start_e
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_1f
    .catchall {:try_start_e .. :try_end_1e} :catchall_3b

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 269
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    :cond_23
    :goto_23
    new-instance p1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mBackupFilePath:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v1, v2}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;-><init>(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    .line 273
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_3b

    .line 276
    sget-object p1, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitorSyncObj:Ljava/lang/Object;

    monitor-enter p1

    .line 277
    :try_start_31
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 278
    monitor-exit p1

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw v0

    :catchall_3b
    move-exception p1

    .line 273
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1

    :cond_3e
    return-void
.end method

.method public final setSharedPreferenceErrorListener(Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;)V
    .registers 2

    .line 924
    iput-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mErrorListener:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$OnSharedPreferenceErrorListener;

    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4

    if-eqz p1, :cond_20

    .line 285
    iget-object v0, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 286
    :try_start_5
    iget-object v1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1b

    .line 288
    iget-object p1, p0, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl;->mFileMonitor:Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesNewImpl$FileMonitor;

    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    .line 290
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p1

    :cond_20
    return-void
.end method
