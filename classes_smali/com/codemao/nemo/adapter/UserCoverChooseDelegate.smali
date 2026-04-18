.class public Lcom/codemao/nemo/adapter/UserCoverChooseDelegate;
.super Ljava/lang/Object;
.source "UserCoverChooseDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private chooseCallback:Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserCoverChooseDelegate;->chooseCallback:Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserCoverChooseDelegate;)Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserCoverChooseDelegate;->chooseCallback:Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;I)V"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41500000  # 13.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 47
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x49

    div-int/lit16 v0, v0, 0x9c

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$1;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserCoverChooseDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f0a0359

    const/4 v3, 0x0

    const v4, 0x7f0a0302

    const/16 v5, -0x3e7

    if-ne v0, v5, :cond_51

    .line 57
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_70

    .line 60
    :cond_51
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_70
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01fe

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
