.class public Lcom/chuanglan/shanyan_sdk/tool/l;
.super Lcom/chuanglan/shanyan_sdk/tool/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chuanglan/shanyan_sdk/tool/l$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/tool/l;


# instance fields
.field private b:Lcom/chuanglan/shanyan_sdk/tool/l$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/m;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/l;->a:Lcom/chuanglan/shanyan_sdk/tool/l;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/l;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/l;->a:Lcom/chuanglan/shanyan_sdk/tool/l;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/l;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/l;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/l;->a:Lcom/chuanglan/shanyan_sdk/tool/l;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/l;->a:Lcom/chuanglan/shanyan_sdk/tool/l;

    return-object v0
.end method

.method private a(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    .registers 12

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/l;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/l;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_52

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/l;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_52

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/libShanYCore.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "getZipEntry cupABI="

    aput-object v8, v7, v2

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const-string v9, "NetworkShanYanLogger"

    invoke-static {v9, v7}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_4f

    new-array p1, v6, [Ljava/lang/Object;

    const-string v0, "getZipEntry ExistSoFile ABI="

    aput-object v0, p1, v2

    aput-object v4, p1, v8

    invoke-static {v9, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_52
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/l;->b:Lcom/chuanglan/shanyan_sdk/tool/l$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/chuanglan/shanyan_sdk/tool/l$a;->a(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private b(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/l;->b:Lcom/chuanglan/shanyan_sdk/tool/l$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/chuanglan/shanyan_sdk/tool/l$a;->b(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private b()[Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/l;->b:Lcom/chuanglan/shanyan_sdk/tool/l$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/chuanglan/shanyan_sdk/tool/l$a;->a()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 10

    const-string v0, "check_failed"

    const-string v1, "ExceptionShanYanTask"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_7
    const-string v5, "preResult"

    invoke-static {p1, v5, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_59

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_59

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/utils/e;->a(Landroid/content/Context;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/e;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/tool/l;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/chuanglan/shanyan_sdk/b;->ab:J

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/l;->c()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_4a

    :try_start_31
    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/s;->n(Ljava/lang/Object;)Z

    const-string p1, "check_success"

    invoke-direct {p0, v3, p1}, Lcom/chuanglan/shanyan_sdk/tool/l;->b(ILjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    goto :goto_59

    :catchall_3a
    move-exception p1

    :try_start_3b
    new-array p2, v2, [Ljava/lang/Object;

    const-string v5, "switchNetworkTool Exception_e="

    aput-object v5, p2, v4

    aput-object p1, p2, v3

    invoke-static {v1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4, v0}, Lcom/chuanglan/shanyan_sdk/tool/l;->a(ILjava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_4a

    goto :goto_59

    :catch_4a
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "check_failed Exception_e="

    aput-object v2, p2, v4

    aput-object p1, p2, v3

    invoke-static {v1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4, v0}, Lcom/chuanglan/shanyan_sdk/tool/l;->a(ILjava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/l$a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/l;->b:Lcom/chuanglan/shanyan_sdk/tool/l$a;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "NetworkShanYanLogger"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_25

    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/chuanglan/shanyan_sdk/tool/l;->a(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1c

    goto :goto_26

    :cond_1c
    new-array p1, v1, [Ljava/lang/Object;

    const-string v3, "not exist soFile"

    aput-object v3, p1, v2

    invoke-static {v0, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_28

    :cond_25
    const/4 v1, 0x0

    :goto_26
    move v2, v1

    goto :goto_38

    :catch_28
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "isExistSoFile Exception_e="

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_38
    return v2
.end method
