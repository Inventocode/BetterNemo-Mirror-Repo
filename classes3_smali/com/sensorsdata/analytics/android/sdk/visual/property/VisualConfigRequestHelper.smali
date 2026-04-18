.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;
.super Ljava/lang/Object;
.source "VisualConfigRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualConfigRequestHelper"


# instance fields
.field private volatile mCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)Landroid/os/CountDownTimer;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->getRequestUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->resetTimer()V

    return-void
.end method

.method private getRequestUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "SA.VP.VisualConfigRequestHelper"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p1, "getRequestUrl context is null and return"

    .line 130
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 133
    :cond_b
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string p1, "visualConfigRequest server url is null and return"

    .line 135
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1f
    const-string v0, "/"

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3f

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/config/visualized/Android.conf"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_3f
    move-object v0, v1

    .line 145
    :goto_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 146
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "v"

    .line 149
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    :cond_59
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "project"

    .line 152
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 154
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    :cond_6c
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7b

    const-string p2, "app_id"

    .line 159
    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    :cond_7b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_84
    return-object v1
.end method

.method private resetTimer()V
    .registers 3

    const/4 v0, 0x0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_a

    .line 119
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 124
    :cond_a
    :goto_a
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    goto :goto_14

    :catchall_d
    move-exception v1

    goto :goto_15

    :catch_f
    move-exception v1

    .line 122
    :try_start_10
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    goto :goto_a

    :goto_14
    return-void

    .line 124
    :goto_15
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 125
    throw v1
.end method


# virtual methods
.method public requestVisualConfig(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;)V
    .registers 6

    .line 48
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->post(Ljava/lang/Runnable;)V

    return-void
.end method
