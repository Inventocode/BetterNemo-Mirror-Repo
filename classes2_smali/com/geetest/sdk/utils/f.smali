.class public Lcom/geetest/sdk/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "unknown"

    if-nez p0, :cond_5

    return-object v0

    .line 1
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    nop

    :goto_15
    if-eqz v2, :cond_1d

    .line 9
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v0, p0

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    nop

    :goto_13
    if-eqz v2, :cond_1b

    .line 9
    iget p0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, p0

    :cond_1b
    :goto_1b
    return v0
.end method
