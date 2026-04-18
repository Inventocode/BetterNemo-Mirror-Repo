.class public Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;
.super Ljava/lang/Object;


# static fields
.field private static volatile s_instance:Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;
    .registers 2

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->s_instance:Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->s_instance:Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    invoke-direct {v1}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;-><init>()V

    sput-object v1, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->s_instance:Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

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
    sget-object v0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->s_instance:Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    return-object v0
.end method

.method private initFail(Lcom/unikuwei/mianmi/account/shield/ResultListener;Ljava/lang/String;)V
    .registers 7

    const-string v0, ""

    invoke-static {p2}, Lcom/unikuwei/mianmi/account/shield/e/f;->b(Ljava/lang/String;)V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "resultCode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "resultMsg"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "resultData"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "traceId"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "operatorType"

    const-string v0, "CU"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_34

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/unikuwei/mianmi/account/shield/ResultListener;->onResult(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    if-eqz p1, :cond_5b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5b

    :cond_f
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    const-string p1, "重复初始化"

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/f;->b(Ljava/lang/String;)V

    return v1

    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/unikuwei/mianmi/account/shield/e/g;->a(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/unikuwei/mianmi/account/shield/e/g;->b(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_36

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/c;->a()Lcom/unikuwei/mianmi/account/shield/e/c;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "opencloud.wostore.cn"

    invoke-virtual {p1, v0, v2}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(Landroid/net/Network;Ljava/lang/String;)V

    :cond_36
    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/c/c;->a()Lcom/unikuwei/mianmi/account/shield/c/c;

    move-result-object p1

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3}, Lcom/unikuwei/mianmi/account/shield/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/i;->d(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->c(I)V

    return v1

    :cond_5b
    :goto_5b
    const-string p1, "初始化参数不能为空"

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/f;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public login(ILcom/unikuwei/mianmi/account/shield/ResultListener;)V
    .registers 6

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_27

    :cond_19
    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->a(I)V

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/c/c;->a()Lcom/unikuwei/mianmi/account/shield/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/unikuwei/mianmi/account/shield/c/c;->a(Landroid/content/Context;IILcom/unikuwei/mianmi/account/shield/ResultListener;)V

    return-void

    :cond_27
    :goto_27
    const-string p1, "sdk未初始化"

    invoke-direct {p0, p2, p1}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->initFail(Lcom/unikuwei/mianmi/account/shield/ResultListener;Ljava/lang/String;)V

    return-void
.end method

.method public mobileAuth(ILcom/unikuwei/mianmi/account/shield/ResultListener;)V
    .registers 6

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_27

    :cond_19
    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->a(I)V

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/c/c;->a()Lcom/unikuwei/mianmi/account/shield/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/unikuwei/mianmi/account/shield/c/c;->a(Landroid/content/Context;IILcom/unikuwei/mianmi/account/shield/ResultListener;)V

    return-void

    :cond_27
    :goto_27
    const-string p1, "sdk未初始化"

    invoke-direct {p0, p2, p1}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->initFail(Lcom/unikuwei/mianmi/account/shield/ResultListener;Ljava/lang/String;)V

    return-void
.end method

.method public setLogEnable(Z)V
    .registers 3

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/c/c;->a()Lcom/unikuwei/mianmi/account/shield/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unikuwei/mianmi/account/shield/c/c;->a(Z)V

    return-void
.end method
