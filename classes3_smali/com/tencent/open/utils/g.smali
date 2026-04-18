.class public final Lcom/tencent/open/utils/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static final a()Landroid/content/Context;
    .registers 1

    .line 55
    sget-object v0, Lcom/tencent/open/utils/g;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 102
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/open/utils/m;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;)V
    .registers 1

    .line 65
    sput-object p0, Lcom/tencent/open/utils/g;->a:Landroid/content/Context;

    return-void
.end method

.method public static final b()Ljava/lang/String;
    .registers 1

    .line 70
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 73
    :cond_9
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()Ljava/io/File;
    .registers 1

    .line 86
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_8
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final d()Ljava/io/File;
    .registers 1

    .line 93
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static final e()Ljava/io/File;
    .registers 1

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Lcom/tencent/open/utils/g;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
