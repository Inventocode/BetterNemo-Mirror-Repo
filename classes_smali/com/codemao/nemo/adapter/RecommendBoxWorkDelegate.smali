.class public Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;
.super Ljava/lang/Object;
.source "RecommendBoxWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;,
        Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private isPad:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;->isPad:Z

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;)Landroid/content/Context;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)V"
        }
    .end annotation

    .line 49
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;->isPad:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x4

    goto :goto_f

    :cond_e
    const/4 v2, 0x2

    :goto_f
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    new-instance v0, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->getBoxWorks()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate$GridAdapter;-><init>(Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01bc

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

    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p1

    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BOX:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne p1, p2, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
