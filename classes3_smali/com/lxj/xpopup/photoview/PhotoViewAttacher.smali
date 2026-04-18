.class public Lcom/lxj/xpopup/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/lxj/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_SCALE:F = 4.0f

.field private static DEFAULT_MID_SCALE:F = 2.5f

.field private static DEFAULT_MIN_SCALE:F = 1.0f

.field private static DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static SINGLE_TOUCH:I = 0x1


# instance fields
.field public isBottomEnd:Z

.field public isHorizontal:Z

.field public isLeftEnd:Z

.field private isLongImage:Z

.field public isRightEnd:Z

.field public isTopEnd:Z

.field public isVertical:Z

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalScrollEdge:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewDragListener:Lcom/lxj/xpopup/photoview/OnViewDragListener;

.field private mOutsidePhotoTapListener:Lcom/lxj/xpopup/photoview/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcom/lxj/xpopup/photoview/OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/lxj/xpopup/photoview/OnScaleChangedListener;

.field private mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSingleFlingListener:Lcom/lxj/xpopup/photoview/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mVerticalScrollEdge:I

.field private mViewTapListener:Lcom/lxj/xpopup/photoview/OnViewTapListener;

.field private mZoomDuration:I

.field private mZoomEnabled:Z

.field private onGestureListener:Lcom/lxj/xpopup/photoview/OnGestureListener;

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    sget v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->DEFAULT_ZOOM_DURATION:I

    iput v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 61
    sget v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    iput v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    .line 62
    sget v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MID_SCALE:F

    iput v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    .line 63
    sget v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MAX_SCALE:F

    iput v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 75
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 78
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 79
    iput-object v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMatrixValues:[F

    const/4 v2, 0x2

    .line 93
    iput v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 94
    iput v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 98
    iput-boolean v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 99
    iput-boolean v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    .line 100
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 101
    new-instance v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$1;-><init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)V

    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->onGestureListener:Lcom/lxj/xpopup/photoview/OnGestureListener;

    .line 173
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 174
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 176
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_65

    return-void

    :cond_65
    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 181
    new-instance v0, Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->onGestureListener:Lcom/lxj/xpopup/photoview/OnGestureListener;

    invoke-direct {v0, v1, v2}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/lxj/xpopup/photoview/OnGestureListener;)V

    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    .line 182
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$2;-><init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 207
    new-instance p1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$3;

    invoke-direct {p1, p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$3;-><init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/CustomGestureDetector;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnViewDragListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcom/lxj/xpopup/photoview/OnViewDragListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;)Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)F
    .registers 1

    .line 41
    iget p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method static synthetic access$1400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnScaleChangedListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/lxj/xpopup/photoview/OnScaleChangedListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnSingleFlingListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/lxj/xpopup/photoview/OnSingleFlingListener;

    return-object p0
.end method

.method static synthetic access$1700()F
    .registers 1

    .line 41
    sget v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    return v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .line 41
    sget v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnViewTapListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/lxj/xpopup/photoview/OnViewTapListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnPhotoTapListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/lxj/xpopup/photoview/OnPhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnOutsidePhotoTapListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/lxj/xpopup/photoview/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Lcom/lxj/xpopup/photoview/OnGestureListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->onGestureListener:Lcom/lxj/xpopup/photoview/OnGestureListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mZoomDuration:I

    return p0
.end method

.method static synthetic access$2500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    return p0
.end method

