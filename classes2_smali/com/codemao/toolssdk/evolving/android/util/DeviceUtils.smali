.class public final Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final size(Landroid/content/Context;)Z
    .registers 9

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 27
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v0

    int-to-double v3, v0

    mul-double v1, v1, v3

    .line 28
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v0

    int-to-double v5, v0

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 30
    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v2, p1

    div-double/2addr v0, v2

    .line 31
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "屏幕尺寸："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    const-wide v2, 0x401e666666666666L  # 7.6

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_3e

    const/4 p1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    :goto_3f
    return p1
.end method


# virtual methods
.method public final isPad(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1a

    sget v2, Lcom/codemao/toolssdk/R$bool;->toolsdk_is_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    if-eqz p1, :cond_4d

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 14
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "通过屏幕dp判断是否pad："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    const/16 v2, 0x21c

    if-lt v1, v2, :cond_4d

    return v0

    :cond_4d
    if-eqz p1, :cond_56

    .line 17
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;->size(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_56

    return v0

    :cond_56
    const/4 p1, 0x0

    return p1
.end method
