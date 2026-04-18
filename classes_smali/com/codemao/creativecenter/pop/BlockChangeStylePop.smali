.class public Lcom/codemao/creativecenter/pop/BlockChangeStylePop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "BlockChangeStylePop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private actor:Lcom/codemao/creativestore/bean/ActorVO;

.field private changeStylesAdapter:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field private position:I

.field private rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;ILcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6

    .line 39
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 41
    iput-object p3, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 42
    iput p4, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->position:I

    .line 43
    iput-object p5, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/BlockChangeStylePop;)Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/BlockChangeStylePop;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    return-object p0
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 73
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_change_style:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 80
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz p1, :cond_11

    .line 81
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;->getCurrentIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 84
    :cond_11
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected onCreate()V
    .registers 6

    .line 49
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 50
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_styles:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    .line 51
    sget v0, Lcom/codemao/creativecenter/R$id;->sure:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/GridItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/customview/GridItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 55
    new-instance v0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v1, 0xc8

    .line 56
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 57
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 59
    new-instance v0, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget v4, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;-><init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;I)V

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/BlockChangeStylesAdapter;

    .line 60
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/BlockChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/BlockChangeStylePop$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/BlockChangeStylePop$1;-><init>(Lcom/codemao/creativecenter/pop/BlockChangeStylePop;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
