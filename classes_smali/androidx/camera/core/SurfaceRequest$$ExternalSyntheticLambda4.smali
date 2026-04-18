.class public final synthetic Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest$TransformationInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda4;->f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    iput-object p2, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda4;->f$1:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda4;->f$0:Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    iget-object v1, p0, Landroidx/camera/core/SurfaceRequest$$ExternalSyntheticLambda4;->f$1:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {v0, v1}, Landroidx/camera/core/SurfaceRequest;->$r8$lambda$Sf8X4BruHcmAGAAbXPI3bP1O5Fs(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method
