.class Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Landroid/content/Context;)V

    return-void
.end method

.method private native ChmodInner(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private a(Landroid/content/Context;)V
    .registers 9

    const-class v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    monitor-enter v0

    :try_start_3
    const-string v1, "TbsLinuxToolsJni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsLinuxToolsJni init mbIsInited is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z

    if-eqz v1, :cond_21

    monitor-exit v0

    return-void

    :cond_21
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->b:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_e7

    :try_start_24
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_34
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :cond_3a
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    :goto_42
    if-eqz v3, :cond_b0

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "liblinuxtoolsfortbssdk_jni.so"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_77

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_77

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/o;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    :cond_77
    if-eqz v3, :cond_b0

    const-string p1, "TbsLinuxToolsJni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TbsLinuxToolsJni init tbsSharePath is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "liblinuxtoolsfortbssdk_jni.so"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    :cond_b0
    const-string p1, "/checkChmodeExists"

    const-string v1, "700"

    invoke-direct {p0, p1, v1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->ChmodInner(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_24 .. :try_end_b7} :catchall_b8

    goto :goto_e5

    :catchall_b8
    move-exception p1

    :try_start_b9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    const-string v1, "TbsLinuxToolsJni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TbsLinuxToolsJni init error !!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ## "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e5
    monitor-exit v0

    return-void

    :catchall_e7
    move-exception p1

    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_b9 .. :try_end_e9} :catchall_e7

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a:Z

    if-nez v0, :cond_e

    const/4 p1, 0x1

    const-string p2, "TbsLinuxToolsJni"

    const-string v0, "jni not loaded!"

    invoke-static {p2, v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, -0x1

    return p1

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->ChmodInner(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