.method static synthetic access$500(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    return p0
.end method

.method static synthetic access$600(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return p0
.end method

.method static synthetic access$800(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    return p0
.end method

.method static synthetic access$900(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    return p0
.end method

.method private cancelFling()V
    .registers 2

    .line 757
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_a

    .line 758
    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 759
    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lxj/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    :cond_a
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .registers 2

    .line 597
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 598
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_d
    return-void
.end method

.method private checkMatrixBounds()Z
    .registers 14

    .line 689
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 693
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 695
    iget-object v4, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_4a

    .line 696
    iget v11, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v11, v10

    if-ltz v11, :cond_4a

    .line 697
    sget-object v11, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v12, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_44

    if-eq v11, v7, :cond_3f

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    .line 705
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_42

    :cond_3f
    sub-float/2addr v4, v2

    .line 702
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_42
    sub-float/2addr v4, v2

    goto :goto_47

    .line 699
    :cond_44
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    .line 708
    :goto_47
    iput v9, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    goto :goto_61

    .line 709
    :cond_4a
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v2, v10

    if-ltz v11, :cond_54

    .line 710
    iput v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    neg-float v4, v2

    goto :goto_61

    .line 712
    :cond_54
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_5e

    .line 713
    iput v8, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    sub-float/2addr v4, v2

    goto :goto_61

    .line 716
    :cond_5e
    iput v6, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    const/4 v4, 0x0

    .line 718
    :goto_61
    iget-object v2, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v11, v3, v2

    if-gtz v11, :cond_92

    .line 721
    iget v11, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v10

    if-ltz v11, :cond_92

    .line 722
    sget-object v1, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v6, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v9, :cond_8b

    if-eq v1, v7, :cond_85

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 730
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_88

    :cond_85
    sub-float/2addr v2, v3

    .line 727
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_88
    sub-float/2addr v2, v0

    move v10, v2

    goto :goto_8f

    .line 724
    :cond_8b
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v10, v0

    .line 733
    :goto_8f
    iput v9, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_a9

    .line 734
    :cond_92
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v10

    if-ltz v5, :cond_9c

    .line 735
    iput v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    neg-float v10, v3

    goto :goto_a9

    .line 737
    :cond_9c
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_a7

    sub-float v10, v2, v0

    .line 739
    iput v8, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_a9

    .line 741
    :cond_a7
    iput v6, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 744
    :goto_a9
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 611
    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 612
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 611
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 613
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 614
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 548
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 549
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 753
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 749
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private resetMatrix()V
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 577
    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 578
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 579
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 585
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;

    if-eqz v0, :cond_14

    .line 586
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 588
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;

    invoke-interface {v0, p1}, Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_14
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 629
    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 630
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 631
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 632
    iget-object v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 635
    iget-object v5, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000  # 2.0f

    if-ne v5, v6, :cond_37

    .line 636
    iget-object v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_dc

    .line 639
    :cond_37
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_53

    .line 640
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 641
    iget-object v4, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 642
    iget-object v4, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_dc

    .line 645
    :cond_53
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/high16 v8, 0x3f800000  # 1.0f

    if-ne v5, v6, :cond_74

    .line 646
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 647
    iget-object v4, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 648
    iget-object v4, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_dc

    .line 652
    :cond_74
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 653
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 654
    iget v7, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v7, v7

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_8b

    .line 655
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v5, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 659
    :cond_8b
    sget-object v7, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v7, v7, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_ba

    const/4 p1, 0x2

    if-eq v7, p1, :cond_b2

    const/4 p1, 0x3

    if-eq v7, p1, :cond_aa

    const/4 p1, 0x4

    if-eq v7, p1, :cond_a2

    goto :goto_dc

    .line 679
    :cond_a2
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_dc

    .line 676
    :cond_aa
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_dc

    .line 673
    :cond_b2
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_dc

    :cond_ba
    mul-float v7, p1, v8

    div-float/2addr v7, v2

    mul-float v1, v1, v8

    div-float/2addr v1, v0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_d5

    .line 666
    iput-boolean v9, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    .line 667
    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/RectF;

    mul-float p1, p1, v3

    invoke-direct {v2, v5, v5, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v4, v2, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_dc

    .line 669
    :cond_d5
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 685
    :goto_dc
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method


# virtual methods
.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 283
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 284
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 553
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .registers 2

    .line 325
    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .registers 2

    .line 321
    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .registers 2

    .line 317
    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getScale()F
    .registers 7

    .line 329
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 330
    invoke-virtual {p0, v1, v4}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 329
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getValue(Landroid/graphics/Matrix;I)F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "whichValue"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 569
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    if-ne p2, p6, :cond_8

    if-ne p3, p7, :cond_8

    if-ne p4, p8, :cond_8

    if-eq p5, p9, :cond_11

    .line 342
    :cond_8
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "ev"
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12c

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/lxj/xpopup/photoview/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_d0

    if-eq v0, v2, :cond_7b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7b

    goto/16 :goto_e8

    .line 389
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 391
    iget-boolean v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    const/high16 v4, 0x40000000  # 2.0f

    if-eqz v3, :cond_51

    cmpl-float v3, v0, p1

    if-lez v3, :cond_41

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    .line 392
    :goto_42
    iput-boolean v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    mul-float v0, v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    .line 393
    :goto_4d
    iput-boolean p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    goto/16 :goto_e8

    .line 395
    :cond_51
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    float-to-double v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_62

    cmpl-float v3, v0, p1

    if-lez v3, :cond_62

    const/4 v3, 0x1

    goto :goto_63

    :cond_62
    const/4 v3, 0x0

    :goto_63
    iput-boolean v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    .line 396
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    float-to-double v5, v3

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_76

    mul-float v0, v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_76

    const/4 p1, 0x1

    goto :goto_77

    :cond_76
    const/4 p1, 0x0

    :goto_77
    iput-boolean p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    goto/16 :goto_e8

    .line 369
    :cond_7b
    iput-boolean v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    .line 372
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a7

    .line 373
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 375
    new-instance v9, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    .line 376
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;FFFF)V

    .line 375
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_a5
    const/4 p1, 0x1

    goto :goto_e9

    .line 379
    :cond_a7
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e8

    .line 380
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 382
    new-instance v9, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 383
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;FFFF)V

    .line 382
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_a5

    .line 354
    :cond_d0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->x:F

    .line 355
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->y:F

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 361
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->cancelFling()V

    if-eqz p1, :cond_e8

    .line 363
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e8
    :goto_e8
    const/4 p1, 0x0

    .line 401
    :goto_e9
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    if-eqz v0, :cond_120

    .line 402
    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    .line 403
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    .line 404
    iget-object v3, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {v3, p2}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_109

    .line 405
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_109

    const/4 p1, 0x1

    goto :goto_10a

    :cond_109
    const/4 p1, 0x0

    :goto_10a
    if-nez v0, :cond_116

    .line 406
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lxj/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_116

    const/4 v0, 0x1

    goto :goto_117

    :cond_116
    const/4 v0, 0x0

    :goto_117
    if-eqz p1, :cond_11c

    if-eqz v0, :cond_11c

    const/4 v1, 0x1

    .line 407
    :cond_11c
    iput-boolean v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    move v1, v3

    goto :goto_121

    :cond_120
    move v1, p1

    .line 410
    :goto_121
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p1, :cond_12c

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_12c

    const/4 v1, 0x1

    :cond_12c
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allow"
        }
    .end annotation

    .line 419
    iput-boolean p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setMaximumScale(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maximumScale"
        }
    .end annotation

    .line 433
    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/lxj/xpopup/photoview/Util;->checkZoomLevels(FFF)V

    .line 434
    iput p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediumScale"
        }
    .end annotation

    .line 428
    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/lxj/xpopup/photoview/Util;->checkZoomLevels(FFF)V

    .line 429
    iput p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minimumScale"
        }
    .end annotation

    .line 423
    iget v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/lxj/xpopup/photoview/Util;->checkZoomLevels(FFF)V

    .line 424
    iput p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newOnDoubleTapListener"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/lxj/xpopup/photoview/OnOutsidePhotoTapListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOutsidePhotoTapListener"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/lxj/xpopup/photoview/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/lxj/xpopup/photoview/OnPhotoTapListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/lxj/xpopup/photoview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/lxj/xpopup/photoview/OnScaleChangedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScaleChangeListener"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/lxj/xpopup/photoview/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/lxj/xpopup/photoview/OnSingleFlingListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSingleFlingListener"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/lxj/xpopup/photoview/OnSingleFlingListener;

    return-void
