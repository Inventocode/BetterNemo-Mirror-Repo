.class public Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;
.super Ljava/lang/Object;
.source "LatestOtherWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/LatestWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private isLargePad:Z

.field private scrolledIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/codemao/nemo/bean/ScrollPositionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    .line 44
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->isLargePad:Z

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->scrolledIds:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;)Ljava/util/Map;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->scrolledIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;)Landroid/app/Activity;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 63
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/LatestWorkInfo;

    .line 65
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->isLargePad:Z

    const-string/jumbo v1, "作品"

    const/16 v2, 0x14

    const/16 v3, 0x8

    const/16 v4, 0xa

    const v5, 0x7f0a0128

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_b4

    .line 66
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LatestCmHorLayout;

    .line 67
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->hasInit()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 68
    invoke-virtual {v0, v4, v3}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setTitleMarginVer(II)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setTitleMargin(I)V

    .line 70
    invoke-virtual {v0, v7}, Lcom/codemao/nemo/view/LatestCmHorLayout;->showMore(Z)V

    .line 71
    new-instance v2, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$1;

    invoke-direct {v2, p0, p3}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;I)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setOnScrollCallback(Lcom/codemao/nemo/listener/OnScrollCallback;)V

    .line 82
    new-instance p3, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    invoke-direct {p3, v2, v6, v6}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p3}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setDatas(Ljava/util/List;)V

    .line 84
    new-instance p3, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getDatas()Ljava/util/List;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 85
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    new-instance p1, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;-><init>(Landroid/app/Activity;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p3, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 89
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    invoke-virtual {v0, v7}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setHasInit(Z)V

    goto :goto_83

    .line 92
    :cond_6e
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setDatas(Ljava/util/List;)V

    .line 93
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->resetScroll()V

    .line 94
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 96
    :goto_83
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->setTypeName(Ljava/lang/String;)V

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/LatestCmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getLl_more()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$2;-><init>(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14e

    .line 109
    :cond_b4
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CmHorLayout;

    .line 110
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->hasInit()Z

    move-result v5

    if-nez v5, :cond_10a

    .line 111
    invoke-virtual {v0, v4, v3}, Lcom/codemao/nemo/view/CmHorLayout;->setTitleMarginVer(II)V

    .line 112
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/CmHorLayout;->setTitleMargin(I)V

    .line 113
    invoke-virtual {v0, v7}, Lcom/codemao/nemo/view/CmHorLayout;->showMore(Z)V

    .line 114
    new-instance v2, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;

    invoke-direct {v2, p0, p3}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;-><init>(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;I)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/CmHorLayout;->setOnScrollCallback(Lcom/codemao/nemo/listener/OnScrollCallback;)V

    .line 125
    new-instance p3, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    invoke-direct {p3, v2, v6, v6}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p3}, Lcom/codemao/nemo/view/CmHorLayout;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 126
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 127
    new-instance p3, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->getDatas()Ljava/util/List;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 128
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    new-instance p1, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->context:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;-><init>(Landroid/app/Activity;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p3, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 132
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    invoke-virtual {v0, v7}, Lcom/codemao/nemo/view/CmHorLayout;->setHasInit(Z)V

    goto :goto_11f

    .line 135
    :cond_10a
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CmHorLayout;->setDatas(Ljava/util/List;)V

    .line 136
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->resetScroll()V

    .line 137
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->getRv_content()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 139
    :goto_11f
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->setTypeName(Ljava/lang/String;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CmHorLayout;->setTitle(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->getLl_more()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$4;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$4;-><init>(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_14e
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->isLargePad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01c2

    return v0

    :cond_8
    const v0, 0x7f0d01c1

    return v0
.end method

.method public getScrolledIds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/codemao/nemo/bean/ScrollPositionInfo;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->scrolledIds:Ljava/util/Map;

    return-object v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 58
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther()Z

    move-result p1

    return p1
.end method
