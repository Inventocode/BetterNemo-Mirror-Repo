.class public Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
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

.field private mCurrentFlingRunnable:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalScrollEdge:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcn/codemao/android/sketch/xpopup/photoview/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewDragListener:Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;

.field private mOutsidePhotoTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnPhotoTapListener;

.field private mScaleChangeListener:Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;

.field private mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSingleFlingListener:Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mVerticalScrollEdge:I

.field private mViewTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnViewTapListener;

.field private mZoomDuration:I

.field private mZoomEnabled:Z

.field private onGestureListener:Lcn/codemao/android/sketch/xpopup/photoview/OnGestureListener;

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 5

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    sget v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->DEFAULT_ZOOM_DURATION:I

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 60
    sget v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    .line 61
    sget v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MID_SCALE:F

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    .line 62
    sget v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MAX_SCALE:F

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 74
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 75
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 78
    iput-object v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMatrixValues:[F

    const/4 v2, 0x2

    .line 92
    iput v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 93
    iput v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 97
    iput-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 98
    iput-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    .line 99
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 100
    new-instance v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$1;-><init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->onGestureListener:Lcn/codemao/android/sketch/xpopup/photoview/OnGestureListener;

    .line 169
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 170
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 172
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_65

    return-void

    :cond_65
    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 177
    new-instance v0, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->onGestureListener:Lcn/codemao/android/sketch/xpopup/photoview/OnGestureListener;

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcn/codemao/android/sketch/xpopup/photoview/OnGestureListener;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    .line 178
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$2;-><init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 203
    new-instance p1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$3;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$3;-><init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$1002(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;)Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;
    .registers 2

    .line 40
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)F
    .registers 1

    .line 40
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method static synthetic access$1400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;

    return-object p0
.end method

.method static synthetic access$1700()F
    .registers 1

    .line 40
    sget v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    return v0
.end method

.method static synthetic access$1800()I
    .registers 1

    .line 40
    sget v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    return v0
.end method

