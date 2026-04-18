.class public final synthetic Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$Checker;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final check(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 2

    invoke-static {p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->$r8$lambda$xPeoOwNjfyi210rIorXzAW5Aryo(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
