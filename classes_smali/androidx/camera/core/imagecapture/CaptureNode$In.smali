.class abstract Landroidx/camera/core/imagecapture/CaptureNode$In;
.super Ljava/lang/Object;
.source "CaptureNode.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/CaptureNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "In"
.end annotation


# instance fields
.field private mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

.field private mSurface:Landroidx/camera/core/impl/DeferrableSurface;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of(Landroid/util/Size;I)Landroidx/camera/core/imagecapture/CaptureNode$In;
    .registers 4

    .line 252
    new-instance v0, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;

    new-instance v1, Landroidx/camera/core/processing/Edge;

    invoke-direct {v1}, Landroidx/camera/core/processing/Edge;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/core/imagecapture/AutoValue_CaptureNode_In;-><init>(Landroid/util/Size;ILandroidx/camera/core/processing/Edge;)V

    return-object v0
.end method


# virtual methods
.method closeSurface()V
    .registers 2

    .line 234
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    return-void
.end method

.method getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;
    .registers 2

    .line 243
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-object v0
.end method

.method abstract getFormat()I
.end method

.method abstract getRequestEdge()Landroidx/camera/core/processing/Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Edge<",
            "Landroidx/camera/core/imagecapture/ProcessingRequest;",
            ">;"
        }
    .end annotation
.end method

.method abstract getSize()Landroid/util/Size;
.end method

.method getSurface()Landroidx/camera/core/impl/DeferrableSurface;
    .registers 2

    .line 225
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mSurface:Landroidx/camera/core/impl/DeferrableSurface;

    return-object v0
.end method

.method setCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .registers 2

    .line 247
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mCameraCaptureCallback:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .registers 4

    .line 229
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "The surface is already set."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 230
    new-instance v0, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-direct {v0, p1}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$In;->mSurface:Landroidx/camera/core/impl/DeferrableSurface;

    return-void
.end method
