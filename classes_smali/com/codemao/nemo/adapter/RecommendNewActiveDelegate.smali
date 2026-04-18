.class public Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;
.super Ljava/lang/Object;
.source "RecommendNewActiveDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private i12:I

.field private i20:I

.field private i26:I

.field private isPad:Z

.field private mSpanNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41400000  # 12.0f

    .line 37
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->i12:I

    const/high16 v0, 0x41a00000  # 20.0f

    .line 38
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->i20:I

    const/high16 v0, 0x41d00000  # 26.0f

    .line 39
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->i26:I

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->mSpanNum:I

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->context:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->isPad:Z

    if-eqz p1, :cond_2b

    const/4 p1, 0x3

    .line 57
    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->mSpanNum:I

    :cond_2b
    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->i20:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->i12:I

    return p0
.end method

.method private getDetailClickListener(Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;Landroid/content/Context;)Landroid/view/View$OnClickListener;
    .registers 4

    .line 167
    new-instance v0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$3;-><init>(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)V"
        }
    .end annotation

    .line 73
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    if-nez p2, :cond_9

    return-void

    .line 78
    :cond_9
    iget-boolean p3, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->isPad:Z

    const-string/jumbo v0, "查看"

    const v1, 0x7f0a0128

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_ad

    .line 79
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/CmNewWorkHorLayout;

    .line 80
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->hasInit()Z

    move-result v1

    if-nez v1, :cond_81

    const/16 v1, 0x10

    const/16 v4, 0x14

    .line 81
    invoke-virtual {p3, v4, v1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitleMarginVer(II)V

    .line 82
    invoke-virtual {p3, v4}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitleLeftMargin(I)V

    .line 83
    invoke-virtual {p3, v2}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->showMore(Z)V

    .line 85
    new-instance v1, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iget-object v4, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->context:Landroid/content/Context;

    iget v5, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->mSpanNum:I

    invoke-direct {v1, v4, v5}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setDatas(Ljava/util/List;)V

    .line 87
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitle(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->hightLightMore()V

    .line 89
    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTvMoreText(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getDatas()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 92
    new-instance v1, Lcom/codemao/nemo/adapter/RecommendNewActiveDetailDelegate;

    invoke-direct {v1}, Lcom/codemao/nemo/adapter/RecommendNewActiveDetailDelegate;-><init>()V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 93
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v4, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$1;

    invoke-direct {v4, p0, p2}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$1;-><init>(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 108
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget v4, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->i20:I

    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 109
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    invoke-virtual {p3, v2}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setHasInit(Z)V

    goto :goto_9c

    .line 112
    :cond_81
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitle(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setDatas(Ljava/util/List;)V

    .line 115
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 117
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 120
    :cond_9c
    :goto_9c
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getLl_more()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->getDetailClickListener(Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_140

    .line 122
    :cond_ad
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/CmHorLayout;

    .line 123
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->hasInit()Z

    move-result v1

    if-nez v1, :cond_116

    const/16 v1, 0x16

    const/16 v4, 0x8

    .line 124
    invoke-virtual {p3, v1, v4}, Lcom/codemao/nemo/view/CmHorLayout;->setTitleMarginVer(II)V

    .line 125
    invoke-virtual {p3, v2}, Lcom/codemao/nemo/view/CmHorLayout;->showMore(Z)V

    .line 127
    new-instance v1, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iget-object v4, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->context:Landroid/content/Context;

    iget v5, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->mSpanNum:I

    invoke-direct {v1, v4, v5}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v1}, Lcom/codemao/nemo/view/CmHorLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 129
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/codemao/nemo/view/CmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->hightLightMore()V

    .line 131
    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setTvMoreText(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getDatas()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 134
    new-instance v1, Lcom/codemao/nemo/adapter/RecommendNewActiveDetailDelegate;

    invoke-direct {v1}, Lcom/codemao/nemo/adapter/RecommendNewActiveDetailDelegate;-><init>()V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 135
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v4, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;

    invoke-direct {v4, p0, p2}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate$2;-><init>(Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 150
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget v4, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->i26:I

    invoke-virtual {v1, v3, v3, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 151
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    invoke-virtual {p3, v2}, Lcom/codemao/nemo/view/CmHorLayout;->setHasInit(Z)V

    goto :goto_131

    .line 154
    :cond_116
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 157
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_131

    .line 159
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 162
    :cond_131
    :goto_131
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getLl_more()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->getDetailClickListener(Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_140
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01c9

    goto :goto_b

    :cond_8
    const v0, 0x7f0d01c8

    :goto_b
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)Z"
        }
    .end annotation

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p1

    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewActive:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne p1, p2, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
