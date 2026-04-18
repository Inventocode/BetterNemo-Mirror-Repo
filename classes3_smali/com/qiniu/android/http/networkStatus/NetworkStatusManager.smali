.class public Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;
.super Ljava/lang/Object;
.source "NetworkStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
    }
.end annotation


# static fields
.field private static kNetworkStatusDiskKey:Ljava/lang/String; = "NetworkStatus:v1.0.0"

.field private static networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;


# instance fields
.field private hasInit:Z

.field private isHandlingNetworkInfoOfDisk:Z

.field private networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private recorder:Lcom/qiniu/android/storage/Recorder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->hasInit:Z

    .line 19
    iput-boolean v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->isHandlingNetworkInfoOfDisk:Z

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;)V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->recordNetworkStatusInfo()V

    return-void
.end method

.method static synthetic access$102(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;Z)Z
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->isHandlingNetworkInfoOfDisk:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;)V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->recoverNetworkStatusFromDisk()V

    return-void
.end method

.method private asyncRecordNetworkStatusInfo()V
    .registers 2

    .line 68
    monitor-enter p0

    .line 69
    :try_start_1
    iget-boolean v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->isHandlingNetworkInfoOfDisk:Z

    if-eqz v0, :cond_7

    .line 70
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->isHandlingNetworkInfoOfDisk:Z

    .line 73
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    .line 74
    new-instance v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$1;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$1;-><init>(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void

    :catchall_14
    move-exception v0

    .line 73
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private asyncRecoverNetworkStatusFromDisk()V
    .registers 2

    .line 84
    monitor-enter p0

    .line 85
    :try_start_1
    iget-boolean v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->isHandlingNetworkInfoOfDisk:Z

    if-eqz v0, :cond_7

    .line 86
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->isHandlingNetworkInfoOfDisk:Z

    .line 89
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    .line 90
    new-instance v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$2;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$2;-><init>(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void

    :catchall_14
    move-exception v0

    .line 89
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public static getInstance()Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;
    .registers 1

    .line 25
    sget-object v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    invoke-virtual {v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->initData()V

    .line 26
    sget-object v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    return-object v0
.end method

.method public static getNetworkStatusType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 38
    invoke-static {p1, p0}, Lcom/qiniu/android/utils/Utils;->getIpType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recordNetworkStatusInfo()V
    .registers 5

    .line 101
    invoke-direct {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->setupRecorder()V

    .line 103
    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_c

    goto :goto_4a

    .line 107
    :cond_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    if-eqz v3, :cond_1b

    .line 112
    :try_start_31
    invoke-static {v3}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->access$300(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_1b

    :catch_39
    nop

    goto :goto_1b

    .line 117
    :cond_3b
    iget-object v1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->recorder:Lcom/qiniu/android/storage/Recorder;

    sget-object v2, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->kNetworkStatusDiskKey:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/qiniu/android/storage/Recorder;->set(Ljava/lang/String;[B)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method private recoverNetworkStatusFromDisk()V
    .registers 6

    .line 122
    invoke-direct {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->setupRecorder()V

    .line 124
    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_c

    goto :goto_3e

    .line 128
    :cond_c
    sget-object v1, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->kNetworkStatusDiskKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qiniu/android/storage/Recorder;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    :try_start_12
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_3e

    .line 136
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    :try_start_2c
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 140
    invoke-static {v3}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->access$400(Lorg/json/JSONObject;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 142
    iget-object v4, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_3b} :catch_3c

    goto :goto_20

    :catch_3c
    nop

    goto :goto_20

    :catch_3e
    :cond_3e
    :goto_3e
    return-void
.end method

.method private declared-synchronized setupRecorder()V
    .registers 4

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->recorder:Lcom/qiniu/android/storage/Recorder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_21

    .line 153
    :try_start_5
    new-instance v0, Lcom/qiniu/android/storage/FileRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->sdkDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/NetworkInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qiniu/android/storage/FileRecorder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->recorder:Lcom/qiniu/android/storage/Recorder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    .line 157
    :catch_21
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getNetworkStatus(Ljava/lang/String;)Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;
    .registers 3

    if-eqz p1, :cond_19

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_19

    .line 45
    :cond_9
    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    if-nez p1, :cond_18

    .line 47
    new-instance p1, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    invoke-direct {p1}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;-><init>()V

    :cond_18
    return-object p1

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized initData()V
    .registers 3

    monitor-enter p0

    .line 30
    :try_start_1
    iget-boolean v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->hasInit:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    .line 31
    monitor-exit p0

    return-void

    .line 33
    :cond_7
    :try_start_7
    sget-object v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    sget-object v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusManager:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    invoke-direct {v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->asyncRecoverNetworkStatusFromDisk()V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_17

    .line 35
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateNetworkStatus(Ljava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_23

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_23

    .line 56
    :cond_9
    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    if-nez v0, :cond_1d

    .line 58
    new-instance v0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;

    invoke-direct {v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->networkStatusInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1d
    invoke-virtual {v0, p2}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$NetworkStatus;->setSpeed(I)V

    .line 63
    invoke-direct {p0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->asyncRecordNetworkStatusInfo()V

    :cond_23
    :goto_23
    return-void
.end method
