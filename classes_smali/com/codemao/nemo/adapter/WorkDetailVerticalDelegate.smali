.class public Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;
.super Ljava/lang/Object;
.source "WorkDetailVerticalDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/HorCommonInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isPad:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->context:Landroid/content/Context;

    .line 36
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->isPad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->isPad:Z

    return p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/HorCommonInfo;",
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/HorCommonInfo;

    if-nez p2, :cond_9

    return-void

    :cond_9
    const p3, 0x7f0a0128

    .line 56
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/CmHorLayout;

    .line 57
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->hasInit()Z

    move-result v0

    const v1, 0x7f0a06da

    const v2, 0x7f0a026b

    if-nez v0, :cond_b8

    .line 58
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->isPad:Z

    if-eqz v0, :cond_25

    const/16 v3, 0x19

    goto :goto_27

    :cond_25
    const/16 v3, 0x1e

    :goto_27
    if-eqz v0, :cond_2b

    const/4 v0, 0x6

    goto :goto_2d

    :cond_2b
    const/16 v0, 0x8

    :goto_2d
    invoke-virtual {p3, v3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setTitleMarginVer(II)V

    .line 59
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->isPad:Z

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/codemao/nemo/util/text/NemoTextUtils;->INSTANCE:Lcom/codemao/nemo/util/text/NemoTextUtils;

    const v3, 0x7f070250

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/util/text/NemoTextUtils;->fetchDimenTxtSize(I)I

    move-result v0

    goto :goto_40

    :cond_3e
    const/16 v0, 0x14

    :goto_40
    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setTitleSize(I)V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->showMore(Z)V

    .line 61
    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setIsTitleBold(Z)V

    .line 62
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iget-object v3, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->isPad:Z

    if-eqz v4, :cond_54

    const/4 v4, 0x4

    goto :goto_55

    :cond_54
    const/4 v4, 0x2

    :goto_55
    invoke-direct {v0, v3, v4}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 64
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/HorCommonInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/CmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v3, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getDatas()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 66
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    new-instance p1, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;

    iget-object v3, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->context:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    new-instance v3, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;

    iget-object v4, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p3, v2, p1}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 73
    invoke-virtual {p3, v1, v3}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 74
    iget-boolean v4, p0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;->isPad:Z

    if-eqz v4, :cond_9a

    .line 75
    invoke-virtual {v0, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    goto :goto_a0

    .line 77
    :cond_9a
    invoke-virtual {v0, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 78
    invoke-virtual {v0, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 81
    :goto_a0
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate$1;-><init>(Lcom/codemao/nemo/adapter/WorkDetailVerticalDelegate;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p3, p1}, Lcom/codemao/nemo/view/CmHorLayout;->setHasInit(Z)V

    goto :goto_d3

    .line 129
    :cond_b8
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/HorCommonInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/codemao/nemo/view/CmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p3, p1}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 131
    invoke-virtual {p3}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 133
    :goto_d3
    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/HorCommonInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->setTypeName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/HorCommonInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->setTypeName(Ljava/lang/String;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01c1

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/HorCommonInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
