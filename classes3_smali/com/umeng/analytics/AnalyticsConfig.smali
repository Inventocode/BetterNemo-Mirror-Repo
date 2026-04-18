.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static CATCH_EXCEPTION:Z = false

.field public static CHANGE_CATCH_EXCEPTION_NOTALLOW:Z = true

.field public static CLEAR_EKV_BL:Z = false

.field public static CLEAR_EKV_WL:Z = false

.field public static final DEBUG_KEY:Ljava/lang/String; = "debugkey"

.field public static final DEBUG_MODE_PERIOD:Ljava/lang/String; = "sendaging"

.field public static GPU_RENDERER:Ljava/lang/String; = ""

.field public static GPU_VENDER:Ljava/lang/String; = ""

.field public static final RTD_PERIOD:Ljava/lang/String; = "period"

.field public static final RTD_SP_FILE:Ljava/lang/String; = "um_rtd_conf"

.field public static final RTD_START_TIME:Ljava/lang/String; = "startTime"

.field static a:[D = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:I = 0x0

.field public static enable:Z = true

.field private static f:Ljava/lang/Object; = null

.field private static g:Z = false

.field private static h:Ljava/lang/String; = ""

.field public static kContinueSessionMillis:J = 0x7530L

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .registers 2

    .line 141
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 142
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {p0, p1}, Lcom/umeng/common/b;->a(I)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 121
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 122
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/common/b;->a(Ljava/lang/String;)V

    goto :goto_1a

    :cond_12
    const/4 p0, 0x0

    const-string p1, "MobclickAgent.setSecret方法参数secretkey不能为null，也不能为空字符串。|secretkey参数必须是非空 字符串。"

    const-string v0, "\\|"

    .line 124
    invoke-static {p1, p0, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1a
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 1

    .line 98
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 102
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 106
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string p0, "com.umeng.analytics.game.GameSdkVersion"

    .line 155
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "SDK_VERSION"

    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static getLocation()[D
    .registers 1

    .line 110
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-object v0
.end method

.method public static getRealTimeDebugKey()Ljava/lang/String;
    .registers 2

    .line 92
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->h:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 94
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 134
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 135
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/common/b;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 137
    :cond_12
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .registers 2

    .line 146
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    if-nez v0, :cond_e

    .line 147
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/common/b;->d()I

    move-result p0

    sput p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 149
    :cond_e
    sget p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    return p0
.end method

.method public static isRealTimeDebugMode()Z
    .registers 2

    .line 86
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->g:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 88
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static turnOffRealTimeDebug()V
    .registers 2

    .line 79
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 80
    :try_start_4
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->g:Z

    const-string v1, ""

    .line 81
    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->h:Ljava/lang/String;

    .line 82
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static turnOnRealTimeDebug(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 72
    :try_start_4
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->g:Z

    if-eqz p0, :cond_1a

    const-string v1, "debugkey"

    .line 73
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "debugkey"

    .line 74
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->h:Ljava/lang/String;

    .line 76
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p0
.end method
