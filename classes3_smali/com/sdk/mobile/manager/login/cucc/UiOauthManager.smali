.class public Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;
.super Lcom/sdk/base/module/manager/SDKManager;


# static fields
.field private static volatile manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/sdk/base/module/manager/SDKManager;-><init>()V

    iput-object p1, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;
    .registers 3

    sget-object v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    invoke-direct {v1, p0}, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->manager:Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;

    return-object p0
.end method


# virtual methods
.method public login(ILcom/sdk/base/api/CallBack;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sdk/v/a;

    iget-object v1, p0, Lcom/sdk/mobile/manager/login/cucc/UiOauthManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sdk/v/a;-><init>(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/sdk/v/a;->a(I)V

    return-void
.end method
