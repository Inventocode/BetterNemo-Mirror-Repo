.class public Lcom/qiniu/android/http/connectCheck/ConnectChecker;
.super Ljava/lang/Object;
.source "ConnectChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;,
        Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;,
        Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;
    }
.end annotation


# static fields
.field private static executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private static singleFlight:Lcom/qiniu/android/utils/SingleFlight;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/utils/SingleFlight<",
            "Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    new-instance v0, Lcom/qiniu/android/utils/SingleFlight;

    invoke-direct {v0}, Lcom/qiniu/android/utils/SingleFlight;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->singleFlight:Lcom/qiniu/android/utils/SingleFlight;

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->checkAllHosts(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V

    return-void
.end method

.method public static check()Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;
    .registers 3

    .line 31
    new-instance v0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;-><init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;)V

    .line 33
    new-instance v1, Lcom/qiniu/android/utils/Wait;

    invoke-direct {v1}, Lcom/qiniu/android/utils/Wait;-><init>()V

    .line 34
    new-instance v2, Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;

    invoke-direct {v2, v0, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;-><init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;Lcom/qiniu/android/utils/Wait;)V

    invoke-static {v2}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->check(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V

    .line 41
    invoke-virtual {v1}, Lcom/qiniu/android/utils/Wait;->startWait()V

    .line 43
    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;->access$100(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckResult;)Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static check(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .registers 5

    .line 49
    :try_start_0
    sget-object v0, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->singleFlight:Lcom/qiniu/android/utils/SingleFlight;

    const-string v1, "connect_check"

    new-instance v2, Lcom/qiniu/android/http/connectCheck/ConnectChecker$2;

    invoke-direct {v2}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$2;-><init>()V

    new-instance v3, Lcom/qiniu/android/http/connectCheck/ConnectChecker$3;

    invoke-direct {v3, p0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$3;-><init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/qiniu/android/utils/SingleFlight;->perform(Ljava/lang/String;Lcom/qiniu/android/utils/SingleFlight$ActionHandler;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    const/4 v0, 0x0

    .line 66
    invoke-interface {p0, v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;->complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    :goto_16
    return-void
.end method

.method private static checkAllHosts(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .registers 7

    .line 71
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckURLStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 73
    invoke-interface {p0, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;->complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    return-void

    .line 77
    :cond_d
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 78
    new-instance v2, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-direct {v2, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;-><init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$1;)V

    .line 79
    array-length v1, v0

    invoke-static {v2, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$402(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;I)I

    const/4 v1, 0x0

    .line 80
    invoke-static {v2, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$502(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;I)I

    .line 81
    invoke-static {v2, v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$602(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;Z)Z

    .line 82
    array-length v3, v0

    :goto_24
    if-ge v1, v3, :cond_33

    aget-object v4, v0, v1

    .line 83
    new-instance v5, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;

    invoke-direct {v5, v2, p0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;-><init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V

    invoke-static {v4, v5}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->checkHost(Ljava/lang/String;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_33
    return-void
.end method

.method private static checkHost(Ljava/lang/String;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .registers 16

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 113
    invoke-static {}, Lcom/qiniu/android/storage/GlobalConfiguration;->getInstance()Lcom/qiniu/android/storage/GlobalConfiguration;

    move-result-object v1

    iget v7, v1, Lcom/qiniu/android/storage/GlobalConfiguration;->connectCheckTimeout:I

    .line 115
    new-instance v1, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;

    invoke-direct {v1}, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;-><init>()V

    .line 116
    invoke-virtual {v1}, Lcom/qiniu/android/http/metrics/UploadMetrics;->start()V

    .line 117
    sget-object v2, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;

    invoke-direct {v3, v0, v1, p1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$5;-><init>([ZLcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V

    int-to-long v4, v7

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 132
    new-instance v9, Lcom/qiniu/android/http/request/Request;

    const-string v4, "HEAD"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/qiniu/android/http/request/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BI)V

    .line 133
    new-instance v8, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-direct {v8}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;-><init>()V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== checkHost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 136
    new-instance v13, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;

    invoke-direct {v13, v0, p0, p1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$6;-><init>([ZLjava/lang/String;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->request(Lcom/qiniu/android/http/request/Request;ZLcom/qiniu/android/http/ProxyConfiguration;Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    return-void
.end method

.method public static isConnected(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)Z
    .registers 2

    if-eqz p0, :cond_e

    .line 26
    iget-object p0, p0, Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;->response:Lcom/qiniu/android/http/ResponseInfo;

    if-eqz p0, :cond_e

    iget p0, p0, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v0, 0x63

    if-le p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
