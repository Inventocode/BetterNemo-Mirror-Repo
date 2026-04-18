.class public Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;


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

.method public static getInstance()Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->a:Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->a:Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->a:Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;->a:Lcom/chuanglan/shanyan_sdk/OneKeyLoginManager;

    return-object v0
.end method


# virtual methods
.method public finishAuthActivity()V
    .registers 2

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/c/a;->d()V

    return-void
.end method

.method public getPhoneInfo(Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;)V
    .registers 4

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/listener/InitListener;)V
    .registers 6

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILandroid/content/Context;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/listener/InitListener;)V

    return-void
.end method

.method public openLoginAuth(ZLcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;)V
    .registers 5

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ZLcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;)V

    return-void
.end method

.method public setAuthThemeConfig(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "setAuthThemeConfig shanPortraitYanUIConfig"

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "UIShanYanTask"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    return-void
.end method

.method public setDebug(Z)V
    .registers 3

    sput-boolean p1, Lcom/chuanglan/shanyan_sdk/b;->Z:Z

    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->setDebug(Z)V

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->getInstance()Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->setLogEnable(Z)V

    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/c;->setDebugMode(Z)V

    return-void
.end method
