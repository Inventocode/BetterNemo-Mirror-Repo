.class public Lcom/umeng/analytics/pro/o;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/o$c;,
        Lcom/umeng/analytics/pro/o$a;,
        Lcom/umeng/analytics/pro/o$d;,
        Lcom/umeng/analytics/pro/o$b;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context; = null

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "ana_is_f"

.field private static final n:Ljava/lang/String; = "thtstart"

.field private static final o:Ljava/lang/String; = "dstk_last_time"

.field private static final p:Ljava/lang/String; = "dstk_cnt"

.field private static final q:Ljava/lang/String; = "gkvc"

.field private static final r:Ljava/lang/String; = "ekvc"

.field private static final t:Ljava/lang/String; = "-1"

.field private static final x:Ljava/lang/String; = "com.umeng.umcrash.UMCrashUtils"

.field private static y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static z:Ljava/lang/reflect/Method;


# instance fields
.field private b:Lcom/umeng/analytics/pro/o$c;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lorg/json/JSONArray;

.field private final h:I

.field private i:I

.field private j:I

.field private k:J

.field private final s:J

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 112
    invoke-static {}, Lcom/umeng/analytics/pro/o;->h()V

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    .line 72
    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    .line 73
    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    const/16 v0, 0xa

    .line 79
    iput v0, p0, Lcom/umeng/analytics/pro/o;->f:I

    .line 81
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    const/16 v0, 0x1388

    .line 82
    iput v0, p0, Lcom/umeng/analytics/pro/o;->h:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/umeng/analytics/pro/o;->i:I

    .line 84
    iput v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    const-wide/16 v1, 0x0

    .line 85
    iput-wide v1, p0, Lcom/umeng/analytics/pro/o;->k:J

    const-wide/32 v3, 0x1b77400

    .line 94
    iput-wide v3, p0, Lcom/umeng/analytics/pro/o;->s:J

    .line 98
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/o;->u:Z

    .line 99
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/o;->v:Z

    .line 103
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    .line 145
    :try_start_34
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "thtstart"

    .line 146
    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/o;->k:J

    const-string v1, "gkvc"

    .line 147
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/analytics/pro/o;->i:I

    const-string v1, "ekvc"

    .line 148
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    .line 149
    new-instance v0, Lcom/umeng/analytics/pro/o$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/o$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_59

    :catchall_59
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/o$1;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;
    .registers 2

    .line 159
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    .line 164
    :cond_c
    invoke-static {}, Lcom/umeng/analytics/pro/o$b;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .registers 9

    const-string v0, "header"

    .line 945
    :try_start_2
    invoke-static {p1}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-lez v3, :cond_20

    .line 946
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "eof"

    .line 948
    invoke-static {p1}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 949
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 952
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3, p1}, Lcom/umeng/analytics/pro/q;->a(Landroid/content/Context;JLorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_20

    :catchall_20
    :cond_20
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 201
    sget-object v0, Lcom/umeng/analytics/pro/o;->y:Ljava/lang/Class;

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/umeng/analytics/pro/o;->z:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    :try_start_9
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 203
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_1c

    :catchall_15
    const-string p1, "MobclickRT"

    const-string p2, "--->>> reflect call setPuidAndProvider method of crash lib failed."

    .line 205
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private a(JI)Z
    .registers 8

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1e

    .line 1491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/32 p1, 0x1b77400

    cmp-long v3, v1, p1

    if-lez v3, :cond_17

    .line 1493
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->o()V

    return v0

    :cond_17
    const/16 p1, 0x1388

    if-ge p3, p1, :cond_1c

    return v0

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    return v0
.end method

.method private a(Lorg/json/JSONArray;)Z
    .registers 9

    .line 608
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const-string v1, "$$_onUMengEnterForeground"

    const-string v2, "$$_onUMengEnterBackground"

    const-string v3, "$$_onUMengEnterForegroundInitError"

    .line 612
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v3, v0, :cond_2e

    .line 616
    :try_start_17
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2b

    const-string v6, "id"

    .line 619
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_2b

    if-eqz v5, :cond_2b

    add-int/lit8 v4, v4, 0x1

    :catchall_2b
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2e
    if-lt v4, v0, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v2
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 9

    const-string v0, "ekv"

    .line 642
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 645
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v2, v0, :cond_35

    .line 651
    :try_start_f
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 652
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 653
    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 654
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 655
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 657
    invoke-direct {p0, v6}, Lcom/umeng/analytics/pro/o;->a(Lorg/json/JSONArray;)Z

    move-result v6
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_32

    if-eqz v6, :cond_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :catchall_32
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_35
    if-lt v3, v0, :cond_39

    const/4 p1, 0x1

    return p1

    :cond_39
    return v1
.end method

.method private b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .registers 7

    .line 968
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/q;->a(Lorg/json/JSONObject;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_24

    const/4 p1, 0x0

    .line 971
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    .line 972
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/i;->b()V

    const-string p2, "MobclickRT"

    const-string p3, "--->>> Instant session packet overload !!! "

    .line 973
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_24

    :catchall_24
    :cond_24
    return-object p1
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 6

    .line 813
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->c()Z

    move-result v0

    if-nez v0, :cond_56

    .line 814
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->f()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string v1, "__av"

    .line 816
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__vc"

    .line 817
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    :try_start_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_56

    const-string v3, "app_version"

    if-eqz v2, :cond_3e

    .line 821
    :try_start_34
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_41

    .line 823
    :cond_3e
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    :goto_41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_56

    const-string v2, "version_code"

    if-eqz v1, :cond_53

    .line 827
    :try_start_49
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_56

    .line 829
    :cond_53
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_56

    :catchall_56
    :cond_56
    :goto_56
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 7

    .line 991
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->e()Z

    move-result v0

    const-string v1, "version_code"

    const-string v2, "app_version"

    if-nez v0, :cond_4f

    .line 992
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->g()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_61

    const-string v3, "__av"

    .line 994
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__vc"

    .line 995
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    :try_start_28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 998
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3b

    .line 1000
    :cond_38
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1003
    :goto_3b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1004
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_61

    .line 1006
    :cond_4b
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_61

    .line 1016
    :cond_4f
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catchall {:try_start_28 .. :try_end_61} :catchall_61

    :catchall_61
    :cond_61
    :goto_61
    return-void
.end method

.method private c(Z)Z
    .registers 5

    .line 1597
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1601
    :cond_8
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 1605
    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    if-nez v0, :cond_1a

    .line 1606
    new-instance v0, Lcom/umeng/analytics/pro/o$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/o$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    .line 1609
    :cond_1a
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->a()V

    .line 1611
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 1613
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1616
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-nez v1, :cond_37

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-nez v1, :cond_37

    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v1, :cond_40

    .line 1620
    :cond_37
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->p()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1621
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    .line 1625
    :cond_40
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_4d

    .line 1626
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->p()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1627
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    .line 1631
    :cond_4d
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "数据发送策略 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    :cond_6f
    return p1
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 22

    move-object/from16 v0, p1

    const-string v1, "autopages"

    const-string v2, "version_code"

    const-string v3, "analytics"

    const-string v4, "channel"

    const-string v5, "appkey"

    const-string v6, "device_model"

    const-string v7, "active_user"

    const-string v8, "device_id"

    const-string v9, "activate_msg"

    const-string v10, "sdk_version"

    const-string v11, "sessions"

    const-string v12, "error"

    const-string v13, "gkv"

    const-string v14, "header"

    const-string v15, "ekv"

    move-object/from16 v16, v4

    const-string v4, "dplus"

    if-nez v0, :cond_27

    return-void

    .line 1898
    :cond_27
    :try_start_27
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v17

    if-gtz v17, :cond_2e

    return-void

    :cond_2e
    move-object/from16 v17, v5

    .line 1899
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1901
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_205

    .line 1902
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1903
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_91

    move-object/from16 v18, v2

    .line 1904
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1905
    invoke-virtual {v5, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1906
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_93

    .line 1907
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[埋点验证模式]事件:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_8b

    .line 1910
    :cond_73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "事件:"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1913
    :goto_8b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_93

    :cond_91
    move-object/from16 v18, v2

    .line 1916
    :cond_93
    :goto_93
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 1917
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1918
    invoke-virtual {v5, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1919
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_e2

    .line 1920
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 1922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[埋点验证模式]游戏事件:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_dd

    .line 1924
    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "游戏事件:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1926
    :goto_dd
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1929
    :cond_e2
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 1930
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1931
    invoke-virtual {v5, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1932
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_131

    .line 1933
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v2

    if-eqz v2, :cond_114

    .line 1934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[埋点验证模式]错误:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_12c

    .line 1936
    :cond_114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "错误:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1938
    :goto_12c
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1941
    :cond_131
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 1942
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1944
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    .line 1946
    :goto_141
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v13, v15, :cond_162

    .line 1947
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_15f

    .line 1948
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v19

    if-lez v19, :cond_15f

    .line 1949
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15c

    .line 1950
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1952
    :cond_15c
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_15f
    add-int/lit8 v13, v13, 0x1

    goto :goto_141

    .line 1955
    :cond_162
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1956
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1a8

    .line 1957
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[埋点验证模式]会话:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_1a2

    .line 1960
    :cond_18a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "会话:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1962
    :goto_1a2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v1

    .line 1965
    :cond_1a8
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b5

    .line 1966
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1967
    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1969
    :cond_1b5
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 1970
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1971
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1972
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_207

    .line 1973
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1e7

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[埋点验证模式]账号:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_1ff

    .line 1976
    :cond_1e7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "账号:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 1978
    :goto_1ff
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_207

    :cond_205
    move-object/from16 v18, v2

    .line 1983
    :cond_207
    :goto_207
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 1984
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1985
    invoke-virtual {v5, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1988
    :cond_214
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 1989
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 1990
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2a5

    .line 1991
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2a5

    .line 1992
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_239

    .line 1993
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1995
    :cond_239
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_246

    .line 1996
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1998
    :cond_246
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_253

    .line 1999
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_253
    move-object/from16 v1, v18

    .line 2001
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_264

    const-string v2, "version"

    .line 2002
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_264
    move-object/from16 v1, v17

    .line 2004
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_273

    .line 2005
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_273
    move-object/from16 v1, v16

    .line 2007
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_282

    .line 2008
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2010
    :cond_282
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2a5

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "基础信息:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 2012
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2017
    :cond_2a5
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I
    :try_end_2a8
    .catchall {:try_start_27 .. :try_end_2a8} :catchall_2a9

    goto :goto_2ad

    :catchall_2a9
    move-exception v0

    .line 2022
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_2ad
    return-void
.end method

.method private d(Z)Z
    .registers 4

    .line 2357
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    if-nez v0, :cond_b

    .line 2358
    new-instance v0, Lcom/umeng/analytics/pro/o$c;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/o$c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    .line 2361
    :cond_b
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 2362
    instance-of v1, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v1, :cond_24

    if-eqz p1, :cond_1e

    .line 2364
    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;->shouldSendMessageByInstant()Z

    move-result p1

    return p1

    :cond_1e
    const/4 p1, 0x0

    .line 2366
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->shouldSendMessage(Z)Z

    move-result p1

    return p1

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private e(Ljava/lang/Object;)V
    .registers 7

    const-string v0, "__t"

    .line 1435
    :try_start_2
    check-cast p1, Lorg/json/JSONObject;

    const/16 v1, 0x802

    .line 1436
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 1437
    iget-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/o;->i:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/o;->a(JI)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 1440
    :cond_17
    iget v0, p0, Lcom/umeng/analytics/pro/o;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/o;->i:I

    goto :goto_37

    :cond_1e
    const/16 v1, 0x801

    .line 1441
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_37

    .line 1442
    iget-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    iget v2, p0, Lcom/umeng/analytics/pro/o;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/analytics/pro/o;->a(JI)Z

    move-result v0

    if-nez v0, :cond_31

    return-void

    .line 1445
    :cond_31
    iget v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    .line 1447
    :cond_37
    :goto_37
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1448
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    if-nez v0, :cond_48

    .line 1449
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    .line 1451
    :cond_48
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1452
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONArray;)V

    .line 1453
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    goto :goto_9b

    .line 1455
    :cond_60
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/pro/o;->f:I

    if-lt v0, v1, :cond_83

    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** 超过10个事件，事件落库。"

    .line 1456
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONArray;)V

    .line 1458
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    .line 1460
    :cond_83
    iget-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_91

    .line 1461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/pro/o;->k:J

    .line 1463
    :cond_91
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_96
    .catchall {:try_start_2 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception p1

    .line 1467
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_9b
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 19

    move-object/from16 v0, p1

    const-string v1, "version_code"

    const-string v2, "analytics"

    const-string v3, "channel"

    const-string v4, "appkey"

    const-string v5, "device_model"

    const-string v6, "device_id"

    const-string v7, "sdk_version"

    const-string v8, "active_user"

    const-string v9, "sessions"

    const-string v10, "header"

    if-nez v0, :cond_19

    return-void

    .line 2030
    :cond_19
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-gtz v11, :cond_20

    return-void

    .line 2031
    :cond_20
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2033
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ae

    .line 2034
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2036
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7e

    .line 2037
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 2039
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    const/4 v14, 0x0

    .line 2041
    :goto_3f
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_57

    .line 2042
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_54

    .line 2043
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v16

    if-lez v16, :cond_54

    .line 2044
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_54
    add-int/lit8 v14, v14, 0x1

    goto :goto_3f

    .line 2047
    :cond_57
    invoke-virtual {v11, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2048
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_7e

    .line 2049
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "本次启动会话:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 2050
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v11, v9

    .line 2054
    :cond_7e
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ae

    .line 2055
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2056
    invoke-virtual {v11, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2057
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_ae

    .line 2058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "本次启动账号:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 2059
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2065
    :cond_ae
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_139

    .line 2066
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_139

    .line 2067
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 2068
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_139

    .line 2069
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 2070
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2072
    :cond_d3
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 2073
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2075
    :cond_e0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 2076
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2078
    :cond_ed
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const-string v2, "version"

    .line 2079
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2081
    :cond_fc
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 2082
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2084
    :cond_109
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 2085
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2088
    :cond_116
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_139

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "本次启动基础信息:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 2090
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 2095
    :cond_139
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I
    :try_end_13c
    .catchall {:try_start_19 .. :try_end_13c} :catchall_13d

    goto :goto_141

    :catchall_13d
    move-exception v0

    .line 2100
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :goto_141
    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .registers 9

    .line 2499
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_80

    .line 2500
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_80

    :cond_b
    const-string v0, "ts"

    .line 2501
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2503
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    .line 2504
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    .line 2507
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8b

    const/4 v2, 0x0

    .line 2508
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8b

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 2510
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v4, v0, v1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;J)V

    .line 2512
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/umeng/analytics/pro/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "MobclickRT"

    .line 2513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;JZ)Z

    move-result p1

    .line 2516
    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    .line 2518
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v2

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    if-eqz p1, :cond_8b

    .line 2521
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;J)V
    :try_end_7f
    .catchall {:try_start_0 .. :try_end_7f} :catchall_81

    goto :goto_8b

    :cond_80
    :goto_80
    return-void

    :catchall_81
    move-exception p1

    .line 2525
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_8b

    const-string v0, " Excepthon  in  onProfileSignOff"

    .line 2526
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8b
    :goto_8b
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 7

    :try_start_0
    const-string v0, "header"

    .line 2182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    .line 2183
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_a5

    const/4 v1, 0x0

    const-string v2, "sessions"

    const-string v3, "analytics"

    const-string v4, "content"

    if-eqz v0, :cond_70

    .line 2185
    :try_start_15
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2186
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2190
    :cond_1f
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_a5

    const-string v4, "MobclickRT"

    if-eqz v0, :cond_55

    .line 2195
    :try_start_27
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2197
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2198
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2199
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_55

    const-string v0, "id"

    .line 2201
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "--->>> removeAllInstantData: really delete instant session data"

    .line 2206
    invoke-static {v4, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/i;->b(Ljava/lang/String;)V

    .line 2212
    :cond_55
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->b()V

    const-string p1, "--->>> removeAllInstantData: send INSTANT_SESSION_START_CONTINUE event because OVERSIZE."

    .line 2215
    invoke-static {v4, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 v0, 0x1101

    .line 2217
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 2216
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_a5

    .line 2221
    :cond_70
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2222
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2225
    :cond_7a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2226
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 2227
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_9c

    .line 2229
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 2230
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/i;->a(ZZ)V

    .line 2235
    :cond_9c
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->b()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_a5} :catch_a5

    :catch_a5
    :goto_a5
    return-void
.end method

.method static synthetic g()Landroid/content/Context;
    .registers 1

    .line 65
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    return-object v0
.end method

.method private g(Ljava/lang/Object;)V
    .registers 10

    .line 2534
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    .line 2535
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    .line 2537
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_8d

    .line 2538
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_14

    goto/16 :goto_8d

    :cond_14
    const-string v0, "provider"

    .line 2539
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    .line 2540
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    .line 2541
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2543
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_40

    .line 2544
    aget-object v6, p1, v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 2546
    :cond_40
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v6, v2, v3}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;J)V

    .line 2548
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object p1

    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/umeng/analytics/pro/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2550
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v6

    sget-object v7, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v3, v5}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;JZ)Z

    move-result v5

    .line 2552
    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v6, v0, v1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MobclickRT"

    .line 2555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> onProfileSignIn: force generate new session: session id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    if-eqz v5, :cond_8d

    .line 2559
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v3}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;J)V
    :try_end_8c
    .catchall {:try_start_0 .. :try_end_8c} :catchall_8d

    nop

    :catchall_8d
    :cond_8d
    :goto_8d
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 8

    :try_start_0
    const-string v0, "header"

    .line 2250
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "eof"

    .line 2251
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_bb

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sessions"

    const-string v4, "analytics"

    const-string v5, "content"

    if-eqz v0, :cond_5d

    .line 2253
    :try_start_16
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2254
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2258
    :cond_20
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 2263
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2265
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 2267
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->i()V

    .line 2268
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->h()V

    .line 2269
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    .line 2270
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->a()V

    goto :goto_bb

    :cond_55
    const-string p1, "MobclickRT"

    const-string v0, "--->>> Error, Should not go to this branch."

    .line 2273
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 2278
    :cond_5d
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2279
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2282
    :cond_67
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 2283
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b2

    .line 2284
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_b2

    .line 2286
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2287
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/umeng/analytics/pro/i;->b(ZZ)V

    :cond_88
    const-string v0, "ekv"

    .line 2289
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2290
    :cond_98
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/i;->h()V

    :cond_a1
    const-string v0, "error"

    .line 2293
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 2294
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->i()V

    .line 2299
    :cond_b2
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->a()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_bb} :catch_bb

    :catch_bb
    :cond_bb
    :goto_bb
    return-void