.method static synthetic access$1900(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnViewTapListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mViewTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnViewTapListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnPhotoTapListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnPhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnOutsidePhotoTapListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Lcn/codemao/android/sketch/xpopup/photoview/OnGestureListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->onGestureListener:Lcn/codemao/android/sketch/xpopup/photoview/OnGestureListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 40
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mZoomDuration:I

    return p0
.end method

.method static synthetic access$2500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 40
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    return p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 40
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    return p0
.end method

.method static synthetic access$600(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return p0
.end method

.method static synthetic access$800(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    return p0
.end method

.method static synthetic access$900(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    return p0
.end method

.method private cancelFling()V
    .registers 2

    .line 751
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_a

    .line 752
    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$FlingRunnable;

    :cond_a
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .registers 2

    .line 593
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 594
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_d
    return-void
.end method

.method private checkMatrixBounds()Z
    .registers 14

    .line 683
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 687
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 689
    iget-object v4, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

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

    .line 690
    iget v11, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v11, v10

    if-ltz v11, :cond_4a

    .line 691
    sget-object v11, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v12, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_44

    if-eq v11, v7, :cond_3f

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    .line 699
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_42

    :cond_3f
    sub-float/2addr v4, v2

    .line 696
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_42
    sub-float/2addr v4, v2

    goto :goto_47

    .line 693
    :cond_44
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    .line 702
    :goto_47
    iput v9, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    goto :goto_61

    .line 703
    :cond_4a
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v11, v2, v10

    if-ltz v11, :cond_54

    .line 704
    iput v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    neg-float v4, v2

    goto :goto_61

    .line 706
    :cond_54
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v11, v2, v4

    if-gtz v11, :cond_5e

    .line 707
    iput v8, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    sub-float/2addr v4, v2

    goto :goto_61

    .line 710
    :cond_5e
    iput v6, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    const/4 v4, 0x0

    .line 712
    :goto_61
    iget-object v2, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v11, v3, v2

    if-gtz v11, :cond_92

    .line 715
    iget v11, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v10

    if-ltz v11, :cond_92

    .line 716
    sget-object v1, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v6, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v9, :cond_8b

    if-eq v1, v7, :cond_85

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 724
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_88

    :cond_85
    sub-float/2addr v2, v3

    .line 721
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_88
    sub-float/2addr v2, v0

    move v10, v2

    goto :goto_8f

    .line 718
    :cond_8b
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v10, v0

    .line 727
    :goto_8f
    iput v9, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_a9

    .line 728
    :cond_92
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v10

    if-ltz v5, :cond_9c

    .line 729
    iput v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    neg-float v10, v3

    goto :goto_a9

    .line 731
    :cond_9c
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_a7

    sub-float v10, v2, v0

    .line 733
    iput v8, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_a9

    .line 735
    :cond_a7
    iput v6, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 738
    :goto_a9
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v8
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 6

    .line 605
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 607
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 608
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 607
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 609
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 610
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 543
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 544
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 545
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .registers 4

    .line 747
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

    .line 743
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private resetMatrix()V
    .registers 2

    .line 572
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 573
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 574
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 575
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 579
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 581
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcn/codemao/android/sketch/xpopup/photoview/OnMatrixChangedListener;

    if-eqz v0, :cond_14

    .line 582
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 584
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcn/codemao/android/sketch/xpopup/photoview/OnMatrixChangedListener;

    invoke-interface {v0, p1}, Lcn/codemao/android/sketch/xpopup/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_14
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 624
    :cond_3
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 625
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 626
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 627
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 628
    iget-object v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 631
    iget-object v5, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000  # 2.0f

    if-ne v5, v6, :cond_37

    .line 632
    iget-object v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_e1

    .line 635
    :cond_37
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_53

    .line 636
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 637
    iget-object v4, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 638
    iget-object v4, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_e1

    .line 641
    :cond_53
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/high16 v8, 0x3f800000  # 1.0f

    if-ne v5, v6, :cond_75

    .line 642
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 643
    iget-object v4, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 644
    iget-object v4, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_e1

    .line 648
    :cond_75
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 649
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 650
    iget v7, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v7, v7

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_8c

    .line 651
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v5, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 653
    :cond_8c
    sget-object v7, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v7, v7, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_bb

    const/4 p1, 0x2

    if-eq v7, p1, :cond_b3

    const/4 p1, 0x3

    if-eq v7, p1, :cond_ab

    const/4 p1, 0x4

    if-eq v7, p1, :cond_a3

    goto :goto_e1

    .line 673
    :cond_a3
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_e1

    .line 670
    :cond_ab
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_e1

    .line 667
    :cond_b3
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_e1

    :cond_bb
    cmpl-float v7, p1, v1

    if-lez v7, :cond_da

    mul-float v7, p1, v8

    div-float/2addr v7, v2

    mul-float v1, v1, v8

    div-float/2addr v1, v0

    cmpl-float v1, v7, v1

    if-lez v1, :cond_da

    .line 660
    iput-boolean v9, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    .line 661
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/RectF;

    mul-float p1, p1, v3

    invoke-direct {v2, v5, v5, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v4, v2, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_e1

    .line 663
    :cond_da
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v4, v6, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 679
    :goto_e1
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method


# virtual methods
.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 279
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 280
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 549
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .registers 2

    .line 321
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .registers 2

    .line 317
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .registers 2

    .line 313
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getScale()F
    .registers 7

    .line 325
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 326
    invoke-virtual {p0, v1, v4}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 330
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getValue(Landroid/graphics/Matrix;I)F
    .registers 4

    .line 564
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 565
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    if-ne p2, p6, :cond_8

    if-ne p3, p7, :cond_8

    if-ne p4, p8, :cond_8

    if-eq p5, p9, :cond_11

    .line 338
    :cond_8
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .line 347
    iget-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12c

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/photoview/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_d0

    if-eq v0, v2, :cond_7b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7b

    goto/16 :goto_e8

    .line 385
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 387
    iget-boolean v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isLongImage:Z

    const/high16 v4, 0x40000000  # 2.0f

    if-eqz v3, :cond_51

    cmpl-float v3, v0, p1

    if-lez v3, :cond_41

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    .line 388
    :goto_42
    iput-boolean v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    mul-float v0, v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    .line 389
    :goto_4d
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    goto/16 :goto_e8

    .line 391
    :cond_51
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

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
    iput-boolean v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isVertical:Z

    .line 392
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

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
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isHorizontal:Z

    goto/16 :goto_e8

    .line 365
    :cond_7b
    iput-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    .line 368
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a7

    .line 369
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 371
    new-instance v9, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    .line 372
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;FFFF)V

    .line 371
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_a5
    const/4 p1, 0x1

    goto :goto_e9

    .line 375
    :cond_a7
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e8

    .line 376
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 378
    new-instance v9, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 379
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;FFFF)V

    .line 378
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_a5

    .line 350
    :cond_d0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->x:F

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->y:F

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 357
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->cancelFling()V

    if-eqz p1, :cond_e8

    .line 359
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e8
    :goto_e8
    const/4 p1, 0x0

    .line 397
    :goto_e9
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    if-eqz v0, :cond_120

    .line 398
    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    .line 399
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    .line 400
    iget-object v3, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {v3, p2}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_109

    .line 401
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_109

    const/4 p1, 0x1

    goto :goto_10a

    :cond_109
    const/4 p1, 0x0

    :goto_10a
    if-nez v0, :cond_116

    .line 402
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/xpopup/photoview/CustomGestureDetector;->isDragging()Z

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

    .line 403
    :cond_11c
    iput-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    move v1, v3

    goto :goto_121

    :cond_120
    move v1, p1

    .line 406
    :goto_121
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

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

    .line 415
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setMaximumScale(F)V
    .registers 4

    .line 429
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcn/codemao/android/sketch/xpopup/photoview/Util;->checkZoomLevels(FFF)V

    .line 430
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .registers 4

    .line 424
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcn/codemao/android/sketch/xpopup/photoview/Util;->checkZoomLevels(FFF)V

    .line 425
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .registers 4

    .line 419
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcn/codemao/android/sketch/xpopup/photoview/Util;->checkZoomLevels(FFF)V

    .line 420
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcn/codemao/android/sketch/xpopup/photoview/OnMatrixChangedListener;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcn/codemao/android/sketch/xpopup/photoview/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcn/codemao/android/sketch/xpopup/photoview/OnOutsidePhotoTapListener;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcn/codemao/android/sketch/xpopup/photoview/OnPhotoTapListener;)V
    .registers 2

    .line 453
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcn/codemao/android/sketch/xpopup/photoview/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcn/codemao/android/sketch/xpopup/photoview/OnSingleFlingListener;

    return-void
.end method

.method public setOnViewDragListener(Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcn/codemao/android/sketch/xpopup/photoview/OnViewDragListener;

    return-void
.end method

.method public setOnViewTapListener(Lcn/codemao/android/sketch/xpopup/photoview/OnViewTapListener;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mViewTapListener:Lcn/codemao/android/sketch/xpopup/photoview/OnViewTapListener;

    return-void
.end method

.method public setRotationBy(F)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000  # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 309
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .registers 4

    .line 303
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000  # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 304
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .registers 12

    if-eqz p4, :cond_16

    .line 483
    iget-object p4, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 486
    :cond_16
    iget-object p4, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 487
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_1e
    return-void
.end method

.method public setScale(FZ)V
    .registers 5

    .line 473
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 501
    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/photoview/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_f

    .line 502
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 503
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_f
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .registers 2

    .line 553
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mZoomDuration:I

    return-void
.end method

.method public setZoomable(Z)V
    .registers 2

    .line 512
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 513
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .registers 2

    .line 517
    iget-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_e

    .line 519
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 522
    :cond_e
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->resetMatrix()V

    :goto_11
    return-void
.end method
