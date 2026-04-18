.class public Lcom/umeng/commonsdk/internal/utils/g;
.super Ljava/lang/Object;
.source "Root.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 2

    .line 14
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/g;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 17
    :cond_8
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/g;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 20
    :cond_f
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/g;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 23
    :cond_16
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static b()Z
    .registers 2

    .line 30
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static c()Z
    .registers 3

    const/4 v0, 0x1

    .line 39
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    return v0

    .line 46
    :catch_f
    :cond_f
    :try_start_f
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Kinguser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1d

    if-eqz v1, :cond_1d

    return v0

    :catch_1d
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static d()Z
    .registers 2

    .line 56
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/d;

    invoke-direct {v0}, Lcom/umeng/commonsdk/internal/utils/d;-><init>()V

    sget-object v1, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/internal/utils/d;->a(Lcom/umeng/commonsdk/internal/utils/d$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static e()Z
    .registers 12

    const-string v0, "/bin"

    const-string v1, "/system/bin/"

    const-string v2, "/system/xbin/"

    const-string v3, "/system/sbin/"

    const-string v4, "/sbin/"

    const-string v5, "/vendor/bin/"

    const-string v6, "/su/bin/"

    const-string v7, "/data/local/xbin/"

    const-string v8, "/data/local/bin/"

    const-string v9, "/system/sd/xbin/"

    const-string v10, "/system/bin/failsafe/"

    const-string v11, "/data/local/"

    .line 64
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    const/16 v3, 0xc

    if-ge v2, v3, :cond_45

    .line 68
    aget-object v3, v0, v2

    .line 69
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "su"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v0, 0x1

    return v0

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_45
    return v1
.end method