.end method

.method private static h()V
    .registers 5

    .line 117
    const-class v0, Ljava/lang/String;

    :try_start_2
    const-class v1, Lcom/umeng/umcrash/UMCrashUtils;

    .line 119
    sput-object v1, Lcom/umeng/analytics/pro/o;->y:Ljava/lang/Class;

    const-string v2, "setPuidAndProvider"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 122
    sput-object v0, Lcom/umeng/analytics/pro/o;->z:Ljava/lang/reflect/Method;
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_19

    :catchall_19
    :cond_19
    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .registers 5

    const-string v0, "__ii"

    .line 2570
    :try_start_2
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_2e

    .line 2571
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2e

    .line 2572
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2573
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2574
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 2575
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2576
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v2, p1, v1}, Lcom/umeng/analytics/pro/i;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2e

    :catchall_2e
    :cond_2e
    return-void
.end method

.method private i()V
    .registers 6

    const-string v0, "exception"

    .line 530
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/o;->b(J)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 532
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    goto :goto_69

    :cond_16
    const-string v2, "header"

    .line 534
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "content"

    .line 535
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 537
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v3, :cond_69

    if-eqz v2, :cond_69

    if-eqz v1, :cond_69

    const-string v3, "MobclickRT"

    const-string v4, "--->>> constructInstantMessage: request build envelope."

    .line 539
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v4, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 545
    :try_start_3d
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_5c

    goto :goto_5d

    :catchall_5c
    nop

    .line 552
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 553
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/o;->e(Lorg/json/JSONObject;)V

    .line 556
    :cond_66
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/o;->b(Ljava/lang/Object;)V

    :cond_69
    :goto_69
    return-void
