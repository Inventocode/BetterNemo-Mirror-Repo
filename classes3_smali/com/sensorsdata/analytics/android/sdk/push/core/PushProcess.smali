.class public Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;
.super Ljava/lang/Object;
.source "PushProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "sensors.push"

.field private static final GT_PUSH_MSG:I = 0x1

.field private static INSTANCE:Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess; = null

.field private static final SA_PUSH_ID:Ljava/lang/String; = "SA_PUSH_ID"

.field private static final TAG:Ljava/lang/String; = "SA.NotificationProcessor"


# instance fields
.field private final customizeEnable:Z

.field private final mGeTuiPushInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIntentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingIntent2Ids:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPushFile:Ljava/io/File;

.field private final mPushHandler:Landroid/os/Handler;

.field private final mSAIntentId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final myPid:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "sensors.push"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushFile:Ljava/io/File;

    .line 70
    :cond_1e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mSAIntentId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->myPid:I

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->customizeEnable:Z

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPendingIntent2Ids:Ljava/util/WeakHashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SA.PushThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;)Ljava/util/Map;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;Landroid/app/PendingIntent;Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->checkAndStoreNotificationInfo(Landroid/app/PendingIntent;Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getNotificationInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;

    move-result-object p0

    return-object p0
.end method

.method private checkAndStoreNotificationInfo(Landroid/app/PendingIntent;Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;)V
    .registers 4

    if-nez p1, :cond_a

    const-string p1, "SA.NotificationProcessor"

    const-string p2, "pendingIntent is null"

    .line 209
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPendingIntent2Ids:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1c

    .line 215
    invoke-direct {p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->storeNotificationInfo(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 218
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;
    .registers 2

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    if-nez v1, :cond_e

    .line 101
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    .line 103
    :cond_e
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNotificationInfo(Landroid/app/Notification;)Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;
    .registers 7

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_45

    .line 266
    :try_start_7
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v0, p1, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_41

    :try_start_1e
    const-string v1, "SA.NotificationProcessor"

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationInfo: title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "content = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3c} :catch_3e

    move-object v1, v2

    goto :goto_45

    :catch_3e
    move-exception p1

    move-object v1, v2

    goto :goto_42

    :catch_41
    move-exception p1

    .line 271
    :goto_42
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_45
    :goto_45
    return-object v1
.end method

.method private getNotificationInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;
    .registers 8

    const/4 v0, 0x0

    .line 279
    :try_start_1
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->initAndCleanDir()V

    .line 280
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushFile:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_12

    return-object v0

    .line 284
    :cond_12
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object v0

    .line 288
    :cond_1d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v1

    const-string v2, "sensors_analytics_module_encrypt"

    const-string v3, "decryptAES"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    move-object v1, p1

    :cond_38
    const-string v2, "SA.NotificationProcessor"

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache local notification info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;->fromJson(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;

    move-result-object v1

    if-nez v1, :cond_58

    .line 294
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;->fromJson(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;

    move-result-object v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_59

    :cond_58
    return-object v1

    :catch_59
    move-exception p1

    .line 296
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private declared-synchronized initAndCleanDir()V
    .registers 12

    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 245
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 247
    :cond_e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 250
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_4f

    aget-object v5, v0, v4

    .line 251
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v10, v6, v8

    if-lez v10, :cond_46

    const-string v6, "SA.NotificationProcessor"

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clean file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_4b
    .catchall {:try_start_1 .. :try_end_46} :catchall_49

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :catchall_49
    move-exception v0

    goto :goto_51

    :catch_4b
    move-exception v0

    .line 258
    :try_start_4c
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_49

    .line 260
    :cond_4f
    monitor-exit p0

    return-void

    :goto_51
    monitor-exit p0

    throw v0
.end method

.method private isHooked(Landroid/content/Intent;)Z
    .registers 3

    :try_start_0
    const-string v0, "SA_PUSH_ID"

    .line 200
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 202
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method private storeNotificationInfo(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;Ljava/lang/String;)V
    .registers 8

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storeNotificationInfo: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.NotificationProcessor"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_1e
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->initAndCleanDir()V

    .line 226
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushFile:Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_36

    const-string p2, "toFile exists"

    .line 228
    invoke-static {v1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 231
    :cond_36
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object p2

    const-string v1, "sensors_analytics_module_encrypt"

    const-string v2, "encryptAES"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_56

    :cond_55
    move-object p1, p2

    .line 236
    :goto_56
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/FileUtils;->writeToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p1

    .line 238
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_5e
    return-void
.end method

.method private trackCustomizeClick(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "SA_PUSH_ID"

    .line 302
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->customizeEnable:Z

    if-nez v1, :cond_7

    return-void

    .line 306
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->isHooked(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, "SA.NotificationProcessor"

    const-string v0, "intent tag is null"

    .line 310
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_22
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$3;

    invoke-direct {v0, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$3;-><init>(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    .line 328
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public hookIntent(Landroid/content/Intent;)V
    .registers 5

    .line 107
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->customizeEnable:Z

    if-eqz v0, :cond_30

    .line 109
    :try_start_4
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->isHooked(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "SA_PUSH_ID"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->myPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mSAIntentId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 113
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .registers 4

    .line 119
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->customizeEnable:Z

    if-eqz v0, :cond_f

    const-string v0, "SA_PUSH_ID"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPendingIntent2Ids:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public onNotificationClick(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 130
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mLastIntentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 131
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_2e

    .line 132
    :cond_d
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mLastIntentRef:Ljava/lang/ref/WeakReference;

    .line 133
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->customizeEnable:Z

    if-eqz v0, :cond_1b

    .line 134
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->trackCustomizeClick(Landroid/content/Intent;)V

    .line 137
    :cond_1b
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_22

    .line 138
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackJPushOpenActivity(Landroid/content/Intent;)V

    :cond_22
    const-string p1, "SA.NotificationProcessor"

    const-string p2, "onNotificationClick"

    .line 140
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 143
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onNotify(Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 7

    .line 148
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->customizeEnable:Z

    if-eqz v0, :cond_3b

    .line 150
    :try_start_4
    iget-object v0, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3b

    const-string v0, "SA.NotificationProcessor"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify, tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getNotificationInfo(Landroid/app/Notification;)Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 154
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;Landroid/app/Notification;Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 163
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public trackGTClickDelayed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 170
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 171
    iput v1, v0, Landroid/os/Message;->what:I

    .line 172
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p2, p3, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p2, "SA.NotificationProcessor"

    .line 175
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMessageDelayed,msgId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p1

    .line 177
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_39
    return-void
.end method

.method public trackReceiveMessageData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "SA.NotificationProcessor"

    .line 183
    :try_start_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 184
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mPushHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "remove GeTui Push Message"

    .line 185
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;

    if-eqz v1, :cond_30

    .line 188
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;->content:Ljava/lang/String;

    iget-wide v4, v1, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess$NotificationInfo;->time:J

    invoke-static {v2, v3, p1, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackGeTuiNotificationClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    :cond_30
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onGeTuiReceiveMessage:msg id : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p1

    .line 194
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4e
    :goto_4e
    return-void
.end method
