.class public Lcom/smarx/notchlib/NotchScreenManager;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"


# static fields
.field private static final instance:Lcom/smarx/notchlib/NotchScreenManager;


# instance fields
.field private final notchScreen:Lcom/smarx/notchlib/INotchScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/smarx/notchlib/NotchScreenManager;

    invoke-direct {v0}, Lcom/smarx/notchlib/NotchScreenManager;-><init>()V

    sput-object v0, Lcom/smarx/notchlib/NotchScreenManager;->instance:Lcom/smarx/notchlib/NotchScreenManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/smarx/notchlib/NotchScreenManager;->getNotchScreen()Lcom/smarx/notchlib/INotchScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/smarx/notchlib/NotchScreenManager;->notchScreen:Lcom/smarx/notchlib/INotchScreen;

    return-void
.end method

.method public static getInstance()Lcom/smarx/notchlib/NotchScreenManager;
    .registers 1

    .line 25
    sget-object v0, Lcom/smarx/notchlib/NotchScreenManager;->instance:Lcom/smarx/notchlib/NotchScreenManager;

    return-object v0
.end method

.method private getNotchScreen()Lcom/smarx/notchlib/INotchScreen;
    .registers 3

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    .line 54
    new-instance v0, Lcom/smarx/notchlib/impl/AndroidPNotchScreen;

    invoke-direct {v0}, Lcom/smarx/notchlib/impl/AndroidPNotchScreen;-><init>()V

    goto :goto_41

    :cond_c
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_40

    .line 56
    invoke-static {}, Lcom/smarx/notchlib/utils/RomUtils;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 57
    new-instance v0, Lcom/smarx/notchlib/impl/HuaweiNotchScreen;

    invoke-direct {v0}, Lcom/smarx/notchlib/impl/HuaweiNotchScreen;-><init>()V

    goto :goto_41

    .line 58
    :cond_1c
    invoke-static {}, Lcom/smarx/notchlib/utils/RomUtils;->isOppo()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 59
    new-instance v0, Lcom/smarx/notchlib/impl/OppoNotchScreen;

    invoke-direct {v0}, Lcom/smarx/notchlib/impl/OppoNotchScreen;-><init>()V

    goto :goto_41

    .line 60
    :cond_28
    invoke-static {}, Lcom/smarx/notchlib/utils/RomUtils;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 61
    new-instance v0, Lcom/smarx/notchlib/impl/HuaweiNotchScreen;

    invoke-direct {v0}, Lcom/smarx/notchlib/impl/HuaweiNotchScreen;-><init>()V

    goto :goto_41

    .line 62
    :cond_34
    invoke-static {}, Lcom/smarx/notchlib/utils/RomUtils;->isXiaomi()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 63
    new-instance v0, Lcom/smarx/notchlib/impl/MiNotchScreen;

    invoke-direct {v0}, Lcom/smarx/notchlib/impl/MiNotchScreen;-><init>()V

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    return-object v0
.end method


# virtual methods
.method public getNotchInfo(Landroid/app/Activity;Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;)V
    .registers 6

    .line 34
    new-instance v0, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;

    invoke-direct {v0}, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/smarx/notchlib/NotchScreenManager;->notchScreen:Lcom/smarx/notchlib/INotchScreen;

    if-eqz v1, :cond_1a

    invoke-interface {v1, p1}, Lcom/smarx/notchlib/INotchScreen;->hasNotch(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 36
    iget-object v1, p0, Lcom/smarx/notchlib/NotchScreenManager;->notchScreen:Lcom/smarx/notchlib/INotchScreen;

    new-instance v2, Lcom/smarx/notchlib/NotchScreenManager$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/smarx/notchlib/NotchScreenManager$1;-><init>(Lcom/smarx/notchlib/NotchScreenManager;Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/smarx/notchlib/INotchScreen;->getNotchRect(Landroid/app/Activity;Lcom/smarx/notchlib/INotchScreen$NotchSizeCallback;)V

    goto :goto_1d

    .line 47
    :cond_1a
    invoke-interface {p2, v0}, Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;->onResult(Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;)V

    :goto_1d
    return-void
.end method