.end method

.method private j()V
    .registers 6

    const-string v0, "exception"

    .line 570
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/o;->a(J)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 572
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    goto :goto_62

    :cond_16
    const-string v2, "header"

    .line 573
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "content"

    .line 574
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 575
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v3, :cond_62

    if-eqz v2, :cond_62

    if-eqz v1, :cond_62

    .line 579
    invoke-static {v3, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 584
    :try_start_34
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "MobclickRT"

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build envelope error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_55

    goto :goto_56

    :catchall_55
    nop

    .line 590
    :cond_56
    :goto_56
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 591
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/o;->d(Lorg/json/JSONObject;)V

    .line 595
    :cond_5f
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/Object;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private k()Lorg/json/JSONObject;
    .registers 4

    .line 980
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->l()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_6
    const-string v1, "st"

    const-string v2, "1"

    .line 983
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_d

    :catchall_d
    :cond_d
    return-object v0
.end method

.method private l()Lorg/json/JSONObject;
    .registers 12

    const-string v0, "vers_name"

    const-string v1, "$ud_da"

    const-string v2, "$pr_ve"

    const-string v3, ""

    .line 1026
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1028
    :try_start_d
    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v5, :cond_21

    sget-object v5, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v5, :cond_21

    const-string v6, "wrapper_version"

    .line 1029
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "wrapper_type"

    .line 1030
    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    :cond_21
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v5

    const-string v6, "vertical_type"

    .line 1043
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_145

    const/4 v6, 0x1

    const-string v7, "9.4.4"

    const-string v8, "sdk_version"

    if-ne v5, v6, :cond_45

    .line 1045
    :try_start_33
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1046
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_40

    goto :goto_41

    :cond_40
    move-object v7, v5

    .line 1049
    :goto_41
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_48

    .line 1051
    :cond_45
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1058
    :goto_48
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1059
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    const-string v6, "secret"

    .line 1060
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    :cond_5d
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v6, "pr_ve"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1065
    sget-object v6, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1068
    sget-object v7, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v8, "ekv_bl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1069
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_87

    .line 1070
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z
    :try_end_7c
    .catchall {:try_start_33 .. :try_end_7c} :catchall_145

    const-string v9, "$ekv_bl_ver"

    if-eqz v8, :cond_84

    .line 1071
    :try_start_80
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_87

    .line 1073
    :cond_84
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    :cond_87
    :goto_87
    sget-object v7, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v8, "ekv_wl_ver"

    invoke-static {v7, v8, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1078
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a2

    .line 1079
    sget-boolean v8, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z
    :try_end_97
    .catchall {:try_start_80 .. :try_end_97} :catchall_145

    const-string v9, "$ekv_wl_ver"

    if-eqz v8, :cond_9f

    .line 1080
    :try_start_9b
    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a2

    .line 1082
    :cond_9f
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a2
    :goto_a2
    const-string v7, "pro_ver"

    const-string v8, "1.0.0"

    .line 1087
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1090
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->s()Z

    move-result v7

    if-eqz v7, :cond_c7

    const-string v7, "atm"

    const-string v8, "1"

    .line 1091
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_c7

    .line 1093
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ana_is_f"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1099
    :cond_c7
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_149

    .line 1107
    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_149

    .line 1111
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    .line 1112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_fd
    .catchall {:try_start_9b .. :try_end_fd} :catchall_145

    const-string v8, "vers_date"

    const-string v9, "vers_pre_version"

    if-eqz v5, :cond_113

    :try_start_103
    const-string v5, "0"

    .line 1117
    invoke-interface {v6, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1119
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1123
    :cond_113
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "pre_version"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cur_version"

    .line 1125
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pre_date"

    .line 1126
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1127
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vers_code"

    .line 1128
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1129
    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1130
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_144
    .catchall {:try_start_103 .. :try_end_144} :catchall_145

    goto :goto_149

    :catchall_145
    move-exception v0

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_149
    :goto_149
    return-object v4
.end method

.method private m()Ljava/lang/String;
    .registers 9

    const-string v0, ""

    const-string v1, "pre_version"

    const/4 v2, 0x0

    .line 1303
    :try_start_5
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v4, "pr_ve"

    invoke-static {v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_73

    const-string v4, "0"

    if-eqz v3, :cond_73

    .line 1305
    :try_start_15
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1306
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    return-object v0

    .line 1308
    :cond_20
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2c

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    .line 1313
    :cond_2c
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1314
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1316
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_73

    const-string v7, "cur_version"

    if-eqz v6, :cond_53

    .line 1317
    :try_start_40
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v2, v4

    goto :goto_73

    .line 1320
    :cond_53
    iget-object v4, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    .line 1322
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1323
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_70
    .catchall {:try_start_40 .. :try_end_70} :catchall_73

    move-object v2, v0

    goto :goto_73

    :cond_72
    move-object v2, v3

    .line 1334
    :catchall_73
    :cond_73
    :goto_73
    iput-object v2, p0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    return-object v2
.end method

.method private n()Ljava/lang/String;
    .registers 8

    const-string v0, "pre_date"

    const/4 v1, 0x0

    .line 1347
    :try_start_3
    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v3, "ud_da"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1350
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1351
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    return-object v0

    .line 1353
    :cond_1c
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_28

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    .line 1354
    :cond_28
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1355
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_88

    const-string v4, "yyyy-MM-dd"

    if-eqz v3, :cond_5c

    .line 1356
    :try_start_38
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    .line 1357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1358
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_87

    .line 1361
    :cond_5c
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    .line 1362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1363
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    .line 1364
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_85
    .catchall {:try_start_38 .. :try_end_85} :catchall_88

    move-object v1, v3

    goto :goto_88

    :cond_87
    :goto_87
    move-object v1, v2

    .line 1374
    :catchall_88
    :cond_88
    :goto_88
    iput-object v1, p0, Lcom/umeng/analytics/pro/o;->e:Ljava/lang/String;

    return-object v1
.end method

.method private o()V
    .registers 6

    const/4 v0, 0x0

    .line 1509
    :try_start_1
    iput v0, p0, Lcom/umeng/analytics/pro/o;->i:I

    .line 1510
    iput v0, p0, Lcom/umeng/analytics/pro/o;->j:I

    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/analytics/pro/o;->k:J

    .line 1513
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1514
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dstk_cnt"

    .line 1515
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_28

    :catchall_28
    return-void
.end method

.method private p()Z
    .registers 5

    .line 1649
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/u;->b()Ljava/lang/String;

    move-result-object v0

    .line 1650
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1651
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    .line 1654
    :cond_13
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4b

    const/4 v0, 0x0

    .line 1657
    :goto_1d
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4c

    .line 1658
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 1659
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_48

    const-string v3, "__i"

    .line 1660
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1661
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_4c

    if-eqz v2, :cond_48

    :cond_47
    return v1

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_4b
    return v1

    :catchall_4c
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method

.method private q()V
    .registers 8

    const-string v0, "__i"

    .line 2402
    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_57

    .line 2408
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 2409
    :goto_10
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 2411
    :try_start_18
    iget-object v3, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 2412
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_4f

    .line 2413
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2414
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_52

    const-string v6, "-1"

    if-nez v5, :cond_38

    :try_start_32
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2415
    :cond_38
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/u;->b()Ljava/lang/String;

    move-result-object v4

    .line 2416
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    goto :goto_48

    :cond_47
    move-object v6, v4

    .line 2419
    :goto_48
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2421
    :cond_4b
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_52

    .line 2423
    :cond_4f
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_52

    :catchall_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2427
    :cond_55
    iput-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    :cond_57
    return-void
.end method

.method private r()V
    .registers 8

    const-string v0, "first_activate_time"

    .line 2436
    :try_start_2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->s()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2437
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v1, :cond_2b

    .line 2438
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-wide/16 v2, 0x0

    .line 2440
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_2b

    .line 2442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2443
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2b

    :catchall_2b
    :cond_2b
    return-void
.end method

.method private s()Z
    .registers 6

    .line 2484
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v0, :cond_1a

    .line 2485
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "ana_is_f"

    const-wide/16 v2, -0x1

    .line 2487
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_1a

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1a

    const/4 v0, 0x1

    return v0

    :catchall_1a
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(J)Lorg/json/JSONObject;
    .registers 11

    .line 685
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 692
    invoke-static {}, Lcom/umeng/analytics/pro/r;->a()Lcom/umeng/analytics/pro/r;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v2

    .line 697
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gtz v3, :cond_2b

    if-eq v2, v4, :cond_91

    return-object v1

    .line 707
    :cond_2b
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x1

    const-string v6, "userlevel"

    const-string v7, "active_user"

    if-ne v3, v5, :cond_4c

    .line 708
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3f

    if-eq v2, v4, :cond_3f

    return-object v1

    .line 715
    :cond_3f
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    if-eq v2, v4, :cond_66

    return-object v1

    .line 722
    :cond_4c
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_66

    .line 724
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 725
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    if-eq v2, v4, :cond_66

    return-object v1

    :cond_66
    const-string v3, "sessions"

    .line 734
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gkv"

    .line 735
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ekv"

    .line 736
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 737
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 738
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 739
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/o;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_91

    return-object v1

    .line 747
    :cond_91
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->l()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 749
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/o;->c(Lorg/json/JSONObject;)V

    .line 752
    :cond_9a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 754
    :try_start_9f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_d6

    const-string v6, "analytics"

    if-ne v2, v4, :cond_b1

    .line 756
    :try_start_a8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ba

    .line 758
    :cond_b1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_ba

    .line 759
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ba
    :goto_ba
    if-eqz v1, :cond_c7

    .line 762
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c7

    const-string v0, "header"

    .line 763
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    :cond_c7
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_d2

    const-string v0, "content"

    .line 767
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 770
    :cond_d2
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/o;->a(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_d6
    .catchall {:try_start_a8 .. :try_end_d6} :catchall_d6

    :catchall_d6
    return-object v3
.end method

.method public a()V
    .registers 6

    .line 168
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v0, :cond_39

    .line 170
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_7
    iget-boolean v1, p0, Lcom/umeng/analytics/pro/o;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    const-string v1, "MobclickRT"

    const-string v3, "--->>> network is now available, rebuild instant session data packet."

    .line 172
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 v3, 0x1101

    .line 174
    invoke-static {v1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 173
    invoke-static {v1, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 176
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_36

    .line 179
    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_22
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/o;->v:Z

    if-eqz v0, :cond_31

    .line 181
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 v3, 0x1102

    .line 182
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v4

    .line 181
    invoke-static {v0, v3, v4, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 184
    :cond_31
    monitor-exit v1

    goto :goto_39

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_33

    throw v0

    :catchall_36
    move-exception v1

    .line 176
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1

    :cond_39
    :goto_39
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "exception"

    if-eqz p1, :cond_22

    .line 2125
    :try_start_4
    check-cast p1, Lorg/json/JSONObject;

    .line 2130
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 2131
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x65

    .line 2132
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1b

    goto :goto_22

    .line 2135
    :cond_1b
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->g(Lorg/json/JSONObject;)V

    goto :goto_22

    .line 2138
    :cond_1f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->g(Lorg/json/JSONObject;)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_22

    :catchall_22
    :cond_22
    :goto_22
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 9

    .line 211
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->enable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_246

    packed-switch p2, :pswitch_data_25e

    packed-switch p2, :pswitch_data_26c

    packed-switch p2, :pswitch_data_276

    packed-switch p2, :pswitch_data_280

    packed-switch p2, :pswitch_data_28a

    goto/16 :goto_244

    .line 479
    :pswitch_1c  #0x2017
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string p2, "um_rtd_conf"

    invoke-static {p1, p2}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_244

    :pswitch_25  #0x2016
    if-nez p1, :cond_28

    return-void

    .line 461
    :cond_28
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_244

    .line 463
    :try_start_2c
    move-object p2, p1

    check-cast p2, Lorg/json/JSONObject;

    const-string v0, "startTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 464
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "period"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "debugkey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_244

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_244

    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_244

    .line 469
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v2, "um_rtd_conf"

    const-string v3, "startTime"

    invoke-static {v1, v2, v3, p2}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v1, "um_rtd_conf"

    const-string v2, "period"

    invoke-static {p2, v1, v2, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const-string v0, "um_rtd_conf"

    const-string v1, "debugkey"

    invoke-static {p2, v0, v1, p1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_2c .. :try_end_73} :catchall_244

    goto/16 :goto_244

    :pswitch_75  #0x2015
    const-string p1, "header_foreground_count"

    .line 442
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_244

    .line 444
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getGlobleActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 447
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;)V

    .line 451
    :cond_8a
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 v1, 0x2015

    .line 452
    invoke-static {v0}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    .line 451
    invoke-static/range {v0 .. v5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEventEx(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V

    goto/16 :goto_244

    :pswitch_9a  #0x2012
    const-string p1, "MobclickRT"

    const-string p2, "--->>> recv BUILD_ENVELOPE_IMMEDIATELY."

    .line 427
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :try_start_a1
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_244

    .line 430
    iget-object p1, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object p1

    .line 431
    instance-of p1, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz p1, :cond_b4

    return-void

    .line 435
    :cond_b4
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/o;->a(Z)V
    :try_end_b7
    .catchall {:try_start_a1 .. :try_end_b7} :catchall_244

    goto/16 :goto_244

    .line 422
    :pswitch_b9  #0x2011
    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/Object;Z)V

    goto/16 :goto_244

    :pswitch_be  #0x2010
    const-string p1, "MobclickRT"

    const-string p2, "--->>> receive DELAY_BUILD_ENVELOPE event."

    .line 412
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 p2, 0x2011

    .line 414
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 413
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 415
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    const/16 p2, 0x1102

    .line 416
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v0

    .line 415
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_244

    .line 406
    :pswitch_dd  #0x2009
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_244

    .line 403
    :pswitch_e6  #0x2007, 0x2008
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_244

    .line 355
    :pswitch_ef  #0x2005
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->k()V

    goto/16 :goto_244

    .line 349
    :pswitch_f8  #0x2004
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->m()V

    goto/16 :goto_244

    .line 343
    :pswitch_101  #0x2003
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_10a  #0x1104
    if-nez p1, :cond_10d

    return-void

    .line 318
    :cond_10d
    sget-object p2, Lcom/umeng/analytics/pro/o;->y:Ljava/lang/Class;

    if-eqz p2, :cond_148

    sget-object p2, Lcom/umeng/analytics/pro/o;->z:Ljava/lang/reflect/Method;

    if-nez p2, :cond_116

    goto :goto_148

    :cond_116
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_CHANGE_NOTIFY"

    .line 321
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_11d
    const-string p2, ""

    const-string v0, ""

    .line 325
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_244

    .line 326
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 327
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_143

    const-string v1, "provider"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_143

    const-string p2, "provider"

    .line 329
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "uid"

    .line 330
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_143
    invoke-direct {p0, v0, p2}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_244

    :cond_148
    :goto_148
    return-void

    .line 240
    :pswitch_149  #0x1103
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_15b

    if-eqz p1, :cond_244

    .line 245
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->e(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    goto/16 :goto_244

    .line 249
    :cond_15b
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 250
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 249
    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_173
    .catchall {:try_start_11d .. :try_end_173} :catchall_244

    goto/16 :goto_244

    .line 374
    :pswitch_175  #0x1102
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->c()V

    goto/16 :goto_244

    .line 391
    :pswitch_17a  #0x1101
    invoke-virtual {p0, p1, v2}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/Object;Z)V

    goto/16 :goto_244

    :pswitch_17f  #0x1100
    const-string p2, "MobclickRT"

    const-string v0, "--->>> INSTANT_SESSION_START"

    .line 380
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/u;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 382
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 383
    :try_start_192
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/o;->u:Z

    .line 384
    monitor-exit p2

    goto/16 :goto_244

    :catchall_197
    move-exception p1

    monitor-exit p2
    :try_end_199
    .catchall {:try_start_192 .. :try_end_199} :catchall_197

    throw p1

    .line 294
    :pswitch_19a  #0x100a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->h(Ljava/lang/Object;)V

    goto/16 :goto_244

    .line 287
    :pswitch_19f  #0x1009
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    goto/16 :goto_244

    .line 398
    :pswitch_1a4  #0x1008
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/u;->c(Landroid/content/Context;Ljava/lang/Object;)V

    goto/16 :goto_244

    :pswitch_1af  #0x1007
    const-string p2, "MobclickRT"

    const-string v0, "--->>> START_SESSION"

    .line 362
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 365
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->w:Ljava/lang/Object;

    monitor-enter p2

    .line 366
    :try_start_1c2
    iput-boolean v2, p0, Lcom/umeng/analytics/pro/o;->v:Z

    .line 367
    monitor-exit p2

    goto/16 :goto_244

    :catchall_1c7
    move-exception p1

    monitor-exit p2
    :try_end_1c9
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_1c7

    throw p1

    :pswitch_1ca  #0x1006
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNOFF"

    .line 309
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/Object;Z)V

    .line 312
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->f(Ljava/lang/Object;)V

    goto :goto_244

    :pswitch_1d8  #0x1005
    const-string p2, "MobclickRT"

    const-string v0, "--->>> PROFILE_SIGNIN"

    .line 300
    invoke-static {p2, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, v1, v2}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/Object;Z)V

    .line 303
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->g(Ljava/lang/Object;)V

    goto :goto_244

    .line 280
    :pswitch_1e6  #0x1004
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->c(Landroid/content/Context;)V

    goto :goto_244

    .line 274
    :pswitch_1ec  #0x1003
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/v;->a(Landroid/content/Context;)V

    goto :goto_244

    :pswitch_1f2  #0x1002
    if-eqz p1, :cond_1f7

    .line 260
    :try_start_1f4
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->e(Ljava/lang/Object;)V

    .line 262
    :cond_1f7
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "__i"

    .line 263
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-1"

    .line 264
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_244

    .line 265
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->a(Z)V

    goto :goto_244

    .line 219
    :pswitch_20b  #0x1001
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_22c

    if-eqz p1, :cond_218

    .line 224
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->e(Ljava/lang/Object;)V

    .line 226
    :cond_218
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "__i"

    .line 227
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "-1"

    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_244

    .line 230
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->a(Z)V

    goto :goto_244

    .line 233
    :cond_22c
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getSubProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 234
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    .line 233
    invoke-virtual {p2, v0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_244
    .catchall {:try_start_1f4 .. :try_end_244} :catchall_244

    :catchall_244
    :cond_244
    :goto_244
    return-void

    nop

    :pswitch_data_246
    .packed-switch 0x1001
        :pswitch_20b  #00001001
        :pswitch_1f2  #00001002
        :pswitch_1ec  #00001003
        :pswitch_1e6  #00001004
        :pswitch_1d8  #00001005
        :pswitch_1ca  #00001006
        :pswitch_1af  #00001007
        :pswitch_1a4  #00001008
        :pswitch_19f  #00001009
        :pswitch_19a  #0000100a
    .end packed-switch

    :pswitch_data_25e
    .packed-switch 0x1100
        :pswitch_17f  #00001100
        :pswitch_17a  #00001101
        :pswitch_175  #00001102
        :pswitch_149  #00001103
        :pswitch_10a  #00001104
    .end packed-switch

    :pswitch_data_26c
    .packed-switch 0x2003
        :pswitch_101  #00002003
        :pswitch_f8  #00002004
        :pswitch_ef  #00002005
    .end packed-switch

    :pswitch_data_276
    .packed-switch 0x2007
        :pswitch_e6  #00002007
        :pswitch_e6  #00002008
        :pswitch_dd  #00002009
    .end packed-switch

    :pswitch_data_280
    .packed-switch 0x2010
        :pswitch_be  #00002010
        :pswitch_b9  #00002011
        :pswitch_9a  #00002012
    .end packed-switch

    :pswitch_data_28a
    .packed-switch 0x2015
        :pswitch_75  #00002015
        :pswitch_25  #00002016
        :pswitch_1c  #00002017
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Z)V
    .registers 3

    const/4 p1, 0x1

    if-eqz p2, :cond_d

    .line 2385
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2386
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->i()V

    goto :goto_1e

    .line 2389
    :cond_d
    sget-object p2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 2391
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2392
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->i()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 495
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 497
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->b:Lcom/umeng/analytics/pro/o$c;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/o$c;->c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    .line 498
    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    const-string v1, "MobclickRT"

    if-eqz v0, :cond_38

    if-eqz p1, :cond_25

    .line 501
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "--->>> send session start in policy ReportQuasiRealtime."

    .line 502
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->j()V

    goto :goto_4a

    .line 506
    :cond_25
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "--->>> send normal data in policy ReportQuasiRealtime."

    .line 507
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->j()V

    goto :goto_4a

    .line 513
    :cond_38
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_APP:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "--->>> constructMessage()"

    .line 514
    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->j()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public b(J)Lorg/json/JSONObject;
    .registers 11

    .line 846
    invoke-static {}, Lcom/umeng/analytics/pro/y;->a()Lcom/umeng/analytics/pro/y;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/y;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    return-object v1

    .line 851
    :cond_16
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/pro/i;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 854
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "active_user"

    const/4 v5, 0x1

    if-eqz v3, :cond_5e

    .line 855
    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    aget-object v6, v3, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 856
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_45
    const-string v7, "provider"

    .line 858
    aget-object v2, v3, v2

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "puid"

    .line 859
    aget-object v3, v3, v5

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_5e

    .line 861
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_5d

    goto :goto_5e

    :catchall_5d
    nop

    .line 868
    :cond_5e
    :goto_5e
    invoke-static {}, Lcom/umeng/analytics/pro/r;->a()Lcom/umeng/analytics/pro/r;

    move-result-object v2

    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/pro/r;->a(Landroid/content/Context;)I

    move-result v2

    .line 871
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v5, :cond_78

    .line 872
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_78

    if-eq v2, v6, :cond_78

    return-object v1

    .line 884
    :cond_78
    invoke-static {}, Lcom/umeng/analytics/pro/r;->a()Lcom/umeng/analytics/pro/r;

    move-result-object v3

    sget-object v4, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Lcom/umeng/analytics/pro/r;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 889
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_8a

    if-eq v2, v6, :cond_8a

    return-object v1

    .line 899
    :cond_8a
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->k()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 901
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/o;->b(Lorg/json/JSONObject;)V

    .line 904
    :cond_93
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 905
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "analytics"

    if-ne v2, v6, :cond_aa

    .line 909
    :try_start_a1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b3

    .line 911
    :cond_aa
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_b3

    .line 912
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b3
    :goto_b3
    if-eqz v1, :cond_c0

    .line 915
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c0

    const-string v0, "header"

    .line 916
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 919
    :cond_c0
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_cb

    const-string v0, "content"

    .line 920
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    :cond_cb
    invoke-direct {p0, v3, p1, p2}, Lcom/umeng/analytics/pro/o;->b(Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_cf
    .catchall {:try_start_a1 .. :try_end_cf} :catchall_cf

    :catchall_cf
    return-object v3
.end method

.method public b(Z)Lorg/json/JSONObject;
    .registers 19

    const-string v1, "userlevel"

    const-string v0, "autopages"

    const-string v2, "sessions"

    const-string v3, "pages"

    const/4 v4, 0x0

    .line 1165
    :try_start_9
    sget-object v5, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Lcom/umeng/analytics/pro/i;->a(Z)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 1167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_18a

    move-object v4, v0

    goto/16 :goto_104

    .line 1170
    :cond_1f
    :try_start_1f
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_104

    .line 1171
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1172
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    .line 1173
    :goto_2f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_f7

    .line 1174
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 1175
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1176
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v10, :cond_4d

    if-eqz v11, :cond_4d

    .line 1179
    invoke-virtual {v9, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1180
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4d} :catch_fb
    .catchall {:try_start_1f .. :try_end_4d} :catchall_18a

    :cond_4d
    const-string v12, "page_start"

    if-eqz v10, :cond_a8

    if-eqz v11, :cond_a8

    .line 1184
    :try_start_53
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1186
    :goto_59
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_6b

    .line 1187
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 1188
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_59

    :cond_6b
    const/4 v10, 0x0

    .line 1191
    :goto_6c
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v10, v14, :cond_7e

    .line 1192
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 1193
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    .line 1195
    :cond_7e
    new-instance v10, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;

    invoke-direct {v10}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;-><init>()V

    .line 1196
    invoke-virtual {v10, v12}, Lcom/umeng/commonsdk/utils/JSONArraySortUtil;->setCompareKey(Ljava/lang/String;)V

    .line 1197
    invoke-static {v13, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1198
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1199
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_92
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 1200
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_92

    .line 1202
    :cond_a2
    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1203
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1206
    :cond_a8
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_ac} :catch_fb
    .catchall {:try_start_53 .. :try_end_ac} :catchall_18a

    const-string v11, "$page_num"

    if-eqz v10, :cond_e8

    .line 1207
    :try_start_b0
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v13, 0x0

    .line 1208
    :goto_b5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_db

    .line 1209
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1210
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d4

    const-string v15, "ts"

    move-object/from16 v16, v6

    .line 1211
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v14, v15, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1212
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_d6

    :cond_d4
    move-object/from16 v16, v6

    :goto_d6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_b5

    :cond_db
    move-object/from16 v16, v6

    .line 1215
    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1216
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_ee

    :cond_e8
    move-object/from16 v16, v6

    const/4 v5, 0x0

    .line 1218
    invoke-virtual {v9, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1221
    :goto_ee
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v16

    goto/16 :goto_2f

    .line 1223
    :cond_f7
    invoke-virtual {v4, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_fa} :catch_fb
    .catchall {:try_start_b0 .. :try_end_fa} :catchall_18a

    goto :goto_104

    :catch_fb
    move-exception v0

    :try_start_fc
    const-string v2, "merge pages error"

    .line 1226
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1234
    :cond_104
    :goto_104
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_11b

    const-string v2, ""

    .line 1236
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11b

    .line 1238
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1266
    :cond_11b
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_154

    const/4 v1, 0x0

    .line 1267
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_154

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_154

    .line 1268
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "provider"

    const/4 v5, 0x0

    .line 1269
    aget-object v5, v0, v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "puid"

    .line 1270
    aget-object v0, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1271
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_154

    const-string v0, "active_user"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1276
    :cond_154
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 1277
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1278
    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getGroupInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "group_info"

    .line 1279
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1282
    :cond_181
    invoke-static {}, Lcom/umeng/analytics/pro/r;->a()Lcom/umeng/analytics/pro/r;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lcom/umeng/analytics/pro/r;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_18a
    .catchall {:try_start_fc .. :try_end_18a} :catchall_18a

    :catchall_18a
    return-object v4
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    .line 2317
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/i;->d()V

    .line 2319
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->q()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "exception"

    if-eqz p1, :cond_22

    .line 2152
    :try_start_4
    check-cast p1, Lorg/json/JSONObject;

    .line 2157
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 2158
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x65

    .line 2159
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_1b

    goto :goto_22

    .line 2164
    :cond_1b
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->f(Lorg/json/JSONObject;)V

    goto :goto_22

    .line 2168
    :cond_1f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->f(Lorg/json/JSONObject;)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_22

    :catchall_22
    :cond_22
    :goto_22
    return-void
.end method

.method public c()V
    .registers 2

    .line 195
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/o;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 2

    .line 2307
    sget-object p1, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V

    .line 2308
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/o;->d()V

    const/4 p1, 0x0

    .line 2310
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2311
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->j()V

    :cond_12
    return-void
.end method

.method public d()V
    .registers 5

    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_21

    const-string v0, "MobclickRT"

    const-string v1, "--->>>*** flushMemoryData: 事件落库。"

    .line 1384
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/i;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/i;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/i;->a(Lorg/json/JSONArray;)V

    .line 1386
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->g:Lorg/json/JSONArray;

    .line 1388
    :cond_21
    sget-object v0, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1389
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lcom/umeng/analytics/pro/o;->k:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lcom/umeng/analytics/pro/o;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lcom/umeng/analytics/pro/o;->j:I

    .line 1390
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_46

    :catchall_46
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 2

    .line 2339
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->r()V

    .line 2342
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->m()Ljava/lang/String;

    .line 2343
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->n()Ljava/lang/String;

    const/4 p1, 0x1

    .line 2345
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/o;->a(Z)V

    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    .line 2328
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/o;->d(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2329
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->j()V

    :cond_a
    return-void
.end method

.method public f()J
    .registers 8

    const-string v0, "first_activate_time"

    const-wide/16 v1, 0x0

    .line 2461
    :try_start_4
    sget-object v3, Lcom/umeng/analytics/pro/o;->a:Landroid/content/Context;

    if-eqz v3, :cond_27

    .line 2462
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 2464
    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_27

    cmp-long v6, v4, v1

    if-nez v6, :cond_26

    .line 2466
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_26

    .line 2467
    :try_start_1a
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_27

    goto :goto_27

    :catchall_26
    :cond_26
    move-wide v1, v4

    :catchall_27
    :cond_27
    :goto_27
    return-wide v1
.end method
