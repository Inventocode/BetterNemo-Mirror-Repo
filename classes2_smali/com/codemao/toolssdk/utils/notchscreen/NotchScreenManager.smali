.class public Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"


# static fields
.field private static final instance:Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;


# instance fields
.field private final notchScreen:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;


# direct methods
.method public static synthetic $r8$lambda$4zqJQBhYr_8BYpbqzM4f5lSdz1M(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->lambda$getNotchInfo$0(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->instance:Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchScreen()Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->notchScreen:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;

    return-void
.end method

.method public static getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;
    .registers 1

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->instance:Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    return-object v0
.end method

.method private getNotchScreen()Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;
    .registers 4

    .line 49
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-X900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    const-string v1, "MRX-W29"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 53
    new-instance v0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$1;-><init>(Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;)V

    return-object v0

    .line 72
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_26

    .line 73
    new-instance v2, Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen;

    invoke-direct {v2}, Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen;-><init>()V

    goto :goto_59

    :cond_26
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_59

    .line 75
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 76
    new-instance v2, Lcom/codemao/toolssdk/utils/notchscreen/HuaweiNotchScreen;

    invoke-direct {v2}, Lcom/codemao/toolssdk/utils/notchscreen/HuaweiNotchScreen;-><init>()V

    goto :goto_59

    .line 77
    :cond_36
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isOppo()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 78
    new-instance v2, Lcom/codemao/toolssdk/utils/notchscreen/OppoNotchScreen;

    invoke-direct {v2}, Lcom/codemao/toolssdk/utils/notchscreen/OppoNotchScreen;-><init>()V

    goto :goto_59

    .line 79
    :cond_42
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 80
    new-instance v2, Lcom/codemao/toolssdk/utils/notchscreen/VivoNotchScreen;

    invoke-direct {v2}, Lcom/codemao/toolssdk/utils/notchscreen/VivoNotchScreen;-><init>()V

    goto :goto_59

    .line 81
    :cond_4e
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isXiaomi()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 82
    new-instance v2, Lcom/codemao/toolssdk/utils/notchscreen/MiNotchScreen;

    invoke-direct {v2}, Lcom/codemao/toolssdk/utils/notchscreen/MiNotchScreen;-><init>()V

    :cond_59
    :goto_59
    return-object v2
.end method

.method private static synthetic lambda$getNotchInfo$0(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;Ljava/util/List;)V
    .registers 4

    if-eqz p2, :cond_a

    .line 37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 38
    iput-object p2, p0, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    .line 40
    :cond_a
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;->onResult(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method


# virtual methods
.method public getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V
    .registers 6

    .line 33
    new-instance v0, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->notchScreen:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;

    if-eqz v1, :cond_1d

    invoke-interface {v1, p1}, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;->hasNotch(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    .line 36
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->notchScreen:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;

    new-instance v2, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen;->getNotchRect(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;)V

    goto :goto_20

    .line 43
    :cond_1d
    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;->onResult(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    :goto_20
    return-void
.end method
