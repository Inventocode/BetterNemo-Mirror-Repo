.class public final synthetic Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;->$r8$lambda$Kx5KTSt5Mp3cFHHdF4hWq8Gn2KE(Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
