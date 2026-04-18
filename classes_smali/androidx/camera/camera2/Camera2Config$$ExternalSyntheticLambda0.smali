.class public final synthetic Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/camera/camera2/Camera2Config$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .registers 4

    invoke-static {p1, p2, p3}, Landroidx/camera/camera2/Camera2Config;->$r8$lambda$kPfcZYYQs2fXKvw1cjC5GhRy6hM(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object p1

    return-object p1
.end method
