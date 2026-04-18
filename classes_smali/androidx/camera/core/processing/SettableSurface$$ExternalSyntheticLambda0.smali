.class public final synthetic Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/SettableSurface;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field public final synthetic f$2:Landroid/util/Size;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/processing/SettableSurface;

    iput-object p2, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    iput-object p3, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$2:Landroid/util/Size;

    iput-object p4, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    iput p5, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$4:I

    iput-boolean p6, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$5:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 9

    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/processing/SettableSurface;

    iget-object v1, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$1:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    iget-object v2, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$2:Landroid/util/Size;

    iget-object v3, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    iget v4, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$4:I

    iget-boolean v5, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;->f$5:Z

    move-object v6, p1

    check-cast v6, Landroid/view/Surface;

    invoke-static/range {v0 .. v6}, Landroidx/camera/core/processing/SettableSurface;->$r8$lambda$Mc5GP3qlr0Re5REt0tq3C54Co8I(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