.end method

.method public setOnViewDragListener(Lcom/lxj/xpopup/photoview/OnViewDragListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcom/lxj/xpopup/photoview/OnViewDragListener;

    return-void
.end method

.method public setOnViewTapListener(Lcom/lxj/xpopup/photoview/OnViewTapListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/lxj/xpopup/photoview/OnViewTapListener;

    return-void
.end method

.method public setRotationBy(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000  # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 313
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000  # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 308
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, p1, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "focalX",
            "focalY",
            "animate"
        }
    .end annotation

    if-eqz p4, :cond_16

    .line 487
    iget-object p4, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/lxj/xpopup/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 490
    :cond_16
    iget-object p4, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 491
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_1e
    return-void
.end method

.method public setScale(FZ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scale",
            "animate"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 505
    invoke-static {p1}, Lcom/lxj/xpopup/photoview/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_f

    .line 506
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 507
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_f
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliseconds"
        }
    .end annotation

    .line 557
    iput p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mZoomDuration:I

    return-void
.end method

.method public setZoomable(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomable"
        }
    .end annotation

    .line 516
    iput-boolean p1, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 517
    invoke-virtual {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .registers 2

    .line 521
    iget-boolean v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_e

    .line 523
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 526
    :cond_e
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->resetMatrix()V

    :goto_11
    return-void
.end method
