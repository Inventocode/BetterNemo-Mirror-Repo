.class public abstract Ljxl/common/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLogger(Ljava/lang/Class;)Ljxl/common/Logger;
    .registers 2

    .line 40
    sget-object v0, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    if-nez v0, :cond_7

    .line 42
    invoke-static {}, Ljxl/common/Logger;->initializeLogger()V

    .line 45
    :cond_7
    sget-object v0, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    invoke-virtual {v0, p0}, Ljxl/common/Logger;->getLoggerImpl(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized initializeLogger()V
    .registers 5

    const-class v0, Ljxl/common/Logger;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Ljxl/common/Logger;->logger:Ljxl/common/Logger;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_a8

    if-eqz v1, :cond_9

    .line 55
    monitor-exit v0

    return-void

    .line 58
    :cond_9
    :try_start_9
    sget-object v1, Ljxl/common/log/LoggerName;->NAME:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_a8

    :try_start_b
    const-string v2, "logger"

    .line 63
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move-object v1, v2

    .line 71
    :goto_15
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/common/Logger;

    sput-object v2, Ljxl/common/Logger;->logger:Ljxl/common/Logger;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_21} :catch_86
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_21} :catch_65
    .catch Ljava/security/AccessControlException; {:try_start_b .. :try_end_21} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_21} :catch_23
    .catchall {:try_start_b .. :try_end_21} :catchall_a8

    goto/16 :goto_a6

    .line 93
    :catch_23
    :try_start_23
    new-instance v2, Ljxl/common/log/SimpleLogger;

    invoke-direct {v2}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v2, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate logger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using default"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_a6

    .line 87
    :catch_44
    new-instance v2, Ljxl/common/log/SimpleLogger;

    invoke-direct {v2}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v2, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate logger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using default"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_a6

    .line 81
    :catch_65
    new-instance v2, Ljxl/common/log/SimpleLogger;

    invoke-direct {v2}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v2, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate logger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using default"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_a6

    .line 75
    :catch_86
    new-instance v2, Ljxl/common/log/SimpleLogger;

    invoke-direct {v2}, Ljxl/common/log/SimpleLogger;-><init>()V

    sput-object v2, Ljxl/common/Logger;->logger:Ljxl/common/Logger;

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate logger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using default"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V
    :try_end_a6
    .catchall {:try_start_23 .. :try_end_a6} :catchall_a8

    .line 97
    :goto_a6
    monitor-exit v0

    return-void

    :catchall_a8
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract error(Ljava/lang/Object;)V
.end method

.method protected abstract getLoggerImpl(Ljava/lang/Class;)Ljxl/common/Logger;
.end method

.method public setSuppressWarnings(Z)V
    .registers 2

    return-void
.end method

.method public abstract warn(Ljava/lang/Object;)V
.end method

.method public abstract warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method
