.class public Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "StyleDragRecyclerView.java"


# instance fields
.field private adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

.field private bitmap:Landroid/graphics/Bitmap;

.field private dragEnable:Z

.field private dragImage:Landroid/widget/ImageView;

.field private dragItem:Landroid/view/View;

.field private isInRoleDragModel:Z

.field touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragEnable:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->isInRoleDragModel:Z

    .line 57
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;-><init>(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragEnable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->isInRoleDragModel:Z

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Landroid/view/View;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->createFollowView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dismissFollowView()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/view/View;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragItem:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/widget/ImageView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$702(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private createFollowView(Landroid/view/View;)V
    .registers 7

    .line 141
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragItem:Landroid/view/View;

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->bitmap:Landroid/graphics/Bitmap;

    .line 147
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 151
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 153
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, 0x0

    .line 158
    aget v4, v1, v3

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 159
    aget v0, v1, v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 161
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 168
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const v0, 0x3f8a3d71  # 1.08f

    .line 169
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 171
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private dismissFollowView()V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 179
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragItem:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    .line 181
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 183
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d23d70a  # 0.04f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 185
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    .line 187
    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 188
    invoke-virtual {v5, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/4 v5, 0x1

    aget v6, v1, v5

    aget v5, v0, v5

    sub-int/2addr v6, v5

    sub-int/2addr v6, v2

    int-to-float v5, v6

    .line 189
    invoke-virtual {v4, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/4 v5, 0x0

    aget v1, v1, v5

    aget v0, v0, v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 190
    invoke-virtual {v4, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 191
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;

    invoke-direct {v1, p0, v3}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$2;-><init>(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 192
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private fllowDragView()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 261
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 262
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    .line 263
    aget v2, v0, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x1

    .line 264
    aget v0, v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 265
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    const/high16 p2, 0x41200000  # 10.0f

    .line 53
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_22

    .line 246
    :cond_b
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->isInRoleDragModel:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->isInRoleDragModel:Z

    .line 250
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 251
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 256
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_13

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragItem:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 232
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->fllowDragView()V

    .line 237
    :cond_13
    :goto_13
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragAdapter(Lcom/codemao/creativecenter/callback/OnItemChangeListener;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;
    .registers 3

    .line 293
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_13

    .line 294
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    .line 295
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 296
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->adapter:Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p0

    .line 298
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setDragImageView(Landroid/widget/ImageView;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->dragImage:Landroid/widget/ImageView;

    return-void
.end method

.method public showDragAnimation(Z)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;
    .registers 2

    return-object p0
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
