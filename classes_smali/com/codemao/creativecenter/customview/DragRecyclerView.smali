.class public Lcom/codemao/creativecenter/customview/DragRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "DragRecyclerView.java"


# instance fields
.field private adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

.field private bitmap:Landroid/graphics/Bitmap;

.field private dragEnable:Z

.field private dragImage:Landroid/widget/ImageView;

.field private dragItem:Landroid/view/View;

.field private flcover:Landroid/widget/FrameLayout;

.field private isInRoleDragModel:Z

.field private px4:I

.field private px8:I

.field private revertAnimation:Landroid/view/animation/ScaleAnimation;

.field private showDragAnimation:Z

.field touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private zoomAnimation:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 24

    move-object/from16 v0, p0

    .line 57
    invoke-direct/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, v0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragEnable:Z

    .line 39
    iput-boolean v1, v0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->showDragAnimation:Z

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, v0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->isInRoleDragModel:Z

    .line 66
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;

    invoke-direct {v2, v0}, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;-><init>(Lcom/codemao/creativecenter/customview/DragRecyclerView;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v1, v0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 283
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f8a3d71  # 1.08f

    const/high16 v6, 0x3f800000  # 1.0f

    const v7, 0x3f8a3d71  # 1.08f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000  # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000  # 0.5f

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, v0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->zoomAnimation:Landroid/view/animation/ScaleAnimation;

    .line 284
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3f8a3d71  # 1.08f

    const/high16 v14, 0x3f800000  # 1.0f

    const v15, 0x3f8a3d71  # 1.08f

    const/high16 v16, 0x3f800000  # 1.0f

    const/16 v17, 0x1

    const/high16 v18, 0x3f000000  # 0.5f

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000  # 0.5f

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, v0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertAnimation:Landroid/view/animation/ScaleAnimation;

    .line 58
    invoke-direct/range {p0 .. p2}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragEnable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/widget/ImageView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->showDragAnimation:Z

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->zoomView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$402(Lcom/codemao/creativecenter/customview/DragRecyclerView;Z)Z
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->isInRoleDragModel:Z

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->createFollowView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/customview/DragRecyclerView;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dismissFollowView()V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/view/View;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragItem:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static clipViewCornerByDp(Landroid/view/View;I)V
    .registers 3

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 296
    new-instance v0, Lcom/codemao/creativecenter/customview/DragRecyclerView$3;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView$3;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private createFollowView(Landroid/view/View;)V
    .registers 8

    .line 246
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragItem:Landroid/view/View;

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->bitmap:Landroid/graphics/Bitmap;

    .line 252
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 256
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 258
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->px8:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->px8:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, 0x0

    .line 263
    aget v4, v1, v3

    iget v5, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->px4:I

    sub-int/2addr v4, v5

    sget v5, Lcom/codemao/creativestore/CreativeStoreConstants;->NOTCHMARGIN:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 264
    aget v0, v1, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 266
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 272
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragImage:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 274
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const v0, 0x3f8a3d71  # 1.08f

    .line 275
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 276
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 277
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private dismissFollowView()V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 157
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragItem:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    .line 159
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 161
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d23d70a  # 0.04f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 163
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    .line 165
    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 166
    invoke-virtual {v5, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/4 v5, 0x1

    aget v1, v1, v5

    aget v0, v0, v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 167
    invoke-virtual {v4, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 168
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;

    invoke-direct {v1, p0, v3}, Lcom/codemao/creativecenter/customview/DragRecyclerView$2;-><init>(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 169
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private fllowDragView()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 237
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 238
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x1

    .line 239
    aget v0, v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 240
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    const/high16 p2, 0x41000000  # 8.0f

    .line 62
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->px8:I

    const/high16 p2, 0x40800000  # 4.0f

    .line 63
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->px4:I

    return-void
.end method

.method private revertView(Landroid/view/View;)V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 307
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 308
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 309
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/codemao/creativecenter/customview/DragRecyclerView$4;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView$4;-><init>(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 327
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1}, Landroid/view/animation/ScaleAnimation;->start()V

    return-void
.end method

.method private zoomView(Landroid/view/View;)V
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->zoomAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->zoomAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 289
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->zoomAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 290
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->zoomAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1}, Landroid/view/animation/ScaleAnimation;->start()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_22

    .line 222
    :cond_b
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->isInRoleDragModel:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->isInRoleDragModel:Z

    .line 226
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 227
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 232
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_13

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragItem:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 208
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->fllowDragView()V

    .line 213
    :cond_13
    :goto_13
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragAdapter(Lcom/codemao/creativecenter/callback/OnItemChangeListener;)Lcom/codemao/creativecenter/customview/DragRecyclerView;
    .registers 3

    .line 342
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_13

    .line 343
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    .line 344
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 345
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p0

    .line 347
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setDragImageView(Landroid/widget/FrameLayout;)V
    .registers 3

    .line 365
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->flcover:Landroid/widget/FrameLayout;

    .line 366
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_actor_list_cover:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->dragImage:Landroid/widget/ImageView;

    .line 367
    sget v0, Lcom/codemao/creativecenter/R$id;->view_shadow:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    return-void
.end method

.method public showDragAnimation(Z)Lcom/codemao/creativecenter/customview/DragRecyclerView;
    .registers 2

    .line 336
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->showDragAnimation:Z

    return-object p0
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
