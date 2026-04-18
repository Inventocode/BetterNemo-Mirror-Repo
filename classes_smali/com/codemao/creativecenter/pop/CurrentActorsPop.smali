.class public Lcom/codemao/creativecenter/pop/CurrentActorsPop;
.super Lcom/nemo/commonui/xpopup/core/PositionPopupView;
.source "CurrentActorsPop.java"


# instance fields
.field private activity:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private currentAdapters:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

.field public fl_header:Landroid/widget/FrameLayout;

.field private final height:I

.field public ll_current_actor:Landroid/view/View;

.field private rv_fullscreen_actors:Landroidx/recyclerview/widget/RecyclerView;

.field private final scaledTouchSlop:I

.field private view_bg:Landroid/view/View;

.field private final width:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Landroid/view/View;)V
    .registers 7

    .line 50
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/PositionPopupView;-><init>(Landroid/content/Context;)V

    .line 51
    iput p2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->width:I

    .line 52
    iput p3, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->height:I

    .line 53
    iput-object p4, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 54
    iput-object p5, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 55
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->scaledTouchSlop:I

    .line 56
    iput-object p6, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->ll_current_actor:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->view_bg:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->rv_fullscreen_actors:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)Lcom/codemao/creativecenter/adpater/CurrentAdapters;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->currentAdapters:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    return-object p0
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 116
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_current_actors:I

    return v0
.end method

.method protected onCreate()V
    .registers 5

    .line 62
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 63
    sget v0, Lcom/codemao/creativecenter/R$id;->fl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    sget v1, Lcom/codemao/creativecenter/R$id;->view_bg:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->view_bg:Landroid/view/View;

    .line 65
    sget v1, Lcom/codemao/creativecenter/R$id;->fl_header:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->fl_header:Landroid/widget/FrameLayout;

    .line 66
    sget v1, Lcom/codemao/creativecenter/R$id;->rv_fullscreen_actors:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->rv_fullscreen_actors:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    iget v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 69
    iget v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->height:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->rv_fullscreen_actors:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance v1, Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-direct {v1, v2, v3, p0}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/pop/CurrentActorsPop;)V

    iput-object v1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->currentAdapters:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    .line 74
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->rv_fullscreen_actors:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->getTime()I

    move-result v1

    invoke-direct {v3, v2, v1}, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 75
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->rv_fullscreen_actors:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->currentAdapters:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v1, 0x14

    .line 76
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 79
    new-instance v0, Lcom/codemao/creativecenter/pop/CurrentActorsPop$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/pop/CurrentActorsPop$1;-><init>(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_62

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_56

    if-eq v0, v1, :cond_24

    goto :goto_62

    .line 100
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->x:F

    sub-float/2addr v0, v2

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->y:F

    sub-float/2addr p1, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    .line 102
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v6, p1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 103
    iget v0, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->scaledTouchSlop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_50

    .line 104
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->currentAdapters:Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->quite()V

    :cond_50
    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->x:F

    .line 107
    iput p1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->y:F

    goto :goto_62

    .line 96
    :cond_56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->x:F

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->y:F

    :cond_62
    :goto_62
    return v1
.end method
