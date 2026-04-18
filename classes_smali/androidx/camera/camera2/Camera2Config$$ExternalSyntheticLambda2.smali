.class public final synthetic Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory$Provider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;->INSTANCE:Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;
    .registers 2

    invoke-static {p1}, Landroidx/camera/camera2/Camera2Config;->$r8$lambda$g_hY10kZhqC56um0PalOLTzuFlU(Landroid/content/Context;)Landroidx/camera/core/impl/UseCaseConfigFactory;

    move-result-object p1

    return-object p1
.end method
