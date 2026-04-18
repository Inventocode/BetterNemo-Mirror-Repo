.class public Lcn/com/chinatelecom/account/api/CtAuth;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CtAuth"

.field private static volatile instance:Lcn/com/chinatelecom/account/api/CtAuth; = null

.field public static mAppId:Ljava/lang/String; = ""

.field public static mAppSecret:Ljava/lang/String; = ""

.field public static mContext:Landroid/content/Context;

.field public static mHandler:Landroid/os/Handler;

.field public static mTraceLogger:Lcn/com/chinatelecom/account/api/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/com/chinatelecom/account/api/CtAuth;
    .registers 2

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->instance:Lcn/com/chinatelecom/account/api/CtAuth;

    if-nez v0, :cond_17

    const-class v0, Lcn/com/chinatelecom/account/api/CtAuth;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcn/com/chinatelecom/account/api/CtAuth;->instance:Lcn/com/chinatelecom/account/api/CtAuth;

    if-nez v1, :cond_12

    new-instance v1, Lcn/com/chinatelecom/account/api/CtAuth;

    invoke-direct {v1}, Lcn/com/chinatelecom/account/api/CtAuth;-><init>()V

    sput-object v1, Lcn/com/chinatelecom/account/api/CtAuth;->instance:Lcn/com/chinatelecom/account/api/CtAuth;

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
    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->instance:Lcn/com/chinatelecom/account/api/CtAuth;

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/account/api/TraceLogger;

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CT_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/account/api/TraceLogger;

    invoke-interface {v0, p0, p1}, Lcn/com/chinatelecom/account/api/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public static postResultOnMainThread(Ljava/lang/String;Lorg/json/JSONObject;Lcn/com/chinatelecom/account/api/ResultListener;)V
    .registers 4

    new-instance v0, Lcn/com/chinatelecom/account/api/d;

    invoke-direct {v0, p2, p0, p1}, Lcn/com/chinatelecom/account/api/d;-><init>(Lcn/com/chinatelecom/account/api/ResultListener;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p0, Lcn/com/chinatelecom/account/api/CtAuth;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/account/api/TraceLogger;

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CT_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/account/api/TraceLogger;

    invoke-interface {v0, p0, p1, p2}, Lcn/com/chinatelecom/account/api/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/TraceLogger;)V
    .registers 6

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_25

    if-eqz p3, :cond_1d

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_f
    sput-object p1, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    sget-object p1, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/d/c;->a(Landroid/content/Context;)V

    sput-object p2, Lcn/com/chinatelecom/account/api/CtAuth;->mAppId:Ljava/lang/String;

    sput-object p3, Lcn/com/chinatelecom/account/api/CtAuth;->mAppSecret:Ljava/lang/String;

    sput-object p4, Lcn/com/chinatelecom/account/api/CtAuth;->mTraceLogger:Lcn/com/chinatelecom/account/api/TraceLogger;

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appSecret must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appId must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPreLogin(Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V
    .registers 8

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->TAG:Ljava/lang/String;

    const-string v1, "called requestPreLogin()"

    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_a

    return-void

    :cond_a
    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mAppSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_72

    :cond_20
    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/k;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1, p1, p3}, Lcn/com/chinatelecom/account/api/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lorg/json/JSONObject;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void

    :cond_30
    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Lcn/com/chinatelecom/account/api/c/a;

    sget-object v1, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/com/chinatelecom/account/api/CtAuth;->mAppId:Ljava/lang/String;

    sget-object v3, Lcn/com/chinatelecom/account/api/CtAuth;->mAppSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcn/com/chinatelecom/account/api/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/com/chinatelecom/account/api/e/b;->a:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/com/chinatelecom/account/api/c/a;->a(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V

    return-void

    :cond_4d
    sget-object v0, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Lcn/com/chinatelecom/account/api/c/a;

    sget-object v1, Lcn/com/chinatelecom/account/api/CtAuth;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/com/chinatelecom/account/api/CtAuth;->mAppId:Ljava/lang/String;

    sget-object v3, Lcn/com/chinatelecom/account/api/CtAuth;->mAppSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcn/com/chinatelecom/account/api/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/com/chinatelecom/account/api/e/b;->a:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/com/chinatelecom/account/api/c/a;->b(Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V

    return-void

    :cond_6a
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/k;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1, p1, p3}, Lcn/com/chinatelecom/account/api/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lorg/json/JSONObject;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void

    :cond_72
    :goto_72
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/k;->e()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1, p1, p3}, Lcn/com/chinatelecom/account/api/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lorg/json/JSONObject;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method

.method public requestPreLogin(Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;)V
    .registers 4

    sget v0, Lcn/com/chinatelecom/account/api/e;->a:I

    invoke-virtual {p0, p1, v0, p2}, Lcn/com/chinatelecom/account/api/CtAuth;->requestPreLogin(Lcn/com/chinatelecom/account/api/CtSetting;ILcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method
