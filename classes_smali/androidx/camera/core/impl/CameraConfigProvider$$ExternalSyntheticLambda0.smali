.class public final synthetic Landroidx/camera/core/impl/CameraConfigProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/impl/CameraConfigProvider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/impl/CameraConfigProvider$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/camera/core/impl/CameraConfigProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraConfigProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/CameraConfigProvider$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/camera/core/impl/CameraConfigProvider$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .registers 3

    invoke-static {p1, p2}, Landroidx/camera/core/impl/CameraConfigProvider$-CC;->$r8$lambda$BjzF-3tA5-JX1HbLj3Jy5z39jNo(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object p1

    return-object p1
.end method
