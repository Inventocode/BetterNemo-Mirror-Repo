.class public Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;
.super Ljava/lang/Object;
.source "RecommendNewWorkDelegate.java"

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

.field private i10:I

.field private i20:I

.field private i28:I

.field private i30:I

.field private isPad:Z

.field private mSpanNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000  # 10.0f

    .line 38
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i10:I

    const/high16 v0, 0x41a00000  # 20.0f

    .line 39
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i20:I

    const/high16 v0, 0x41e00000  # 28.0f

    .line 40
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i28:I

    const/high16 v0, 0x41f00000  # 30.0f

    .line 41
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i30:I

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->mSpanNum:I

    .line 56
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    .line 57
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->isPad:Z

    if-eqz p1, :cond_33

    const/4 p1, 0x3

    .line 59
    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->mSpanNum:I

    :cond_33
    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i20:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;)Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getViewOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 152
    new-instance v0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$2;-><init>(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;)V

    return-object v0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)V"
        }
    .end annotation

    .line 75
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    if-nez p2, :cond_9

    return-void

    .line 80
    :cond_9
    iget-boolean p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->isPad:Z

    const v0, 0x7f0a0128

    const/4 v1, 0x1

    if-eqz p3, :cond_a9

    .line 81
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/CmNewWorkHorLayout;

    .line 82
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->hasInit()Z

    move-result p3

    if-nez p3, :cond_81

    const/16 p3, 0x1c

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, v0}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitleMarginVer(II)V

    const/16 p3, 0x1e

    .line 84
    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitleLeftMargin(I)V

    .line 85
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->showMore(Z)V

    .line 87
    new-instance p3, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    iget v3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->mSpanNum:I

    invoke-direct {p3, v2, v3}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 88
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setDatas(Ljava/util/List;)V

    .line 89
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitle(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->hightLightMore()V

    .line 92
    new-instance p3, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getDatas()Ljava/util/List;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 93
    new-instance v2, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;

    iget-object v3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 94
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;

    invoke-direct {v3, p0, p2}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 109
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iget v2, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i10:I

    iget v3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i30:I

    iget v4, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->i28:I

    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 110
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setHasInit(Z)V

    goto :goto_9c

    .line 113
    :cond_81
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setTitle(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->setDatas(Ljava/util/List;)V

    .line 116
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_9c

    .line 118
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 121
    :cond_9c
    :goto_9c
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmNewWorkHorLayout;->getLl_more()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->getViewOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_122

    .line 123
    :cond_a9
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/CmHorLayout;

    .line 124
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmHorLayout;->hasInit()Z

    move-result p3

    if-nez p3, :cond_fc

    const/16 p3, 0x16

    const/16 v0, 0x14

    .line 125
    invoke-virtual {p1, p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setTitleMarginVer(II)V

    .line 126
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/CmHorLayout;->showMore(Z)V

    .line 128
    new-instance p3, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    iget v2, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->mSpanNum:I

    invoke-direct {p3, v0, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmHorLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 130
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmHorLayout;->hightLightMore()V

    .line 133
    new-instance p2, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmHorLayout;->getDatas()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 134
    new-instance p3, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;

    iget-object v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 135
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 136
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/CmHorLayout;->setHasInit(Z)V

    goto :goto_117

    .line 138
    :cond_fc
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/CmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 141
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_117

    .line 143
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 146
    :cond_117
    :goto_117
    invoke-virtual {p1}, Lcom/codemao/nemo/view/CmHorLayout;->getLl_more()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->getViewOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_122
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;->isPad:Z

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

    .line 70
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p1

    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewWork:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne p1, p2, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
