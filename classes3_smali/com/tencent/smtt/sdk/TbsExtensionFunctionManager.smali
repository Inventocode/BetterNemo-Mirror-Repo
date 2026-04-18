.class public Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;
.super Ljava/lang/Object;


# static fields
.field public static final BUGLY_SWITCH_FILE_NAME:Ljava/lang/String; = "bugly_switch.txt"

.field public static final COOKIE_SWITCH_FILE_NAME:Ljava/lang/String; = "cookie_switch.txt"

.field public static final DISABLE_GET_APK_VERSION_SWITCH_FILE_NAME:Ljava/lang/String; = "disable_get_apk_version_switch.txt"

.field public static final DISABLE_UNPREINIT:Ljava/lang/String; = "disable_unpreinit.txt"

.field public static final DISABLE_USE_HOST_BACKUP_CORE:Ljava/lang/String; = "disable_use_host_backup_core.txt"

.field public static final SP_KEY_COOKIE_DB_VERSION:Ljava/lang/String; = "cookie_db_version"

.field public static final SP_NAME_FOR_COOKIE:Ljava/lang/String; = "cookie_compatiable"

.field public static final SWITCH_BYTE_COOKIE:I = 0x1

.field public static final SWITCH_BYTE_DISABLE_GET_APK_VERSION:I = 0x2

.field public static final SWITCH_BYTE_DISABLE_UNPREINIT:I = 0x4

.field public static final SWITCH_BYTE_DISABLE_USE_HOST_BACKUPCORE:I = 0x8

.field public static final USEX5_FILE_NAME:Ljava/lang/String; = "usex5.txt"

.field private static b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;
    .registers 2

    sget-object v0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

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
    sget-object v0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->b:Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    :goto_17
    monitor-exit p0

    return p1

    :cond_19
    const/4 p1, 0x0

    goto :goto_17

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRomCookieDBVersion(Landroid/content/Context;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    const-string v0, "cookie_compatiable"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_16

    :cond_f
    const-string v0, "cookie_compatiable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    :goto_16
    const/4 v0, -0x1

    if-nez p1, :cond_1b

    monitor-exit p0

    return v0

    :cond_1b
    :try_start_1b
    const-string v1, "cookie_db_version"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_23

    monitor-exit p0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initTbsBuglyIfNeed(Landroid/content/Context;)V
    .registers 15

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f4

    if-eqz v1, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    const-string v1, "bugly_switch.txt"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "bugly is forbiden!!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_f4

    monitor-exit p0

    return-void

    :cond_1a
    :try_start_1a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_25
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_36

    const-string v2, "TbsExtensionFunMana"

    const-string v3, "getTbsCoreShareDir is null"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_eb

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_45

    goto/16 :goto_eb

    :cond_45
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "bugly init ,corePath is null"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_1a .. :try_end_56} :catchall_f4

    monitor-exit p0

    return-void

    :cond_58
    :try_start_58
    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/smtt/sdk/o;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_6b

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "bugly init ,optDir is null"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_f4

    monitor-exit p0

    return-void

    :cond_6b
    :try_start_6b
    new-instance v3, Ljava/io/File;

    const-string v4, "tbs_bugly_dex.jar"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_f4

    :try_start_72
    new-instance v4, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v8, v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getSettings()Ljava/util/Map;

    move-result-object v10

    move-object v5, v4

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "com.tencent.smtt.tbs.bugly.TBSBuglyManager"

    invoke-virtual {v4, v2}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "initBugly"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v12

    aput-object v0, v5, v11

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v7, 0x3

    aput-object v0, v5, v7

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v12

    aput-object v1, v0, v11

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->getTbsSDKVersion(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {v2, v3, v5, v0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catchall {:try_start_72 .. :try_end_c3} :catchall_ce

    :try_start_c3
    iput-boolean v11, p0, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->a:Z

    const-string p1, "TbsExtensionFunMana"

    const-string v0, "initTbsBuglyIfNeed success!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_c3 .. :try_end_cc} :catchall_f4

    monitor-exit p0

    return-void

    :catchall_ce
    move-exception p1

    :try_start_cf
    const-string v0, "TbsExtensionFunMana"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bugly init ,try init bugly failed(need new core):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_cf .. :try_end_e9} :catchall_f4

    monitor-exit p0

    return-void

    :cond_eb
    :goto_eb
    :try_start_eb
    const-string p1, "TbsExtensionFunMana"

    const-string v0, "getTbsCoreShareDir is empty!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catchall {:try_start_eb .. :try_end_f2} :catchall_f4

    monitor-exit p0

    return-void

    :catchall_f4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_3c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_64

    if-nez p3, :cond_62

    :try_start_18
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_20
    .catchall {:try_start_18 .. :try_end_1c} :catchall_64

    if-eqz p2, :cond_62

    monitor-exit p0

    return p1

    :catch_20
    move-exception p1

    :try_start_21
    const-string p3, "TbsExtensionFunMana"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFunctionEnable,createNewFile fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_64

    monitor-exit p0

    return v0

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_62

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p3
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_64

    if-eqz p3, :cond_4a

    monitor-exit p0

    return p1

    :cond_4a
    :try_start_4a
    const-string p1, "TbsExtensionFunMana"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFunctionEnable,file.delete fail:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_64

    monitor-exit p0

    return v0

    :cond_62
    monitor-exit p0

    return p1

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method
