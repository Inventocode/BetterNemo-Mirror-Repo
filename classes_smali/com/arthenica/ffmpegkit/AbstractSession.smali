.class public abstract Lcom/arthenica/ffmpegkit/AbstractSession;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lcom/arthenica/ffmpegkit/Session;


# static fields
.field protected static final sessionIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final arguments:[Ljava/lang/String;

.field protected final createTime:Ljava/util/Date;

.field protected endTime:Ljava/util/Date;

.field protected failStackTrace:Ljava/lang/String;

.field protected final logCallback:Lcom/arthenica/ffmpegkit/LogCallback;

.field protected final logRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field protected final logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Log;",
            ">;"
        }
    .end annotation
.end field

.field protected final logsLock:Ljava/lang/Object;

.field protected returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

.field protected final sessionId:J

.field protected startTime:Ljava/util/Date;

.field protected state:Lcom/arthenica/ffmpegkit/SessionState;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V
    .registers 6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget-object v0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    .line 122
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 123
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->createTime:Ljava/util/Date;

    const/4 p2, 0x0

    .line 124
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->startTime:Ljava/util/Date;

    .line 125
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    .line 126
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->arguments:[Ljava/lang/String;

    .line 127
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logs:Ljava/util/List;

    .line 128
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logsLock:Ljava/lang/Object;

    .line 130
    sget-object p1, Lcom/arthenica/ffmpegkit/SessionState;->CREATED:Lcom/arthenica/ffmpegkit/SessionState;

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 131
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 132
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->failStackTrace:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 135
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->addSession(Lcom/arthenica/ffmpegkit/Session;)V

    return-void
.end method


# virtual methods
.method public addLog(Lcom/arthenica/ffmpegkit/Log;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 341
    sget-object p1, Lcom/arthenica/ffmpegkit/SessionState;->COMPLETED:Lcom/arthenica/ffmpegkit/SessionState;

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 342
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    return-void
.end method

.method fail(Ljava/lang/Exception;)V
    .registers 2

    .line 351
    invoke-static {p1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->failStackTrace:Ljava/lang/String;

    .line 352
    sget-object p1, Lcom/arthenica/ffmpegkit/SessionState;->FAILED:Lcom/arthenica/ffmpegkit/SessionState;

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 353
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    return-void
.end method

.method public getArguments()[Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->arguments:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    return-object v0
.end method

.method public getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    return-object v0
.end method

.method public getLogsAsString()Ljava/lang/String;
    .registers 5

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_8
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arthenica/ffmpegkit/Log;

    .line 243
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 245
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_28

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_28
    move-exception v0

    .line 245
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public getSessionId()J
    .registers 3

    .line 145
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    return-wide v0
.end method

.method startRunning()V
    .registers 2

    .line 330
    sget-object v0, Lcom/arthenica/ffmpegkit/SessionState;->RUNNING:Lcom/arthenica/ffmpegkit/SessionState;

    iput-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 331
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->startTime:Ljava/util/Date;

    return-void
.end method
