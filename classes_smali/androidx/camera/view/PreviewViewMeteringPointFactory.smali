.class Landroidx/camera/view/PreviewViewMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "PreviewViewMeteringPointFactory.java"


# instance fields
.field private final mPreviewTransformation:Landroidx/camera/view/PreviewTransformation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/view/PreviewTransformation;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mPreviewTransformation:Landroidx/camera/view/PreviewTransformation;

    return-void
.end method


# virtual methods
.method recalculate(Landroid/util/Size;I)V
    .registers 4

    .line 71
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 72
    monitor-enter p0

    .line 73
    :try_start_4
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_18

    .line 77
    :cond_11
    iget-object v0, p0, Landroidx/camera/view/PreviewViewMeteringPointFactory;->mPreviewTransformation:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/view/PreviewTransformation;->getPreviewViewToNormalizedSurfaceMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;

    .line 80
    monitor-exit p0

    return-void

    .line 75
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    .line 80
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw p1
.end method
