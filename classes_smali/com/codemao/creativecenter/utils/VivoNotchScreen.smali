.class public Lcom/codemao/creativecenter/utils/VivoNotchScreen;
.super Ljava/lang/Object;
.source "VivoNotchScreen.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/INotchScreen;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDensity(Landroid/content/Context;)F
    .registers 1

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static getNotchHeight(Landroid/content/Context;)I
    .registers 2

    .line 39
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/VivoNotchScreen;->getDensity(Landroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x41d80000  # 27.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getNotchWidth(Landroid/content/Context;)I
    .registers 2

    .line 47
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/VivoNotchScreen;->getDensity(Landroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x42c80000  # 100.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static isNotch()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.util.FtFeature"

    .line 25
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isFtFeatureSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 26
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x20

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception v1

    const-string v2, "tag"

    const-string v3, "get error() "

    .line 30
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return v0
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;)V
    .registers 6

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/VivoNotchScreen;->getNotchWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/VivoNotchScreen;->getNotchHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/smarx/notchlib/utils/ScreenUtil;->calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {p2, v0}, Lcom/codemao/creativecenter/utils/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .registers 2

    .line 57
    invoke-static {}, Lcom/codemao/creativecenter/utils/VivoNotchScreen;->isNotch()Z

    move-result p1

    return p1
.end method
