.class Landroidx/camera/core/processing/SurfaceProcessorNode$1;
.super Ljava/lang/Object;
.source "SurfaceProcessorNode.java"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/processing/SurfaceProcessorNode;->sendSurfacesToProcessorWhenReady(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroidx/camera/core/SurfaceOutput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

.field final synthetic val$input:Landroidx/camera/core/processing/SettableSurface;

.field final synthetic val$output:Landroidx/camera/core/processing/SettableSurface;

.field final synthetic val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method constructor <init>(Landroidx/camera/core/processing/SurfaceProcessorNode;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V
    .registers 5

    .line 165
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->this$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$input:Landroidx/camera/core/processing/SettableSurface;

    iput-object p4, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$output:Landroidx/camera/core/processing/SettableSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 2

    .line 179
    iget-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    return-void
.end method

.method public onSuccess(Landroidx/camera/core/SurfaceOutput;)V
    .registers 6

    .line 168
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->this$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v0, v0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/SurfaceProcessor;->onOutputSurface(Landroidx/camera/core/SurfaceOutput;)V

    .line 170
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->this$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v0, v0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    invoke-interface {v0, v1}, Landroidx/camera/core/SurfaceProcessor;->onInputSurface(Landroidx/camera/core/SurfaceRequest;)V

    .line 171
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->this$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$input:Landroidx/camera/core/processing/SettableSurface;

    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$surfaceRequest:Landroidx/camera/core/SurfaceRequest;

    iget-object v3, p0, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->val$output:Landroidx/camera/core/processing/SettableSurface;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode;->setupSurfaceUpdatePipeline(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 165
    check-cast p1, Landroidx/camera/core/SurfaceOutput;

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode$1;->onSuccess(Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method
