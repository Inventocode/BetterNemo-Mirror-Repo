.class public final Landroidx/camera/view/PreviewView;
.super Landroid/widget/FrameLayout;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/PreviewView$DisplayRotationListener;,
        Landroidx/camera/view/PreviewView$PinchToZoomOnScaleGestureListener;,
        Landroidx/camera/view/PreviewView$StreamState;,
        Landroidx/camera/view/PreviewView$ScaleType;,
        Landroidx/camera/view/PreviewView$ImplementationMode;,
        Landroidx/camera/view/PreviewView$OnFrameUpdateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMPL_MODE:Landroidx/camera/view/PreviewView$ImplementationMode;


# instance fields
.field final mActiveStreamStateObserver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/camera/view/PreviewStreamStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field mCameraController:Landroidx/camera/view/CameraController;

.field mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final mDisplayRotationListener:Landroidx/camera/view/PreviewView$DisplayRotationListener;

.field mImplementation:Landroidx/camera/view/PreviewViewImplementation;

.field mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

.field mOnFrameUpdateListener:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

.field mOnFrameUpdateListenerExecutor:Ljava/util/concurrent/Executor;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final mPreviewStreamStateLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/view/PreviewView$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field final mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

.field mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field final mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

.field private mTouchUpEvent:Landroid/view/MotionEvent;

.field mUseDisplayRotation:Z


