.class public LXI/XI/K0/XI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static K0:Z = false

.field public static XI:Z = false


# direct methods
.method public static CA(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public static K0(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;)LXI/CA/XI/K0;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    goto :goto_1d

    .line 1
    :cond_8
    sget-object v1, LXI/CA/XI/K0;->WI:Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object v0, v1

    goto :goto_1d

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LXI/CA/XI/K0;->XI(ILjava/lang/String;)V

    sget-object p0, LXI/CA/XI/K0;->kM:LXI/CA/XI/kM;

    if-nez p0, :cond_1b

    sget-object p0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-static {p0, v1, v0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1b
    sget-object v0, LXI/CA/XI/K0;->WI:Ljava/lang/String;

    :goto_1d
    return-object v0
.end method

.method public static K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;)LXI/CA/XI/K0;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_21

    .line 2
    :cond_8
    sget-object v0, LXI/CA/XI/K0;->bs:Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object p0, v0

    goto :goto_21

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, LXI/CA/XI/K0;->XI(ILjava/lang/String;)V

    sget-object p0, LXI/CA/XI/K0;->xo:LXI/CA/XI/kM;

    if-nez p0, :cond_1f

    sget-object p0, LXI/CA/XI/K0;->bs:Ljava/lang/String;

    if-eqz p0, :cond_1f

    sget-object p0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-static {p0, v0, p1}, LXI/CA/XI/K0;->XI(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1f
    sget-object p0, LXI/CA/XI/K0;->bs:Ljava/lang/String;

    :goto_21
    return-object p0
.end method

.method public static XI(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;)LXI/CA/XI/K0;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_d

    .line 2
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_f

    :goto_d
    const/4 p0, 0x0

    goto :goto_2e

    :cond_f
    sget-object v0, LXI/CA/XI/K0;->cs:Ljava/lang/String;

    if-eqz v0, :cond_15

    move-object p0, v0

    goto :goto_2e

    :cond_15
    sget-object v0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, LXI/CA/XI/K0;->XI(ILjava/lang/String;)V

    sget-object p0, LXI/CA/XI/K0;->CA:LXI/CA/XI/kM;

    if-nez p0, :cond_2c

    sget-object p0, LXI/CA/XI/K0;->cs:Ljava/lang/String;

    if-eqz p0, :cond_2c

    sget-object p0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-static {p0, v1, v0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2c
    sget-object p0, LXI/CA/XI/K0;->cs:Ljava/lang/String;

    :goto_2e
    return-object p0
.end method

.method public static XI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;)LXI/CA/XI/K0;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_21

    .line 1
    :cond_8
    sget-object v0, LXI/CA/XI/K0;->cs:Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object p0, v0

    goto :goto_21

    :cond_e
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, LXI/CA/XI/K0;->XI(ILjava/lang/String;)V

    sget-object p0, LXI/CA/XI/K0;->CA:LXI/CA/XI/kM;

    if-nez p0, :cond_1f

    sget-object p0, LXI/CA/XI/K0;->cs:Ljava/lang/String;

    if-eqz p0, :cond_1f

    sget-object p0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-static {p0, v0, p1}, LXI/CA/XI/K0;->XI(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1f
    sget-object p0, LXI/CA/XI/K0;->cs:Ljava/lang/String;

    :goto_21
    return-object p0
.end method

.method public static final XI()Z
    .registers 5

    const-string v0, "android.app.ActivityThread"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_1e

    const-string v3, "currentApplication"

    :try_start_a
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1e

    move-object v1, v0

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_22
    if-nez v1, :cond_25

    return v2

    :cond_25
    invoke-static {}, LXI/xo/XI/XI/CA;->XI()LXI/xo/XI/XI/CA;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, LXI/xo/XI/XI/CA;->XI(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static kM(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;)LXI/CA/XI/K0;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_d

    .line 1
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_f

    :goto_d
    const/4 p0, 0x0

    goto :goto_2e

    :cond_f
    sget-object v0, LXI/CA/XI/K0;->bs:Ljava/lang/String;

    if-eqz v0, :cond_15

    move-object p0, v0

    goto :goto_2e

    :cond_15
    sget-object v0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, LXI/CA/XI/K0;->XI(ILjava/lang/String;)V

    sget-object p0, LXI/CA/XI/K0;->xo:LXI/CA/XI/kM;

    if-nez p0, :cond_2c

    sget-object p0, LXI/CA/XI/K0;->bs:Ljava/lang/String;

    if-eqz p0, :cond_2c

    sget-object p0, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    invoke-static {p0, v1, v0}, LXI/CA/XI/K0;->XI(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2c
    sget-object p0, LXI/CA/XI/K0;->bs:Ljava/lang/String;

    :goto_2e
    return-object p0
.end method

.method public static xo(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, LXI/XI/K0/XI;->XI:Z

    if-nez v0, :cond_24

    sget-object v0, LXI/K0/XI/XI$K0$K0;->XI:LXI/K0/XI/XI$K0;

    invoke-static {p0}, LXI/XI/K0/XI;->CA(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_13} :catch_20

    const-string v2, "com.heytap.openid"

    :try_start_15
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1d} :catch_20

    if-lt p0, v1, :cond_20

    const/4 v0, 0x1

    .line 2
    :catch_20
    :cond_20
    sput-boolean v0, LXI/XI/K0/XI;->K0:Z

    sput-boolean v1, LXI/XI/K0/XI;->XI:Z

    :cond_24
    return-void
.end method
