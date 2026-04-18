.class public Lcn/codemao/android/sketch/notchlib/NotchScreenManager;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"


# static fields
.field private static final instance:Lcn/codemao/android/sketch/notchlib/NotchScreenManager;


# instance fields
.field private final notchScreen:Lcn/codemao/android/sketch/notchlib/INotchScreen;


# direct methods
.method public static synthetic $r8$lambda$ii9VhZZuPuQw0J5peC7SQTi80Bs(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->lambda$getNotchInfo$0(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;

    invoke-direct {v0}, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;-><init>()V

    sput-object v0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->instance:Lcn/codemao/android/sketch/notchlib/NotchScreenManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->getNotchScreen()Lcn/codemao/android/sketch/notchlib/INotchScreen;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->notchScreen:Lcn/codemao/android/sketch/notchlib/INotchScreen;

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/sketch/notchlib/NotchScreenManager;
    .registers 1

    .line 28
    sget-object v0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->instance:Lcn/codemao/android/sketch/notchlib/NotchScreenManager;

    return-object v0
.end method

.method private getNotchScreen()Lcn/codemao/android/sketch/notchlib/INotchScreen;
    .registers 3

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    .line 54
    new-instance v0, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen;

    invoke-direct {v0}, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen;-><init>()V

    goto :goto_41

    :cond_c
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_40

    .line 56
    invoke-static {}, Lcn/codemao/android/sketch/utils/RomUtils;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 57
    new-instance v0, Lcn/codemao/android/sketch/notchlib/impl/HuaweiNotchScreen;

    invoke-direct {v0}, Lcn/codemao/android/sketch/notchlib/impl/HuaweiNotchScreen;-><init>()V

    goto :goto_41

    .line 58
    :cond_1c
    invoke-static {}, Lcn/codemao/android/sketch/utils/RomUtils;->isOppo()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 59
    new-instance v0, Lcn/codemao/android/sketch/notchlib/impl/OppoNotchScreen;

    invoke-direct {v0}, Lcn/codemao/android/sketch/notchlib/impl/OppoNotchScreen;-><init>()V

    goto :goto_41

    .line 60
    :cond_28
    invoke-static {}, Lcn/codemao/android/sketch/utils/RomUtils;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 61
    new-instance v0, Lcn/codemao/android/sketch/notchlib/impl/VivoNotchScreen;

    invoke-direct {v0}, Lcn/codemao/android/sketch/notchlib/impl/VivoNotchScreen;-><init>()V

    goto :goto_41

    .line 62
    :cond_34
    invoke-static {}, Lcn/codemao/android/sketch/utils/RomUtils;->isXiaomi()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 63
    new-instance v0, Lcn/codemao/android/sketch/notchlib/impl/MiNotchScreen;

    invoke-direct {v0}, Lcn/codemao/android/sketch/notchlib/impl/MiNotchScreen;-><init>()V

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    return-object v0
.end method

.method private static synthetic lambda$getNotchInfo$0(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;Ljava/util/List;)V
    .registers 4

    if-eqz p2, :cond_a

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 42
    iput-object p2, p0, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    .line 44
    :cond_a
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;->onResult(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;)V

    return-void
.end method


# virtual methods
.method public getNotchInfo(Landroid/app/Activity;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;)V
    .registers 6

    .line 37
    new-instance v0, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;-><init>()V

    .line 38
    iget-object v1, p0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->notchScreen:Lcn/codemao/android/sketch/notchlib/INotchScreen;

    if-eqz v1, :cond_1d

    invoke-interface {v1, p1}, Lcn/codemao/android/sketch/notchlib/INotchScreen;->hasNotch(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, v0, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;->hasNotch:Z

    .line 40
    iget-object v1, p0, Lcn/codemao/android/sketch/notchlib/NotchScreenManager;->notchScreen:Lcn/codemao/android/sketch/notchlib/INotchScreen;

    new-instance v2, Lcn/codemao/android/sketch/notchlib/NotchScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Lcn/codemao/android/sketch/notchlib/NotchScreenManager$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;)V

    invoke-interface {v1, p1, v2}, Lcn/codemao/android/sketch/notchlib/INotchScreen;->getNotchRect(Landroid/app/Activity;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;)V

    goto :goto_20

    .line 47
    :cond_1d
    invoke-interface {p2, v0}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenCallback;->onResult(Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchScreenInfo;)V

    :goto_20
    return-void
.end method