# direct methods
.method public static synthetic $r8$lambda$wXnp5OZxmlro6UhkYqYkud6koME(Landroidx/camera/view/PreviewView;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroidx/camera/view/PreviewView;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 121
    sget-object v0, Landroidx/camera/view/PreviewView$ImplementationMode;->PERFORMANCE:Landroidx/camera/view/PreviewView$ImplementationMode;

    sput-object v0, Landroidx/camera/view/PreviewView;->DEFAULT_IMPL_MODE:Landroidx/camera/view/PreviewView$ImplementationMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/view/PreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/camera/view/PreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    .line 287
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    sget-object v0, Landroidx/camera/view/PreviewView;->DEFAULT_IMPL_MODE:Landroidx/camera/view/PreviewView$ImplementationMode;

    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    .line 132
    new-instance v1, Landroidx/camera/view/PreviewTransformation;

    invoke-direct {v1}, Landroidx/camera/view/PreviewTransformation;-><init>()V

    iput-object v1, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    const/4 v2, 0x1

    .line 134
    iput-boolean v2, p0, Landroidx/camera/view/PreviewView;->mUseDisplayRotation:Z

    .line 137
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Landroidx/camera/view/PreviewView$StreamState;->IDLE:Landroidx/camera/view/PreviewView$StreamState;

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->mPreviewStreamStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 143
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->mActiveStreamStateObserver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    new-instance v2, Landroidx/camera/view/PreviewViewMeteringPointFactory;

    invoke-direct {v2, v1}, Landroidx/camera/view/PreviewViewMeteringPointFactory;-><init>(Landroidx/camera/view/PreviewTransformation;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    .line 176
    new-instance v2, Landroidx/camera/view/PreviewView$DisplayRotationListener;

    invoke-direct {v2, p0}, Landroidx/camera/view/PreviewView$DisplayRotationListener;-><init>(Landroidx/camera/view/PreviewView;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->mDisplayRotationListener:Landroidx/camera/view/PreviewView$DisplayRotationListener;

    .line 179
    new-instance v2, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/view/PreviewView;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 190
    new-instance v2, Landroidx/camera/view/PreviewView$1;

    invoke-direct {v2, p0}, Landroidx/camera/view/PreviewView$1;-><init>(Landroidx/camera/view/PreviewView;)V

    iput-object v2, p0, Landroidx/camera/view/PreviewView;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 288
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Landroidx/camera/view/R$styleable;->PreviewView:[I

    invoke-virtual {v2, p2, v5, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    .line 291
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 295
    :try_start_53
    sget p2, Landroidx/camera/view/R$styleable;->PreviewView_scaleType:I

    .line 297
    invoke-virtual {v1}, Landroidx/camera/view/PreviewTransformation;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/view/PreviewView$ScaleType;->getId()I

    move-result p3

    .line 295
    invoke-virtual {v2, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 298
    invoke-static {p2}, Landroidx/camera/view/PreviewView$ScaleType;->fromId(I)Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/camera/view/PreviewView;->setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V

    .line 300
    sget p2, Landroidx/camera/view/R$styleable;->PreviewView_implementationMode:I

    .line 302
    invoke-virtual {v0}, Landroidx/camera/view/PreviewView$ImplementationMode;->getId()I

    move-result p3

    .line 301
    invoke-virtual {v2, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 303
    invoke-static {p2}, Landroidx/camera/view/PreviewView$ImplementationMode;->fromId(I)Landroidx/camera/view/PreviewView$ImplementationMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/camera/view/PreviewView;->setImplementationMode(Landroidx/camera/view/PreviewView$ImplementationMode;)V
    :try_end_79
    .catchall {:try_start_53 .. :try_end_79} :catchall_9d

    .line 305
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Landroidx/camera/view/PreviewView$PinchToZoomOnScaleGestureListener;

    invoke-direct {p3, p0}, Landroidx/camera/view/PreviewView$PinchToZoomOnScaleGestureListener;-><init>(Landroidx/camera/view/PreviewView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Landroidx/camera/view/PreviewView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 313
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_9c

    .line 314
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x106000c

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_9c
    return-void

    :catchall_9d
    move-exception p1

    .line 305
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    throw p1
.end method

.method private attachToControllerIfReady(Z)V
    .registers 2

    .line 1010
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 1011
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 1012
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getViewPort()Landroidx/camera/core/ViewPort;

    return-void
.end method

.method private getDisplayManager()Landroid/hardware/display/DisplayManager;
    .registers 3

    .line 1048
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1052
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    .line 1053
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method private getViewPortScaleType()I
    .registers 4

    .line 631
    sget-object v0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ScaleType:[I

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected scale type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2a  #0x4, 0x5, 0x6
    const/4 v0, 0x3

    return v0

    :pswitch_2c  #0x3
    const/4 v0, 0x0

    return v0

    :pswitch_2e  #0x2
    const/4 v0, 0x1

    return v0

    :pswitch_30  #0x1
    const/4 v0, 0x2

    return v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_30  #00000001
        :pswitch_2e  #00000002
        :pswitch_2c  #00000003
        :pswitch_2a  #00000004
        :pswitch_2a  #00000005
        :pswitch_2a  #00000006
    .end packed-switch
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    const/4 p1, 0x1

    if-ne p4, p8, :cond_c

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_a

    goto :goto_c

    :cond_a
    const/4 p2, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p2, 0x1

    :goto_d
    if-eqz p2, :cond_15

    .line 184
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    .line 185
    invoke-direct {p0, p1}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    :cond_15
    return-void
.end method

.method static shouldUseTextureView(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/view/PreviewView$ImplementationMode;)Z
    .registers 7

    .line 671
    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    .line 672
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getImplementationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.camera.camera2.legacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 673
    const-class v1, Landroidx/camera/view/internal/compat/quirk/SurfaceViewStretchedQuirk;

    invoke-static {v1}, Landroidx/camera/view/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_27

    const-class v1, Landroidx/camera/view/internal/compat/quirk/SurfaceViewNotCroppedByParentQuirk;

    .line 674
    invoke-static {v1}, Landroidx/camera/view/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v1, 0x1

    .line 675
    :goto_28
    invoke-virtual {p0}, Landroidx/camera/core/SurfaceRequest;->isRGBA8888Required()Z

    move-result p0

    if-nez p0, :cond_5e

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-le p0, v4, :cond_5e

    if-nez v0, :cond_5e

    if-eqz v1, :cond_39

    goto :goto_5e

    .line 681
    :cond_39
    sget-object p0, Landroidx/camera/view/PreviewView$2;->$SwitchMap$androidx$camera$view$PreviewView$ImplementationMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    if-eq p0, v3, :cond_5e

    const/4 v0, 0x2

    if-ne p0, v0, :cond_47

    return v2

    .line 687
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid implementation mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    return v3
.end method

.method private startListeningToDisplayChange()V
    .registers 5

    .line 1030
    invoke-direct {p0}, Landroidx/camera/view/PreviewView;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1034
    :cond_7
    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mDisplayRotationListener:Landroidx/camera/view/PreviewView$DisplayRotationListener;

    new-instance v2, Landroid/os/Handler;

    .line 1035
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1034
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private stopListeningToDisplayChange()V
    .registers 3

    .line 1039
    invoke-direct {p0}, Landroidx/camera/view/PreviewView;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1043
    :cond_7
    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mDisplayRotationListener:Landroidx/camera/view/PreviewView$DisplayRotationListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 548
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 549
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getController()Landroidx/camera/view/CameraController;
    .registers 2

    .line 956
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 957
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mCameraController:Landroidx/camera/view/CameraController;

    return-object v0
.end method

.method public getImplementationMode()Landroidx/camera/view/PreviewView$ImplementationMode;
    .registers 2

    .line 413
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 414
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    return-object v0
.end method

.method public getMeteringPointFactory()Landroidx/camera/core/MeteringPointFactory;
    .registers 2

    .line 498
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 499
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    return-object v0
.end method

.method public getOutputTransform()Landroidx/camera/view/transform/OutputTransform;
    .registers 6

    .line 979
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x0

    .line 982
    :try_start_4
    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    new-instance v2, Landroid/util/Size;

    .line 983
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    .line 982
    invoke-virtual {v1, v2, v3}, Landroidx/camera/view/PreviewTransformation;->getSurfaceToPreviewViewMatrix(Landroid/util/Size;I)Landroid/graphics/Matrix;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-object v1, v0

    .line 988
    :goto_1d
    iget-object v2, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v2}, Landroidx/camera/view/PreviewTransformation;->getSurfaceCropRect()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "PreviewView"

    if-eqz v1, :cond_57

    if-nez v2, :cond_2a

    goto :goto_57

    .line 994
    :cond_2a
    invoke-static {v2}, Landroidx/camera/core/impl/utils/TransformUtils;->getNormalizedToBuffer(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 997
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    instance-of v0, v0, Landroidx/camera/view/TextureViewImplementation;

    if-eqz v0, :cond_3f

    .line 998
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_44

    :cond_3f
    const-string v0, "PreviewView needs to be in COMPATIBLE mode for the transform to work correctly."

    .line 1000
    invoke-static {v3, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :goto_44
    new-instance v0, Landroidx/camera/view/transform/OutputTransform;

    new-instance v3, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1005
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, v1, v3}, Landroidx/camera/view/transform/OutputTransform;-><init>(Landroid/graphics/Matrix;Landroid/util/Size;)V

    return-object v0

    :cond_57
    :goto_57
    const-string v1, "Transform info is not ready"

    .line 990
    invoke-static {v3, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPreviewStreamState()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/view/PreviewView$StreamState;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewStreamStateLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getScaleType()Landroidx/camera/view/PreviewView$ScaleType;
    .registers 2

    .line 472
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 473
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewTransformation;->getScaleType()Landroidx/camera/view/PreviewView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;
    .registers 2

    .line 433
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 434
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mSurfaceProvider:Landroidx/camera/core/Preview$SurfaceProvider;

    return-object v0
.end method

.method public getViewPort()Landroidx/camera/core/ViewPort;
    .registers 2

    .line 567
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 568
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    .line 572
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/camera/view/PreviewView;->getViewPort(I)Landroidx/camera/core/ViewPort;

    move-result-object v0

    return-object v0
.end method

.method public getViewPort(I)Landroidx/camera/core/ViewPort;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 617
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 618
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_37

    .line 621
    :cond_10
    new-instance v0, Landroidx/camera/core/ViewPort$Builder;

    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    invoke-direct {v0, v1, p1}, Landroidx/camera/core/ViewPort$Builder;-><init>(Landroid/util/Rational;I)V

    .line 622
    invoke-direct {p0}, Landroidx/camera/view/PreviewView;->getViewPortScaleType()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/ViewPort$Builder;->setScaleType(I)Landroidx/camera/core/ViewPort$Builder;

    move-result-object p1

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/ViewPort$Builder;->setLayoutDirection(I)Landroidx/camera/core/ViewPort$Builder;

    move-result-object p1

    .line 624
    invoke-virtual {p1}, Landroidx/camera/core/ViewPort$Builder;->build()Landroidx/camera/core/ViewPort;

    move-result-object p1

    return-object p1

    :cond_37
    :goto_37
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 320
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 321
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->updateDisplayRotationIfNeeded()V

    .line 322
    invoke-direct {p0}, Landroidx/camera/view/PreviewView;->startListeningToDisplayChange()V

    .line 323
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 324
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-eqz v0, :cond_15

    .line 325
    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->onAttachedToWindow()V

    :cond_15
    const/4 v0, 0x1

    .line 327
    invoke-direct {p0, v0}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 332
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 333
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 334
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-eqz v0, :cond_f

    .line 335
    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->onDetachedFromWindow()V

    .line 340
    :cond_f
    invoke-direct {p0}, Landroidx/camera/view/PreviewView;->stopListeningToDisplayChange()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 347
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .registers 2

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Landroidx/camera/view/PreviewView;->mTouchUpEvent:Landroid/view/MotionEvent;

    .line 374
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method redrawPreview()V
    .registers 5

    .line 654
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 655
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mImplementation:Landroidx/camera/view/PreviewViewImplementation;

    if-eqz v0, :cond_a

    .line 656
    invoke-virtual {v0}, Landroidx/camera/view/PreviewViewImplementation;->redrawPreview()V

    .line 658
    :cond_a
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewViewMeteringPointFactory:Landroidx/camera/view/PreviewViewMeteringPointFactory;

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 659
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    .line 658
    invoke-virtual {v0, v1, v2}, Landroidx/camera/view/PreviewViewMeteringPointFactory;->recalculate(Landroid/util/Size;I)V

    return-void
.end method

.method public setController(Landroidx/camera/view/CameraController;)V
    .registers 2

    .line 940
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 p1, 0x0

    .line 947
    invoke-direct {p0, p1}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    return-void
.end method

.method public setImplementationMode(Landroidx/camera/view/PreviewView$ImplementationMode;)V
    .registers 3

    .line 392
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 393
    iput-object p1, p0, Landroidx/camera/view/PreviewView;->mImplementationMode:Landroidx/camera/view/PreviewView$ImplementationMode;

    .line 395
    sget-object v0, Landroidx/camera/view/PreviewView$ImplementationMode;->PERFORMANCE:Landroidx/camera/view/PreviewView$ImplementationMode;

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Landroidx/camera/view/PreviewView;->mOnFrameUpdateListener:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    if-nez p1, :cond_e

    goto :goto_16

    .line 397
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PERFORMANCE mode doesn\'t support frame update listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    return-void
.end method

.method public setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V
    .registers 3

    .line 455
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 456
    iget-object v0, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    invoke-virtual {v0, p1}, Landroidx/camera/view/PreviewTransformation;->setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V

    .line 457
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView;->redrawPreview()V

    const/4 p1, 0x0

    .line 459
    invoke-direct {p0, p1}, Landroidx/camera/view/PreviewView;->attachToControllerIfReady(Z)V

    return-void
.end method

.method updateDisplayRotationIfNeeded()V
    .registers 5

    .line 695
    iget-boolean v0, p0, Landroidx/camera/view/PreviewView;->mUseDisplayRotation:Z

    if-eqz v0, :cond_1f

    .line 696
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 697
    iget-object v1, p0, Landroidx/camera/view/PreviewView;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    if-eqz v1, :cond_1f

    .line 698
    iget-object v2, p0, Landroidx/camera/view/PreviewView;->mPreviewTransform:Landroidx/camera/view/PreviewTransformation;

    .line 700
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 699
    invoke-interface {v1, v3}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    move-result v1

    .line 700
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 698
    invoke-virtual {v2, v1, v0}, Landroidx/camera/view/PreviewTransformation;->overrideWithDisplayRotation(II)V

    :cond_1f
    return-void
.end method
