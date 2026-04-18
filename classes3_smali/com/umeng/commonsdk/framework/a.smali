.class Lcom/umeng/commonsdk/framework/a;
.super Ljava/lang/Object;
.source "UMNetWorkSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/framework/a$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Landroid/os/Handler; = null

.field private static final d:I = 0xc8

.field private static final e:I = 0x111

.field private static final f:I = 0x112

.field private static final g:I = 0x200

.field private static final h:I = 0x301

.field private static i:Lcom/umeng/commonsdk/framework/a$a; = null

.field private static j:Landroid/net/ConnectivityManager; = null

.field private static k:Landroid/net/NetworkInfo; = null

.field private static l:Landroid/content/IntentFilter; = null

.field private static m:Z = false

.field private static n:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/umeng/commonsdk/framework/UMSenderStateNotify;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/lang/Object; = null

.field private static p:Ljava/util/concurrent/locks/ReentrantLock; = null

.field private static final q:Ljava/lang/String; = "report_policy"

.field private static final r:Ljava/lang/String; = "report_interval"

.field private static s:Z = false

.field private static final t:I = 0xf

.field private static final u:I = 0x3

.field private static final v:I = 0x5a

.field private static w:I

.field private static x:Ljava/lang/Object;

.field private static y:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/a;->o:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/a;->p:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/umeng/commonsdk/framework/a;->s:Z

    const/16 v0, 0xf

    .line 84
    sput v0, Lcom/umeng/commonsdk/framework/a;->w:I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/a;->x:Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/umeng/commonsdk/framework/a$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/a$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/a;->y:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/umeng/commonsdk/framework/a;->j:Landroid/net/ConnectivityManager;

    .line 232
    sput-object p2, Lcom/umeng/commonsdk/framework/a;->c:Landroid/os/Handler;

    .line 234
    :try_start_13
    sget-object p2, Lcom/umeng/commonsdk/framework/a;->a:Landroid/os/HandlerThread;

    if-nez p2, :cond_8a

    .line 236
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "NetWorkSender"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/a;->a:Landroid/os/HandlerThread;

    .line 237
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 238
    sget-object p2, Lcom/umeng/commonsdk/framework/a;->i:Lcom/umeng/commonsdk/framework/a$a;

    if-nez p2, :cond_3a

    .line 239
    new-instance p2, Lcom/umeng/commonsdk/framework/a$a;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/umeng/commonsdk/framework/a$a;-><init>(Ljava/lang/String;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/a;->i:Lcom/umeng/commonsdk/framework/a$a;

    .line 240
    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    const-string p2, "--->>> FileMonitor has already started!"

    .line 241
    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    :cond_3a
    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 244
    invoke-static {v0, p2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 246
    sget-object p2, Lcom/umeng/commonsdk/framework/a;->j:Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_5f

    .line 247
    sget-object p2, Lcom/umeng/commonsdk/framework/a;->l:Landroid/content/IntentFilter;

    if-nez p2, :cond_5f

    .line 248
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    sput-object p2, Lcom/umeng/commonsdk/framework/a;->l:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 249
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    sget-object p2, Lcom/umeng/commonsdk/framework/a;->y:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_5f

    .line 251
    sget-object v1, Lcom/umeng/commonsdk/framework/a;->l:Landroid/content/IntentFilter;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    :cond_5f
    invoke-direct {p0}, Lcom/umeng/commonsdk/framework/a;->n()V

    .line 260
    sget-object p2, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    if-nez p2, :cond_73

    .line 261
    new-instance p2, Lcom/umeng/commonsdk/framework/a$2;

    sget-object v0, Lcom/umeng/commonsdk/framework/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/umeng/commonsdk/framework/a$2;-><init>(Lcom/umeng/commonsdk/framework/a;Landroid/os/Looper;)V

    sput-object p2, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    .line 304
    :cond_73
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    const-string v0, "report_policy"

    invoke-virtual {p2, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 305
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    const-string v0, "report_interval"

    invoke-virtual {p2, v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    :try_end_85
    .catchall {:try_start_13 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception p2

    .line 308
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method static synthetic a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 1

    .line 33
    sput-object p0, Lcom/umeng/commonsdk/framework/a;->k:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static synthetic a(I)V
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/a;->c(I)V

    return-void
.end method

.method private static a(II)V
    .registers 5

    .line 451
    sget-boolean v0, Lcom/umeng/commonsdk/framework/a;->m:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_19

    .line 452
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 454
    iput p0, v0, Landroid/os/Message;->what:I

    .line 455
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_19
    return-void
.end method

.method private static a(IJ)V
    .registers 5

    .line 414
    sget-boolean v0, Lcom/umeng/commonsdk/framework/a;->m:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_29

    .line 415
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 416
    iput p0, v0, Landroid/os/Message;->what:I

    .line 417
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> sendMsgDelayed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MobclickRT"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/framework/UMSenderStateNotify;)V
    .registers 4

    .line 88
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    :cond_e
    if-eqz p0, :cond_3b

    const/4 v1, 0x0

    .line 95
    :goto_11
    sget-object v2, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 96
    sget-object v2, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_2a

    const-string p0, "MobclickRT"

    const-string v1, "--->>> addConnStateObserver: input item has exist."

    .line 97
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_33

    .line 98
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3d

    return-void

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 101
    :cond_2d
    :try_start_2d
    sget-object v1, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    goto :goto_3b

    :catchall_33
    move-exception p0

    .line 104
    :try_start_34
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 106
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public static a()Z
    .registers 2

    .line 110
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/framework/a;->s:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 33
    sput-boolean p0, Lcom/umeng/commonsdk/framework/a;->m:Z

    return p0
.end method

.method public static b()I
    .registers 2

    .line 116
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    sget v1, Lcom/umeng/commonsdk/framework/a;->w:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static b(I)V
    .registers 2

    .line 388
    sget-boolean v0, Lcom/umeng/commonsdk/framework/a;->m:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 389
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 390
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 391
    iput p0, v0, Landroid/os/Message;->what:I

    .line 392
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    return-void
.end method

.method public static c()V
    .registers 0

    return-void
.end method

.method private static c(I)V
    .registers 2

    .line 402
    sget-boolean v0, Lcom/umeng/commonsdk/framework/a;->m:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 403
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 404
    iput p0, v0, Landroid/os/Message;->what:I

    .line 405
    sget-object p0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public static d()V
    .registers 2

    .line 426
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x111

    .line 429
    :try_start_a
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/a;->b(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 431
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1a

    :catchall_13
    move-exception v0

    sget-object v1, Lcom/umeng/commonsdk/framework/a;->p:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static e()V
    .registers 2

    const/16 v0, 0x112

    const/16 v1, 0xbb8

    .line 461
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/a;->a(II)V

    return-void
.end method

.method static synthetic f()Landroid/net/ConnectivityManager;
    .registers 1

    .line 33
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->j:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic g()Landroid/net/NetworkInfo;
    .registers 1

    .line 33
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->k:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/Object;
    .registers 1

    .line 33
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i()Ljava/util/ArrayList;
    .registers 1

    .line 33
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 33
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->p:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic k()V
    .registers 0

    .line 33
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->r()V

    return-void
.end method

.method static synthetic l()V
    .registers 0

    .line 33
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->q()V

    return-void
.end method

.method static synthetic m()V
    .registers 0

    .line 33
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->p()V

    return-void
.end method

.method private n()V
    .registers 7

    .line 122
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "report_policy"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "MobclickRT"

    const-string v2, "--->>> switch to report_policy 11"

    .line 126
    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 127
    sput-boolean v1, Lcom/umeng/commonsdk/framework/a;->s:Z

    const/16 v1, 0xf

    .line 128
    sput v1, Lcom/umeng/commonsdk/framework/a;->w:I

    .line 129
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report_interval"

    const-string v4, "15"

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "MobclickRT"

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> set report_interval value to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5c

    const/16 v3, 0x5a

    if-le v2, v3, :cond_57

    goto :goto_5c

    :cond_57
    mul-int/lit16 v2, v2, 0x3e8

    .line 135
    sput v2, Lcom/umeng/commonsdk/framework/a;->w:I

    goto :goto_62

    .line 133
    :cond_5c
    :goto_5c
    sput v1, Lcom/umeng/commonsdk/framework/a;->w:I

    goto :goto_62

    :cond_5f
    const/4 v1, 0x0

    .line 138
    sput-boolean v1, Lcom/umeng/commonsdk/framework/a;->s:Z

    .line 140
    :goto_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private static o()V
    .registers 2

    .line 316
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->a:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 317
    sput-object v1, Lcom/umeng/commonsdk/framework/a;->a:Landroid/os/HandlerThread;

    .line 319
    :cond_7
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 320
    sput-object v1, Lcom/umeng/commonsdk/framework/a;->b:Landroid/os/Handler;

    .line 322
    :cond_d
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 323
    sput-object v1, Lcom/umeng/commonsdk/framework/a;->c:Landroid/os/Handler;

    :cond_13
    return-void
.end method

.method private static p()V
    .registers 4

    .line 329
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    .line 331
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1e

    .line 334
    sget-object v3, Lcom/umeng/commonsdk/framework/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;

    invoke-interface {v3}, Lcom/umeng/commonsdk/framework/UMSenderStateNotify;->onSenderIdle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 338
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static q()V
    .registers 0

    return-void
.end method

.method private static r()V
    .registers 7

    const-string v0, "]."

    const-string v1, "--->>> handleProcessNext: Enter..."

    .line 498
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 501
    sget-boolean v1, Lcom/umeng/commonsdk/framework/a;->m:Z

    if-nez v1, :cond_c

    return-void

    .line 504
    :cond_c
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 506
    :try_start_10
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_8f

    const-string v2, "--->>> The envelope file exists."

    .line 507
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 508
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_2b

    const-string v2, "--->>> Number of envelope files is greater than 200, remove old files first."

    .line 509
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 510
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeRedundantEnvelopeFiles(Landroid/content/Context;I)V

    .line 513
    :cond_2b
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 515
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> Ready to send envelope file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    const-string v4, "MobclickRT"

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> send envelope file [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v0, Lcom/umeng/commonsdk/statistics/c;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/c;-><init>(Landroid/content/Context;)V

    .line 523
    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/c;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v0, "--->>> Send envelope file success, delete it."

    .line 525
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 527
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeEnvelopeFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "--->>> Failed to delete already processed file. We try again after delete failed."

    .line 528
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 529
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->removeEnvelopeFile(Ljava/io/File;)Z

    :cond_83
    const/16 v0, 0x111

    .line 538
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/a;->c(I)V

    return-void

    :cond_89
    const-string v0, "--->>> Send envelope file failed, abandon and wait next trigger!"

    .line 534
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    return-void

    .line 549
    :cond_8f
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->e()V
    :try_end_92
    .catchall {:try_start_10 .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception v0

    .line 551
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_97
    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 147
    sget-object v0, Lcom/umeng/commonsdk/framework/a;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "report_policy"

    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "11"

    .line 149
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "MobclickRT"

    const-string v2, "--->>> switch to report_policy 11"

    .line 151
    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 152
    sput-boolean v1, Lcom/umeng/commonsdk/framework/a;->s:Z

    goto :goto_21

    :cond_1e
    const/4 v1, 0x0

    .line 156
    sput-boolean v1, Lcom/umeng/commonsdk/framework/a;->s:Z

    :cond_21
    :goto_21
    const-string v1, "report_interval"

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "MobclickRT"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> set report_interval value to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    if-lt p1, p2, :cond_54

    const/16 p2, 0x5a

    if-le p1, p2, :cond_4f

    goto :goto_54

    :cond_4f
    mul-int/lit16 p1, p1, 0x3e8

    .line 166
    sput p1, Lcom/umeng/commonsdk/framework/a;->w:I

    goto :goto_58

    :cond_54
    :goto_54
    const/16 p1, 0x3a98

    .line 164
    sput p1, Lcom/umeng/commonsdk/framework/a;->w:I

    :goto_58
    const-string p1, "MobclickRT"

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> really set report_interval value to: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/umeng/commonsdk/framework/a;->w:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw p1
.end method
