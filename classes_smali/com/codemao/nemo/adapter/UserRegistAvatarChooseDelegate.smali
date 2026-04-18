.class public Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;
.super Ljava/lang/Object;
.source "UserRegistAvatarChooseDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;
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
.field private chooseCallback:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;

.field private choosePositon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->chooseCallback:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;)Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->chooseCallback:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;I)V"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    const/high16 v1, 0x42080000  # 34.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 53
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$1;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0302

    .line 61
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget p2, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->choosePositon:I

    const v0, 0x7f0a0969

    const v1, 0x7f0a094c

    if-ne p3, p2, :cond_55

    .line 63
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_65

    .line 66
    :cond_55
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_65
    return-void
.end method

.method public getChoosePositon()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->choosePositon:I

    return v0
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0201

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

.method public setChoosePositon(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->choosePositon:I

    return-void
.end method
