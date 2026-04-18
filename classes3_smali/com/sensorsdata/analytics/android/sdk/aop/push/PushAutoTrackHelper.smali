.class public Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;
.super Ljava/lang/Object;
.source "PushAutoTrackHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PushAutoTrackHelper"

.field private static lastPushClickTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSFData(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 682
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sf_data"

    .line 683
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    const-string p0, "SA.PushAutoTrackHelper"

    const-string v0, "get sf_data failed"

    .line 685
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method private static hookIntent(Landroid/content/Intent;)V
    .registers 2

    .line 650
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 652
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->hookIntent(Landroid/content/Intent;)V

    const-string p0, "SA.PushAutoTrackHelper"

    const-string v0, "hookIntent"

    .line 653
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 655
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method

.method public static hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 4

    .line 475
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static hookIntentGetActivityBundle(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    .line 488
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 4

    .line 547
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static hookIntentGetForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 4

    .line 597
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static hookIntentGetService(Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 4

    .line 572
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private static hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .registers 3

    .line 620
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 622
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    const-string p0, "SA.PushAutoTrackHelper"

    const-string p1, "hookPendingIntent"

    .line 623
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 625
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method

.method public static hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 5

    .line 501
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static hookPendingIntentGetActivityBundle(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    .line 463
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 5

    .line 560
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static hookPendingIntentGetForegroundService(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 5

    .line 610
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static hookPendingIntentGetService(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .registers 5

    .line 585
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static isRepeatEvent()Z
    .registers 7

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",lastPushClickTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->lastPushClickTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SA.PushAutoTrackHelper"

    invoke-static {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-wide v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->lastPushClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_32

    .line 213
    sput-wide v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->lastPushClickTime:J

    const/4 v0, 0x0

    return v0

    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method private static isTrackPushEnabled()Z
    .registers 3

    const/4 v0, 0x0

    .line 666
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    instance-of v1, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-nez v1, :cond_1c

    .line 667
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 668
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableTrackPush()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    :goto_1c
    const-string v1, "SA.PushAutoTrackHelper"

    const-string v2, "SDK or push disabled."

    .line 669
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    return v0

    :catch_24
    move-exception v1

    .line 674
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method public static onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 512
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastServiceIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private static onBroadcastServiceIntent(Landroid/content/Intent;)V
    .registers 3

    .line 635
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 637
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->onNotificationClick(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, "SA.PushAutoTrackHelper"

    const-string v0, "onBroadcastServiceIntent"

    .line 638
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 640
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    return-void
.end method

.method public static onGeTuiNotificationClicked(Ljava/lang/Object;)V
    .registers 5

    if-nez p0, :cond_a

    const-string p0, "SA.PushAutoTrackHelper"

    const-string v0, "gtNotificationMessage is null"

    .line 293
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    :try_start_11
    const-string v0, "getMessageId"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 298
    invoke-static {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "getTitle"

    new-array v3, v1, [Ljava/lang/Object;

    .line 299
    invoke-static {p0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "getContent"

    new-array v1, v1, [Ljava/lang/Object;

    .line 300
    invoke-static {p0, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 302
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 304
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    move-result-object v1

    invoke-virtual {v1, v0, v2, p0}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->trackGTClickDelayed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 307
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public static onGeTuiReceiveMessageData(Ljava/lang/Object;)V
    .registers 4

    if-nez p0, :cond_a

    const-string p0, "SA.PushAutoTrackHelper"

    const-string v0, "gtNotificationMessage is null"

    .line 318
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    :try_start_11
    const-string v0, "getPayload"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 323
    invoke-static {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "getMessageId"

    new-array v1, v1, [Ljava/lang/Object;

    .line 324
    invoke-static {p0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 326
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 327
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 328
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->trackReceiveMessageData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    .line 331
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static onNewIntent(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    .line 441
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 443
    :cond_7
    :try_start_7
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 444
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->onNotificationClick(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p0, "SA.PushAutoTrackHelper"

    const-string p1, "onNewIntent"

    .line 445
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 448
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 4

    .line 426
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 428
    :try_start_8
    invoke-static {p0, v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 430
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_10
    return-void
.end method

.method public static onNotify(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 4

    .line 409
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 411
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/push/core/PushProcess;->onNotify(Ljava/lang/String;ILandroid/app/Notification;)V

    const-string p0, "SA.PushAutoTrackHelper"

    const-string p1, "onNotify"

    .line 412
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 414
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method

.method public static onServiceStart(Landroid/app/Service;Landroid/content/Intent;I)V
    .registers 3

    .line 523
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastServiceIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static onServiceStartCommand(Landroid/app/Service;Landroid/content/Intent;II)V
    .registers 4

    .line 535
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastServiceIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static onUMengActivityMessage(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "body"

    const-string v1, "SA.PushAutoTrackHelper"

    if-nez p0, :cond_c

    const-string p0, "intent is null"

    .line 374
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 377
    :cond_c
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    .line 380
    :cond_13
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 382
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_63

    const-string v2, "extra"

    .line 385
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 386
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    .line 387
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "message_source"

    .line 388
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UMeng"

    .line 390
    invoke-static {v4, v3, v0, v5, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "onUMengActivityMessage is called, title is %s, content is %s, extras is %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v0, 0x2

    aput-object v2, v4, v0

    .line 391
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    .line 396
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public static onUMengNotificationClick(Ljava/lang/Object;)V
    .registers 8

    const-string v0, "SA.PushAutoTrackHelper"

    if-nez p0, :cond_a

    const-string p0, "UMessage is null"

    .line 342
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    :try_start_11
    const-string v1, "getRaw"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 347
    invoke-static {p0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    if-nez p0, :cond_24

    const-string p0, "onUMengNotificationClick:raw is null"

    .line 349
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    const-string v1, "body"

    .line 352
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_61

    const-string v3, "extra"

    .line 354
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "title"

    .line 355
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    .line 356
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UMeng"

    const/4 v6, 0x0

    .line 358
    invoke-static {v4, v3, v1, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "onUMengNotificationClick is called, title is %s, content is %s, extras is %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object p0, v5, v1

    .line 359
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 363
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public static trackGeTuiNotificationClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    const-string v3, "GeTui"

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    .line 201
    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static trackJPushAppOpenNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 232
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    const-string v2, "JPush"

    aput-object v2, v0, v1

    const-string v1, "trackJPushAppOpenNotification is called, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s"

    .line 234
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.PushAutoTrackHelper"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {p0, p1, p2, v2, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackJPushOpenActivity(Landroid/content/Intent;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    .line 60
    :cond_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 64
    :cond_a
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 65
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    .line 69
    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 70
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "JMessageExtra"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackJPushOpenActivity is called, Intent data is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SA.PushAutoTrackHelper"

    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4e

    return-void

    .line 77
    :cond_4e
    :try_start_4e
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_55

    move-object v1, p0

    goto :goto_5a

    :catch_55
    :try_start_55
    const-string p0, "Failed to construct JSON"

    .line 79
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    if-eqz v1, :cond_b3

    const-string p0, "n_title"

    .line 82
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "n_content"

    .line 83
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "n_extras"

    .line 84
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rom_type"

    .line 85
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    .line 86
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/push/utils/PushUtils;->getJPushSDKName(B)Ljava/lang/String;

    move-result-object v1

    const-string v4, "trackJPushOpenActivity is called, title is %s, content is %s, extras is %s, appPushChannel is %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    .line 87
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a4

    goto :goto_ae

    .line 92
    :cond_a4
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JPush"

    .line 93
    invoke-static {v2, p0, v0, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_ad} :catch_af

    goto :goto_b3

    :cond_ae
    :goto_ae
    return-void

    :catch_af
    move-exception p0

    .line 100
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public static trackMeizuAppOpenNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "JMessageExtra"

    .line 252
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    const-string v3, "Meizu"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p3, v1, v2

    const-string v2, "trackMeizuAppOpenNotification is called, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s"

    .line 254
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SA.PushAutoTrackHelper"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 261
    :try_start_29
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_30

    move-object v1, v4

    goto :goto_35

    :catch_30
    :try_start_30
    const-string v4, "Failed to construct JSON"

    .line 263
    invoke-static {v2, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    if-eqz v1, :cond_58

    .line 266
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 267
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_51

    const-string v1, "m_content"

    .line 269
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_51

    const-string v1, "n_extras"

    .line 271
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_51
    const-string p3, "JPush"
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v0

    .line 277
    :try_start_55
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 279
    :cond_58
    :goto_58
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {p0, p1, p2, p3, v3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p0

    .line 282
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_64
    return-void
.end method

.method public static trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 118
    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const-string v0, "sf_plan_id"

    .line 138
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isRepeatEvent()Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_11d

    const-string v2, "SA.PushAutoTrackHelper"

    if-eqz v1, :cond_26

    :try_start_a
    const-string p5, "$AppPushClick Repeat trigger, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s"

    const/4 p6, 0x5

    new-array p6, p6, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p6, v0

    const/4 p1, 0x1

    aput-object p2, p6, p1

    const/4 p1, 0x2

    aput-object p0, p6, p1

    const/4 p0, 0x3

    aput-object p4, p6, p0

    const/4 p0, 0x4

    aput-object p3, p6, p0

    .line 139
    invoke-static {p5, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "$app_push_msg_title"

    .line 145
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$app_push_msg_content"

    .line 146
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$app_push_service_name"

    .line 147
    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_49

    const-string p3, "$app_push_channel"

    .line 149
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_49} :catch_11d

    :cond_49
    const/4 p3, 0x0

    .line 153
    :try_start_4a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_fa

    if-nez p4, :cond_70

    .line 155
    :try_start_50
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sfData is "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_69} :catch_6b

    move-object p3, p4

    goto :goto_70

    :catch_6b
    :try_start_6b
    const-string p0, "Failed to construct JSON"

    .line 158
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    :goto_70
    if-eqz p3, :cond_fe

    .line 161
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_fe

    const-string p0, "$sf_msg_title"

    .line 162
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_msg_content"

    .line 163
    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_msg_id"

    const-string p1, "sf_msg_id"

    .line 164
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_plan_id"

    .line 165
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_audience_id"

    const-string p1, "sf_audience_id"

    .line 166
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_link_url"

    const-string p1, "sf_link_url"

    .line 167
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_plan_strategy_id"

    const-string p1, "sf_plan_strategy_id"

    .line 168
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_plan_type"

    const-string p1, "sf_plan_type"

    .line 169
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_strategy_unit_id"

    const-string p1, "sf_strategy_unit_id"

    .line 170
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_enter_plan_time"

    const-string p1, "sf_enter_plan_time"

    .line 171
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_channel_id"

    const-string p1, "sf_channel_id"

    .line 172
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_channel_category"

    const-string p1, "sf_channel_category"

    .line 173
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "$sf_channel_service_name"

    const-string p1, "sf_channel_service_name"

    .line 174
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_f9} :catch_fa

    goto :goto_fe

    :catch_fa
    move-exception p0

    .line 177
    :try_start_fb
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_11d

    :cond_fe
    :goto_fe
    const-wide/16 p0, 0x0

    cmp-long p2, p5, p0

    if-lez p2, :cond_113

    :try_start_104
    const-string p0, "$time"

    .line 181
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, p5, p6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10e} :catch_10f

    goto :goto_113

    :catch_10f
    move-exception p0

    .line 184
    :try_start_110
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 186
    :cond_113
    :goto_113
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p0

    const-string p1, "$AppPushClick"

    invoke-virtual {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_11c} :catch_11d

    goto :goto_121

    :catch_11d
    move-exception p0

    .line 188
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_121
    return-void
.end method
