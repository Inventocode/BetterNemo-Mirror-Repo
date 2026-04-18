.class public Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;
.super Ljava/lang/Object;
.source "HeatMapService.java"


# static fields
.field private static instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

.field private static mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;
    .registers 1

    .line 36
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    .line 39
    :cond_b
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    return-object v0
.end method


# virtual methods
.method public isServiceRunning()Z
    .registers 2

    .line 88
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz v0, :cond_9

    .line 89
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->isServiceRunning()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public resume()V
    .registers 2

    .line 54
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz v0, :cond_c

    .line 55
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->startUpdates()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-string v0, "HeatMapService"

    const-string v1, "HeatMapService service"

    .line 64
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 67
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 68
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_26

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    :cond_26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_47

    const-string v1, "com.sensorsdata.analytics.android.ResourcePackageName"

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_38
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    .line 80
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->startUpdates()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p1

    .line 83
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public stop()V
    .registers 3

    .line 44
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->stopUpdates(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 48
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_d
    :goto_d
    return-void
.end method
