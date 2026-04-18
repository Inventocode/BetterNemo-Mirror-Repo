.class public Lcn/codemao/android/sketch/utils/MovePathUtils;
.super Ljava/lang/Object;
.source "MovePathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;,
        Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mPosX:F

.field private mPosY:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 27
    iput v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mScaleFactor:F

    .line 37
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mView:Landroid/view/View;

    .line 39
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object p2, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleScaleListenerImpl;-><init>(Lcn/codemao/android/sketch/utils/MovePathUtils;Lcn/codemao/android/sketch/utils/MovePathUtils$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 40
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;

    invoke-direct {v0, p0, v1}, Lcn/codemao/android/sketch/utils/MovePathUtils$SimpleGestureListenerImpl;-><init>(Lcn/codemao/android/sketch/utils/MovePathUtils;Lcn/codemao/android/sketch/utils/MovePathUtils$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$224(Lcn/codemao/android/sketch/utils/MovePathUtils;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mPosX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mPosX:F

    return v0
.end method

.method static synthetic access$324(Lcn/codemao/android/sketch/utils/MovePathUtils;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mPosY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mPosY:F

    return v0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/utils/MovePathUtils;)Landroid/view/View;
    .registers 1

    .line 20
    iget-object p0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$532(Lcn/codemao/android/sketch/utils/MovePathUtils;F)F
    .registers 3

    .line 20
    iget v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mScaleFactor:F

    mul-float v0, v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mScaleFactor:F

    return v0
.end method


# virtual methods
.method public getGestureDetector()Landroid/view/GestureDetector;
    .registers 2

    .line 72
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public getScaleDetector()Landroid/view/ScaleGestureDetector;
    .registers 2

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/MovePathUtils;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method
