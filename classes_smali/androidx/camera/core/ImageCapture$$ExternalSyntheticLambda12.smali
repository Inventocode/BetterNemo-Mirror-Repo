.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;->f$2:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda12;->f$2:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-static {v0, v1, v2}, Landroidx/camera/core/ImageCapture;->$r8$lambda$I7UTa3RxZR3O0FUPcwy7Ann_Pbg(Landroidx/camera/core/ImageCapture;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method
