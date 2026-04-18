.class public Lcom/codemao/toolssdk/utils/CMToolsAppUtils;
.super Ljava/lang/Object;
.source "CMToolsAppUtils.java"


# static fields
.field public static androidId:Ljava/lang/String;


# direct methods
.method public static declared-synchronized getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;

    monitor-enter v0

    .line 24
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 27
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_20
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    goto :goto_27

    :catch_20
    move-exception p0

    .line 30
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    const/4 p0, 0x0

    .line 32
    monitor-exit v0

    return-object p0

    :goto_27
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getVersionCode(Landroid/content/Context;)I
    .registers 4

    const-class v0, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 62
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 65
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_17
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0

    .line 68
    :catch_17
    monitor-exit v0

    return v1
.end method

.method public static hideSystemUI(Landroid/app/Activity;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 116
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static initAndroidId(Landroid/content/Context;)V
    .registers 1

    :try_start_0
    const-string p0, ""

    .line 133
    sput-object p0, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->androidId:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public static isPad(Landroid/content/Context;)Z
    .registers 2

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method
