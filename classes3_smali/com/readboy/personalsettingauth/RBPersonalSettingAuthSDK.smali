.class public Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;
.super Ljava/lang/Object;
.source "RBPersonalSettingAuthSDK.java"


# static fields
.field public static sAppContext:Landroid/content/Context;


# direct methods
.method public static appstore(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 43
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.dream.android.appstore"

    const-string v3, "cn.dream.android.appstore.ui.activity.AppDetailActivity_"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "pkg"

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {p1}, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->isReadboyPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "type"

    const-string v1, "auto_download"

    .line 50
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    const/4 p0, 0x1

    return p0

    :catch_2e
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static initRBAuthConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_8

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->sAppContext:Landroid/content/Context;

    .line 24
    :cond_8
    invoke-static {p1, p2}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->initRBAuthConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isReadboyMachine()Z
    .registers 3

    .line 79
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_18

    const-string v1, "readboy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v2

    .line 88
    :cond_18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "readboy_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v2

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public static isReadboyPackage(Ljava/lang/String;)Z
    .registers 2

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "com.readboy"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "cn.dream"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "cn.classone"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "android.dream"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "com.dream"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public static isUnSupportReadboyMachine()Z
    .registers 2

    .line 74
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Readboy_Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
