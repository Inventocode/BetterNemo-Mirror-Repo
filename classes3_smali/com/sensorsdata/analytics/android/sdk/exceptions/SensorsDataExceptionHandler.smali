.class public Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;
.super Ljava/lang/Object;
.source "SensorsDataExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;
    }
.end annotation


# static fields
.field private static final SLEEP_TIMEOUT_MS:I = 0x190

.field private static isTrackCrash:Z

.field private static final sExceptionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;


# instance fields
.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->sExceptionListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->isTrackCrash:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 43
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;)V
    .registers 3

    if-eqz p0, :cond_d

    .line 53
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->sExceptionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static enableAppCrash()V
    .registers 1

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->isTrackCrash:Z

    return-void
.end method

.method public static declared-synchronized init()V
    .registers 2

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->sInstance:Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->sInstance:Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 50
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private killProcessAndExit()V
    .registers 2

    .line 126
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    .line 127
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public static removeExceptionListener(Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;)V
    .registers 3

    if-eqz p0, :cond_d

    .line 59
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->sExceptionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    .line 71
    :try_start_0
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->isTrackCrash:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_7d

    if-eqz v0, :cond_57

    .line 73
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_53

    .line 75
    :try_start_9
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 76
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 77
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    :goto_1a
    if-eqz v3, :cond_24

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 81
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_1a

    .line 83
    :cond_24
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_crashed_reason"

    .line 85
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v1

    .line 87
    :try_start_32
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 89
    :goto_35
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v1

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    .line 96
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_48} :catch_53

    const-wide/16 v0, 0x190

    .line 98
    :try_start_4a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_53

    goto :goto_57

    :catch_4e
    move-exception v0

    .line 100
    :try_start_4f
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v0

    .line 103
    :try_start_54
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 107
    :cond_57
    :goto_57
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->sExceptionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_69} :catch_7d

    .line 109
    :try_start_69
    invoke-interface {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_5d

    :catch_6d
    move-exception v1

    .line 111
    :try_start_6e
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_5d

    .line 114
    :cond_72
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7a

    .line 115
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_7d

    .line 117
    :cond_7a
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->killProcessAndExit()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7d} :catch_7d

    :catch_7d
    :goto_7d
    return-void
.end method
