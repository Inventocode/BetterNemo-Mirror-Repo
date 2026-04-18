.class public Lcom/codemao/creativecenter/utils/NotchScreenManager;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"


# static fields
.field private static final instance:Lcom/codemao/creativecenter/utils/NotchScreenManager;


# instance fields
.field private final notchScreen:Lcom/codemao/creativecenter/utils/INotchScreen;


# direct methods
.method public static synthetic $r8$lambda$CH44Xt2c2jlHDsMY9fXDlzs8_9g(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/creativecenter/utils/NotchScreenManager;->lambda$getNotchInfo$0(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/codemao/creativecenter/utils/NotchScreenManager;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/NotchScreenManager;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/NotchScreenManager;->instance:Lcom/codemao/creativecenter/utils/NotchScreenManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/NotchScreenManager;->getNotchScreen()Lcom/codemao/creativecenter/utils/INotchScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/NotchScreenManager;->notchScreen:Lcom/codemao/creativecenter/utils/INotchScreen;

    return-void
.end method

.method public static getInstance()Lcom/codemao/creativecenter/utils/NotchScreenManager;
    .registers 1

    .line 23
    sget-object v0, Lcom/codemao/creativecenter/utils/NotchScreenManager;->instance:Lcom/codemao/creativecenter/utils/NotchScreenManager;

    return-object v0
.end method

.method private getNotchScreen()Lcom/codemao/creativecenter/utils/INotchScreen;
    .registers 4

    .line 48
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-X900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    const-string v1, "MRX-W29"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 52
    new-instance v0, Lcom/codemao/creativecenter/utils/NotchScreenManager$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/utils/NotchScreenManager$1;-><init>(Lcom/codemao/creativecenter/utils/NotchScreenManager;)V

    return-object v0

    .line 71
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_26

    .line 72
    new-instance v2, Lcom/codemao/creativecenter/utils/AndroidPNotchScreen;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/AndroidPNotchScreen;-><init>()V

    goto :goto_59

    :cond_26
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_59

    .line 74
    invoke-static {}, Lcom/codemao/creativecenter/utils/RomUtils;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 75
    new-instance v2, Lcom/codemao/creativecenter/utils/HuaweiNotchScreen;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/HuaweiNotchScreen;-><init>()V

    goto :goto_59

    .line 76
    :cond_36
    invoke-static {}, Lcom/codemao/creativecenter/utils/RomUtils;->isOppo()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 77
    new-instance v2, Lcom/codemao/creativecenter/utils/OppoNotchScreen;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/OppoNotchScreen;-><init>()V

    goto :goto_59

    .line 78
    :cond_42
    invoke-static {}, Lcom/codemao/creativecenter/utils/RomUtils;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 79
    new-instance v2, Lcom/codemao/creativecenter/utils/VivoNotchScreen;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/VivoNotchScreen;-><init>()V

    goto :goto_59

    .line 80
    :cond_4e
    invoke-static {}, Lcom/codemao/creativecenter/utils/RomUtils;->isXiaomi()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 81
    new-instance v2, Lcom/codemao/creativecenter/utils/MiNotchScreen;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/MiNotchScreen;-><init>()V

    :cond_59
    :goto_59
    return-object v2
.end method

.method private static synthetic lambda$getNotchInfo$0(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;Ljava/util/List;)V
    .registers 4

    if-eqz p2, :cond_a

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 37
    iput-object p2, p0, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    .line 39
    :cond_a
    invoke-interface {p1, p0}, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;->onResult(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;)V

    return-void
.end method


# virtual methods
.method public getNotchInfo(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;)V
    .registers 6

    .line 32
    new-instance v0, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/NotchScreenManager;->notchScreen:Lcom/codemao/creativecenter/utils/INotchScreen;

    if-eqz v1, :cond_1d

    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/utils/INotchScreen;->hasNotch(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v0, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;->hasNotch:Z

    .line 35
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/NotchScreenManager;->notchScreen:Lcom/codemao/creativecenter/utils/INotchScreen;

    new-instance v2, Lcom/codemao/creativecenter/utils/NotchScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Lcom/codemao/creativecenter/utils/NotchScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/codemao/creativecenter/utils/INotchScreen;->getNotchRect(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;)V

    goto :goto_20

    .line 42
    :cond_1d
    invoke-interface {p2, v0}, Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenCallback;->onResult(Lcom/codemao/creativecenter/utils/INotchScreen$NotchScreenInfo;)V

    :goto_20
    return-void
.end method
