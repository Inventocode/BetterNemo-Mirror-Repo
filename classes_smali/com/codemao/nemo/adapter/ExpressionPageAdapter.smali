.class public Lcom/codemao/nemo/adapter/ExpressionPageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ExpressionPageAdapter.java"


# instance fields
.field private columnCount:I

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation
.end field

.field private expressionChooseCallback:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;",
            "Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 p2, 0x4

    .line 24
    iput p2, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->columnCount:I

    .line 30
    iput-object p4, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->datas:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->context:Landroid/content/Context;

    .line 32
    iput p3, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->columnCount:I

    .line 33
    iput-object p5, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->expressionChooseCallback:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/ExpressionPageAdapter;)Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->expressionChooseCallback:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 72
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 9

    .line 50
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->columnCount:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 54
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    new-instance v1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->datas:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ExpressionChooseItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ExpressionChooseItem;->getExpressionChooseItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 56
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    .line 57
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v3

    .line 58
    new-instance v4, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;

    iget-object v5, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->context:Landroid/content/Context;

    if-le v3, v2, :cond_41

    iget v3, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->columnCount:I

    div-int/2addr v2, v3

    goto :goto_45

    :cond_41
    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionPageAdapter;->columnCount:I

    div-int v2, v3, v2

    :goto_45
    new-instance v3, Lcom/codemao/nemo/adapter/ExpressionPageAdapter$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/adapter/ExpressionPageAdapter$1;-><init>(Lcom/codemao/nemo/adapter/ExpressionPageAdapter;)V

    invoke-direct {v4, v5, p2, v2, v3}, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;-><init>(Landroid/content/Context;IILcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;)V

    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 64
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
