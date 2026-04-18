.class public final synthetic Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;->$r8$lambda$fhC2fHqcLBYUYsKVIjGZL9DFueQ(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
