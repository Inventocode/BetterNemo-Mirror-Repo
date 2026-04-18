.class public Lcom/umeng/commonsdk/internal/c;
.super Ljava/lang/Object;
.source "UMInternalDataProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/framework/UMLogDataProtocol;


# static fields
.field public static final a:Ljava/lang/String; = "um_policy_grant"

.field public static final b:Ljava/lang/String; = "preInitInvokedFlag"

.field public static final c:Ljava/lang/String; = "policyGrantInvokedFlag"

.field public static final d:Ljava/lang/String; = "policyGrantResult"

.field private static f:I = 0x1

.field private static final g:Ljava/lang/String; = "info"

.field private static final h:Ljava/lang/String; = "stat"

.field private static i:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/reflect/Method; = null

.field private static k:Ljava/lang/reflect/Method; = null

.field private static l:Ljava/lang/reflect/Method; = null

.field private static m:Z = false


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 90
    invoke-static {}, Lcom/umeng/commonsdk/internal/c;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    :cond_b
    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 682
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 159
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appkey"

    .line 160
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    .line 161
    invoke-static {p1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v2, "Android"

    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 164
    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->ZCFG_PATH:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildZeroEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_44

    const-string v0, "MobclickRT"

    if-eqz p1, :cond_3f

    :try_start_31
    const-string v1, "exception"

    .line 165
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    const-string p1, "--->>> 构建零号报文失败."

    .line 166
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3f
    const-string p1, "--->>> 构建零号报文 成功!!!"

    .line 169
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_44

    :catchall_44
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 242
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/internal/c$2;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 5

    .line 134
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->i:Ljava/lang/Class;

    const-string v1, ""

    if-eqz v0, :cond_22

    sget-object v2, Lcom/umeng/commonsdk/internal/c;->j:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_22

    sget-object v3, Lcom/umeng/commonsdk/internal/c;->l:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    :try_start_f
    new-array v4, v3, [Ljava/lang/Object;

    .line 136
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 138
    sget-object v2, Lcom/umeng/commonsdk/internal/c;->l:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_22

    move-object v1, v0

    :catchall_22
    :cond_22
    return-object v1
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/internal/c$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/internal/c$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static c()V
    .registers 5

    .line 95
    :try_start_0
    const-class v0, Lcom/umeng/umzid/ZIDManager;

    .line 97
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->i:Ljava/lang/Class;

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 98
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 100
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->j:Ljava/lang/reflect/Method;

    .line 102
    :cond_11
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->i:Ljava/lang/Class;

    const-string v1, "getZID"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 104
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->k:Ljava/lang/reflect/Method;

    .line 106
    :cond_24
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->i:Ljava/lang/Class;

    const-string v1, "getSDKVersion"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 108
    sput-object v0, Lcom/umeng/commonsdk/internal/c;->l:Ljava/lang/reflect/Method;
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_32

    :catchall_32
    :cond_32
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    const-string v0, "header_device_oaid"

    .line 258
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_16

    .line 260
    new-instance v0, Lcom/umeng/commonsdk/internal/c$3;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$3;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    :cond_16
    return-void
.end method

.method private d()V
    .registers 13

    .line 177
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/am;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/am;

    move-result-object v0

    const-string v1, "stf"

    .line 178
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/am;->a(Ljava/lang/String;)Lcom/umeng/analytics/pro/an;

    move-result-object v2

    if-eqz v2, :cond_55

    const-string v3, "MobclickRT"

    const-string v4, "--->>> [有状态]二级缓存记录构建成真正信封。"

    .line 180
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :try_start_15
    iget-object v4, v2, Lcom/umeng/analytics/pro/an;->a:Ljava/lang/String;

    .line 183
    iget-object v10, v2, Lcom/umeng/analytics/pro/an;->b:Ljava/lang/String;

    .line 184
    new-instance v7, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/umeng/analytics/pro/an;->c:Ljava/lang/String;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v8, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/umeng/analytics/pro/an;->d:Ljava/lang/String;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v9, v2, Lcom/umeng/analytics/pro/an;->e:Ljava/lang/String;

    .line 187
    iget-object v11, v2, Lcom/umeng/analytics/pro/an;->f:Ljava/lang/String;

    .line 189
    new-instance v5, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v5}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 190
    iget-object v2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v5 .. v11}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4a

    const-string v5, "exception"

    .line 191
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "--->>> [有状态]二级缓存记录构建真正信封 失败。删除二级缓存记录"

    .line 192
    invoke-static {v3, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_4a
    const-string v2, "--->>> [有状态]二级缓存记录构建真正信封 成功! 删除二级缓存记录。"

    .line 194
    invoke-static {v3, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_4f
    invoke-virtual {v0, v1, v4}, Lcom/umeng/analytics/pro/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/am;->b()V
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_55

    :catchall_55
    :cond_55
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 12

    .line 689
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 690
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :try_start_8
    const-string v1, "com.umeng.umzid.ZIDManager"

    .line 692
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 693
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_4a

    new-array v4, v3, [Ljava/lang/Object;

    .line 695
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    const-string v4, "com.umeng.umzid.IZIDCompletionCallback"

    .line 697
    invoke-static {v4}, Lcom/umeng/commonsdk/internal/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "init"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    .line 698
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4a

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object p1, v4, v9

    const/4 p1, 0x0

    aput-object p1, v4, v8

    .line 701
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_4a

    :catchall_4a
    :cond_4a
    return-void
.end method

.method private e()V
    .registers 3

    .line 292
    sget-boolean v0, Lcom/umeng/commonsdk/internal/c;->m:Z

    const-string v1, "header_device_oaid"

    if-nez v0, :cond_20

    .line 293
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_29

    const/4 v0, 0x1

    .line 295
    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->m:Z

    .line 296
    new-instance v0, Lcom/umeng/commonsdk/internal/c$4;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$4;-><init>(Lcom/umeng/commonsdk/internal/c;)V

    .line 320
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    goto :goto_29

    .line 324
    :cond_20
    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 325
    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->m:Z

    :cond_29
    :goto_29
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 3

    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 722
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "umeng_zcfg_flag"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2c

    .line 725
    :try_start_29
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :cond_2c
    return-void
.end method

.method private f()V
    .registers 3

    const-string v0, "header_device_oaid"

    .line 337
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_32

    const/4 v0, 0x1

    .line 341
    sput-boolean v0, Lcom/umeng/commonsdk/internal/c;->m:Z

    .line 342
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->registerInterruptFlag()V

    .line 344
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/UMConfigureImpl;->init(Landroid/content/Context;)V

    .line 346
    sget v1, Lcom/umeng/commonsdk/internal/c;->f:I

    add-int/2addr v1, v0

    sput v1, Lcom/umeng/commonsdk/internal/c;->f:I

    const-string v0, "MobclickRT"

    const-string v1, "--->>> 要读取 oaid，需等待读取结果."

    .line 348
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/umeng/commonsdk/internal/c$5;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/c$5;-><init>(Lcom/umeng/commonsdk/internal/c;)V

    .line 364
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->registerMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V

    .line 366
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->b(Landroid/content/Context;)V

    :cond_32
    return-void
.end method

.method private g()V
    .registers 2

    .line 712
    sget v0, Lcom/umeng/commonsdk/internal/c;->f:I

    if-gtz v0, :cond_c

    .line 713
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->h()V

    .line 716
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/internal/c;->d(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method private h()V
    .registers 5

    const-string v0, "MobclickRT"

    const-string v1, "--->>> 真实构建条件满足，开始构建业务信封。"

    .line 732
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 734
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->e(Landroid/content/Context;)V

    .line 739
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/a;->a(Landroid/content/Context;)V

    .line 741
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    const/16 v1, 0x2010

    .line 742
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    .line 741
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    const v1, 0x8011

    .line 746
    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v2

    .line 745
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    .line 119
    sget-object v0, Lcom/umeng/commonsdk/internal/c;->i:Ljava/lang/Class;

    const-string v1, ""

    if-eqz v0, :cond_27

    sget-object v2, Lcom/umeng/commonsdk/internal/c;->j:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_27

    sget-object v3, Lcom/umeng/commonsdk/internal/c;->k:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    :try_start_f
    new-array v4, v3, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 123
    sget-object v2, Lcom/umeng/commonsdk/internal/c;->k:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_27

    move-object v1, v0

    :catchall_27
    :cond_27
    return-object v1
.end method

.method public removeCacheData(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public setupReportData(J)Lorg/json/JSONObject;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public workEvent(Ljava/lang/Object;I)V
    .registers 13

    .line 374
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[internal] workEvent"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "walle"

    invoke-static {v3, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "um_policy_grant"

    const-string v5, "[internal] workEvent send envelope"

    const-string v6, "umeng_policy_result_flag"

    const-string v7, "policyGrantResult"

    const/4 v8, 0x2

    const-string v9, "MobclickRT"

    packed-switch p2, :pswitch_data_31a

    :pswitch_1d  #0x8002, 0x8004, 0x8005, 0x800a, 0x800c, 0x800e, 0x800f, 0x8015, 0x801a, 0x801b, 0x801c, 0x801d, 0x801e, 0x801f
    goto/16 :goto_318

    .line 541
    :pswitch_1f  #0x8021
    :try_start_1f
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/debug/SelfChecker;->doCheck(Landroid/content/Context;)Z
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_318

    goto/16 :goto_318

    .line 663
    :pswitch_26  #0x8020
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 664
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_318

    .line 667
    :try_start_4f
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_318

    goto/16 :goto_318

    :pswitch_54  #0x8019
    const-string p2, "--->>> 保存preInit执行结果及授权API是否调用结果."

    .line 623
    invoke-static {v9, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_318

    .line 625
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "preInitInvoked"

    .line 629
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_318

    .line 631
    :try_start_67
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "policyGrantInvoked"

    .line 632
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 633
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 634
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 635
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 637
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_97

    const-string v2, "preInitInvokedFlag"

    .line 639
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "policyGrantInvokedFlag"

    .line 640
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 641
    invoke-interface {v1, v7, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 646
    :cond_97
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 647
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_318

    .line 650
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_c3
    .catchall {:try_start_67 .. :try_end_c3} :catchall_318

    goto/16 :goto_318

    :pswitch_c5  #0x8018
    const-string p2, "--->>> 保存隐私授权结果."

    .line 607
    invoke-static {v9, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :try_start_ca
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_318

    .line 610
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 611
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 612
    invoke-virtual {p2, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_318

    .line 614
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_eb
    .catchall {:try_start_ca .. :try_end_eb} :catchall_318

    goto/16 :goto_318

    :pswitch_ed  #0x8017
    const-string p1, "--->>> 正常冷启动流程，接收到云控配置加载成功通知。"

    .line 504
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/internal/c;->c(Landroid/content/Context;)V

    .line 506
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/a;->a(Landroid/content/Context;)V

    .line 509
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/internal/c;->d(Landroid/content/Context;)V

    goto/16 :goto_318

    :pswitch_103  #0x8016
    const-string p1, "--->>> 成功接收到(OAID)读取结束通知。"

    .line 492
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sget p1, Lcom/umeng/commonsdk/internal/c;->f:I

    sub-int/2addr p1, v1

    sput p1, Lcom/umeng/commonsdk/internal/c;->f:I

    .line 494
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->g()V

    goto/16 :goto_318

    :pswitch_112  #0x8014
    const-string p1, "--->>> 云控下发参数更新，触发 伪冷启动。"

    .line 590
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/umeng/commonsdk/statistics/b;->a()V

    .line 592
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->e()V

    const-string p1, "header_foreground_count"

    .line 593
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13e

    .line 594
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist()Z

    move-result p1

    if-nez p1, :cond_13e

    const-string p1, "--->>> 云控下发参数更新 前台计数器功能 打开，触发 5秒周期检查机制"

    .line 595
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 597
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    .line 596
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    :cond_13e
    const-string p1, "header_first_resume"

    .line 600
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_318

    const-string p1, "--->>> 云控下发参数更新 FirstResume功能 打开，触发 trigger"

    .line 601
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/l;

    move-result-object p1

    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/l;->b(Landroid/content/Context;)V

    goto/16 :goto_318

    :pswitch_158  #0x8013
    :try_start_158
    const-string p1, "--->>> 触发2号仓遗留信封检查动作。"

    .line 553
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 556
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/stateless/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 558
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_181

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_181

    const/4 v4, 0x1

    .line 565
    :cond_181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_199

    .line 566
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_199

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_199

    goto :goto_19a

    :cond_199
    move v1, v4

    :goto_19a
    if-eqz v1, :cond_1b5

    .line 574
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->a()Z

    move-result p1

    if-nez p1, :cond_1ae

    .line 575
    new-instance p1, Lcom/umeng/commonsdk/stateless/b;

    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/stateless/b;-><init>(Landroid/content/Context;)V

    .line 576
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->b()V

    goto/16 :goto_318

    :cond_1ae
    const-string p1, "--->>> 触发2号仓遗留信封检查，Sender已创建，不需要处理。"

    .line 578
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_318

    :cond_1b5
    const-string p1, "--->>> 触发2号仓遗留信封检查，没有需要处理的目录，不需要处理。"

    .line 581
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ba
    .catchall {:try_start_158 .. :try_end_1ba} :catchall_318

    goto/16 :goto_318

    .line 548
    :pswitch_1bc  #0x8012
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->buildEnvelope(Landroid/content/Context;Ljava/lang/Object;)V

    goto/16 :goto_318

    :pswitch_1c3  #0x8011
    const-string p1, "--->>> [有状态]接收到消费二级缓存数据通知."

    .line 513
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/am;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/am;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/am;->c()Z

    move-result p1

    if-eqz p1, :cond_1da

    const-string p1, "--->>> [有状态]已消费完毕,二级缓存数据库为空."

    .line 515
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 519
    :cond_1da
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->d()V

    const p1, 0x8011

    .line 521
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result p2

    if-nez p2, :cond_318

    .line 522
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    .line 523
    invoke-static {p2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 522
    invoke-static {p2, p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_318

    :pswitch_1f6  #0x8010
    const-string p1, "--->>> 零号报文流程，接收到云控配置加载成功通知(成功收到零号报文应答)。"

    .line 497
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->f()V

    .line 499
    sget p1, Lcom/umeng/commonsdk/internal/c;->f:I

    sub-int/2addr p1, v1

    sput p1, Lcom/umeng/commonsdk/internal/c;->f:I

    .line 500
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/c;->g()V

    goto/16 :goto_318

    .line 530
    :pswitch_208  #0x800d
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    sget-object p2, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-nez p1, :cond_21e

    const-string p1, "--->>> 构建零号报文"

    .line 531
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/internal/c;->a(Landroid/content/Context;)V

    goto/16 :goto_318

    :cond_21e
    const-string p1, "--->>> 零号报文信封文件已存在，尝试发送之!"

    .line 534
    invoke-static {v9, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_318

    .line 486
    :pswitch_225  #0x800b
    check-cast p1, Lcom/umeng/commonsdk/vchannel/b;

    .line 488
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/vchannel/Sender;->handleEvent(Landroid/content/Context;Lcom/umeng/commonsdk/vchannel/b;)V

    goto/16 :goto_318

    :pswitch_22e  #0x8009
    :try_start_22e
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v5, p1, v4

    .line 399
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "i_sdk_v"

    const-string v0, "1.2.0"

    .line 401
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "inner"

    .line 404
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_318

    const-string p2, "exception"

    .line 406
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_318

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "[internal] workEvent send envelope back, result is ok"

    aput-object p2, p1, v4

    .line 408
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_269} :catch_318

    goto/16 :goto_318

    .line 477
    :pswitch_26b  #0x8008
    iget-object p2, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "info"

    .line 478
    invoke-virtual {p2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    if-eqz p2, :cond_318

    .line 480
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    check-cast p1, Ljava/lang/String;

    const-string v0, "stat"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_318

    .line 464
    :pswitch_28a  #0x8007
    :try_start_28a
    const-class p2, Lcom/umeng/commonsdk/internal/utils/InfoPreferenceAgent;

    const-string v2, "saveUA"

    new-array v3, v8, [Ljava/lang/Class;

    .line 466
    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 467
    check-cast p1, Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    .line 468
    iget-object v3, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    aput-object v3, v2, v4

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_318

    .line 450
    :pswitch_2a8  #0x8006
    const-class p1, Lcom/umeng/commonsdk/internal/utils/ApplicationLayerUtilAgent;

    const-string p2, "wifiChange"

    new-array v0, v1, [Ljava/lang/Class;

    .line 452
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 453
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    aput-object v1, v0, v4

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28a .. :try_end_2bf} :catch_318
    .catchall {:try_start_28a .. :try_end_2bf} :catchall_318

    goto :goto_318

    :pswitch_2c0  #0x8003
    new-array p2, v1, [Ljava/lang/Object;

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[internal] workEvent cache battery, event is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v4

    invoke-static {v3, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :try_start_2dc
    const-class p2, Lcom/umeng/commonsdk/internal/utils/UMInternalUtilsAgent;

    const-string v2, "saveBattery"

    new-array v3, v8, [Ljava/lang/Class;

    .line 420
    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 421
    check-cast p1, Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    .line 422
    iget-object v3, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    aput-object v3, v2, v4

    aput-object p1, v2, v1

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2dc .. :try_end_2f9} :catch_318
    .catchall {:try_start_2dc .. :try_end_2f9} :catchall_318

    goto :goto_318

    :pswitch_2fa  #0x8001
    :try_start_2fa
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v5, p1, v4

    .line 380
    invoke-static {v3, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_301
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_301} :catch_318

    .line 383
    :try_start_301
    const-class p1, Lcom/umeng/commonsdk/internal/UMInternalManagerAgent;

    const-string p2, "sendInternalEnvelopeByStateful2"

    new-array v0, v1, [Ljava/lang/Class;

    .line 385
    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    aput-object v1, v0, v4

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_318
    .catch Ljava/lang/ClassNotFoundException; {:try_start_301 .. :try_end_318} :catch_318
    .catchall {:try_start_301 .. :try_end_318} :catchall_318

    :catch_318
    :catchall_318
    :cond_318
    :goto_318
    return-void

    nop

    :pswitch_data_31a
    .packed-switch 0x8001
        :pswitch_2fa  #00008001
        :pswitch_1d  #00008002
        :pswitch_2c0  #00008003
        :pswitch_1d  #00008004
        :pswitch_1d  #00008005
        :pswitch_2a8  #00008006
        :pswitch_28a  #00008007
        :pswitch_26b  #00008008
        :pswitch_22e  #00008009
        :pswitch_1d  #0000800a
        :pswitch_225  #0000800b
        :pswitch_1d  #0000800c
        :pswitch_208  #0000800d
        :pswitch_1d  #0000800e
        :pswitch_1d  #0000800f
        :pswitch_1f6  #00008010
        :pswitch_1c3  #00008011
        :pswitch_1bc  #00008012
        :pswitch_158  #00008013
        :pswitch_112  #00008014
        :pswitch_1d  #00008015
        :pswitch_103  #00008016
        :pswitch_ed  #00008017
        :pswitch_c5  #00008018
        :pswitch_54  #00008019
        :pswitch_1d  #0000801a
        :pswitch_1d  #0000801b
        :pswitch_1d  #0000801c
        :pswitch_1d  #0000801d
        :pswitch_1d  #0000801e
        :pswitch_1d  #0000801f
        :pswitch_26  #00008020
        :pswitch_1f  #00008021
    .end packed-switch
.end method
