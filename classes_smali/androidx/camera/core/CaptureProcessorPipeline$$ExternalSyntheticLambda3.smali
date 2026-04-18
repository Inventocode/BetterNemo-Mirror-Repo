.class public final synthetic Landroidx/camera/core/CaptureProcessorPipeline$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CaptureProcessorPipeline;

.field public final synthetic f$1:Landroidx/camera/core/ImageProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CaptureProcessorPipeline;Landroidx/camera/core/ImageProxy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/CaptureProcessorPipeline$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/CaptureProcessorPipeline;

    iput-object p2, p0, Landroidx/camera/core/CaptureProcessorPipeline$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/CaptureProcessorPipeline$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/CaptureProcessorPipeline;

    iget-object v1, p0, Landroidx/camera/core/CaptureProcessorPipeline$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/core/ImageProxy;

    invoke-static {v0, v1}, Landroidx/camera/core/CaptureProcessorPipeline;->$r8$lambda$aoCSRy3yzMQLOvSaktzXwtkldSA(Landroidx/camera/core/CaptureProcessorPipeline;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
