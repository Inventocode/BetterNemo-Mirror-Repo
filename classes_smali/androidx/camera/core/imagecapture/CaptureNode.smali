.class Landroidx/camera/core/imagecapture/CaptureNode;
.super Ljava/lang/Object;
.source "CaptureNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/CaptureNode$Out;,
        Landroidx/camera/core/imagecapture/CaptureNode$In;
    }
.end annotation


# instance fields
.field private mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

.field private mInputEdge:Landroidx/camera/core/imagecapture/CaptureNode$In;

.field private mOutputEdge:Landroidx/camera/core/imagecapture/CaptureNode$Out;

.field private final mPendingImages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingStageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSafeCloseImageReaderProxy:Landroidx/camera/core/SafeCloseImageReaderProxy;


# direct methods
.method public static synthetic $r8$lambda$G_mo3AkM_zBNP9-DfobJIdCzSOc(Landroidx/camera/core/imagecapture/CaptureNode;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->lambda$transform$0(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingStageIds:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingImages:Ljava/util/Set;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    return-void
.end method

.method private synthetic lambda$transform$0(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 2

    .line 95
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/camera/core/ImageProxy;

    .line 94
    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->onImageProxyAvailable(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method private matchAndPropagateImage(Landroidx/camera/core/ImageProxy;)V
    .registers 6

    .line 118
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-virtual {v1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getTagBundleKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    iget-object v1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingStageIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an unexpected stage id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 121
    iget-object v1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingStageIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingStageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 125
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/ProcessingRequest;->onImageCaptured()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 130
    :cond_52
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mOutputEdge:Landroidx/camera/core/imagecapture/CaptureNode$Out;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$Out;->getImageEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCapacity()I
    .registers 3

    .line 178
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 179
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mSafeCloseImageReaderProxy:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "The ImageReader is not initialized."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 181
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mSafeCloseImageReaderProxy:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getCapacity()I

    move-result v0

    return v0
.end method

.method onImageProxyAvailable(Landroidx/camera/core/ImageProxy;)V
    .registers 3

    .line 105
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 106
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    if-nez v0, :cond_d

    .line 108
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 111
    :cond_d
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->matchAndPropagateImage(Landroidx/camera/core/ImageProxy;)V

    :goto_10
    return-void
.end method

.method onRequestAvailable(Landroidx/camera/core/imagecapture/ProcessingRequest;)V
    .registers 6

    .line 136
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 138
    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/CaptureNode;->getCapacity()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v3, "Too many acquire images. Close image to be able to process next."

    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingStageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    const-string v0, "The previous request is not complete"

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 145
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mCurrentRequest:Landroidx/camera/core/imagecapture/ProcessingRequest;

    .line 146
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingStageIds:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/ProcessingRequest;->getStageIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mOutputEdge:Landroidx/camera/core/imagecapture/CaptureNode$Out;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$Out;->getRequestEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/Edge;->accept(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingImages:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ImageProxy;

    .line 153
    invoke-direct {p0, v0}, Landroidx/camera/core/imagecapture/CaptureNode;->matchAndPropagateImage(Landroidx/camera/core/ImageProxy;)V

    goto :goto_40

    .line 155
    :cond_50
    iget-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mPendingImages:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public release()V
    .registers 2

    .line 161
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 162
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mSafeCloseImageReaderProxy:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_a

    .line 163
    invoke-virtual {v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    .line 165
    :cond_a
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mInputEdge:Landroidx/camera/core/imagecapture/CaptureNode$In;

    if-eqz v0, :cond_11

    .line 166
    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->closeSurface()V

    :cond_11
    return-void
.end method

.method public setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .registers 4

    .line 186
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 187
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mSafeCloseImageReaderProxy:Landroidx/camera/core/SafeCloseImageReaderProxy;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "The ImageReader is not initialized."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mSafeCloseImageReaderProxy:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v0, p1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method

.method public transform(Landroidx/camera/core/imagecapture/CaptureNode$In;)Landroidx/camera/core/imagecapture/CaptureNode$Out;
    .registers 7

    .line 82
    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mInputEdge:Landroidx/camera/core/imagecapture/CaptureNode$In;

    .line 83
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getFormat()I

    move-result v1

    .line 87
    new-instance v2, Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 88
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/4 v4, 0x4

    invoke-direct {v2, v3, v0, v1, v4}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    .line 89
    new-instance v0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {v0, v2}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    iput-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mSafeCloseImageReaderProxy:Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 90
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getCameraCaptureCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->setCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 91
    invoke-virtual {v2}, Landroidx/camera/core/MetadataImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroidx/camera/core/imagecapture/CaptureNode$In;->setSurface(Landroid/view/Surface;)V

    .line 94
    new-instance v0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;)V

    .line 95
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 94
    invoke-virtual {v2, v0, v1}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 96
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getRequestEdge()Landroidx/camera/core/processing/Edge;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/imagecapture/CaptureNode;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/Edge;->setListener(Landroidx/core/util/Consumer;)V

    .line 98
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/CaptureNode$In;->getFormat()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/imagecapture/CaptureNode$Out;->of(I)Landroidx/camera/core/imagecapture/CaptureNode$Out;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode;->mOutputEdge:Landroidx/camera/core/imagecapture/CaptureNode$Out;

    return-object p1
.end method
