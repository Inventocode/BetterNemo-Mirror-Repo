.class public Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;
.super Ljava/lang/Object;
.source "UserAvatarChooseDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;
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
.field private chooseCallback:Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;->chooseCallback:Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;)Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;->chooseCallback:Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;I)V"
        }
    .end annotation

    .line 49
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    .line 58
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, -0x3e7

    if-ne p3, v1, :cond_1b

    const/4 p3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p3, 0x0

    :goto_1c
    const v1, 0x7f0a0302

    .line 60
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    .line 61
    iget-boolean v2, p2, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    if-eqz v2, :cond_33

    if-nez p3, :cond_33

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    const v2, 0x7f0a012f

    .line 62
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p2, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    if-eqz v3, :cond_52

    if-nez p3, :cond_52

    .line 63
    iget-object v3, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    .line 62
    :goto_53
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    const v3, 0x7f0a0359

    if-eqz p3, :cond_68

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_79

    .line 68
    :cond_68
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_79
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 34
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d01f7

    goto :goto_d

    :cond_a
    const v0, 0x7f0d01f6

    :goto_d
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
