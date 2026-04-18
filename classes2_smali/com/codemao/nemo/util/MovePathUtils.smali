.class public Lcom/codemao/nemo/util/MovePathUtils;
.super Ljava/lang/Object;
.source "MovePathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;,
        Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 28
    iput v0, p0, Lcom/codemao/nemo/util/MovePathUtils;->mScaleFactor:F

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/codemao/nemo/util/MovePathUtils;->mView:Landroid/view/View;

    .line 40
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object p2, p0, Lcom/codemao/nemo/util/MovePathUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/util/MovePathUtils$SimpleScaleListenerImpl;-><init>(Lcom/codemao/nemo/util/MovePathUtils;Lcom/codemao/nemo/util/MovePathUtils$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 41
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/codemao/nemo/util/MovePathUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/util/MovePathUtils$SimpleGestureListenerImpl;-><init>(Lcom/codemao/nemo/util/MovePathUtils;Lcom/codemao/nemo/util/MovePathUtils$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/codemao/nemo/util/MovePathUtils;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/util/MovePathUtils;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/codemao/nemo/util/MovePathUtils;->mScaleFactor:F

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/util/MovePathUtils;F)F
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/nemo/util/MovePathUtils;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/util/MovePathUtils;)Landroid/view/View;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/nemo/util/MovePathUtils;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/util/MovePathUtils;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/codemao/nemo/util/MovePathUtils;->mPosX:F

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/util/MovePathUtils;F)F
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/nemo/util/MovePathUtils;->mPosX:F

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/util/MovePathUtils;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/codemao/nemo/util/MovePathUtils;->mPosY:F

    return p0
.end method

.method static synthetic access$502(Lcom/codemao/nemo/util/MovePathUtils;F)F
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/nemo/util/MovePathUtils;->mPosY:F

    return p1
.end method


# virtual methods
.method public getGestureDetector()Landroid/view/GestureDetector;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public getScaleDetector()Landroid/view/ScaleGestureDetector;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/util/MovePathUtils;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method
