.class public final Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;
.super Ljava/lang/Object;
.source "UserAvatarInfoDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final isPad:Z

.field private final mListener:Lcom/codemao/nemo/setting/listener/AvatarFrameChoseListener;


# direct methods
.method public static synthetic $r8$lambda$eauJXLBsNEbsjq-UPSlbKTrbalg(Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;->convert$lambda$0(Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/setting/listener/AvatarFrameChoseListener;)V
    .registers 3

    const-string v0, "mListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;->mListener:Lcom/codemao/nemo/setting/listener/AvatarFrameChoseListener;

    .line 21
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;->isPad:Z

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;->mListener:Lcom/codemao/nemo/setting/listener/AvatarFrameChoseListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/codemao/nemo/setting/listener/AvatarFrameChoseListener;->onChose(I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_64

    .line 36
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    if-nez p2, :cond_b

    goto :goto_64

    :cond_b
    if-nez p1, :cond_e

    return-void

    .line 40
    :cond_e
    instance-of p3, p2, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    if-eqz p3, :cond_64

    const p3, 0x7f0a0982

    .line 41
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    .line 42
    check-cast p2, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-virtual {p2}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 44
    new-instance v0, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0428

    .line 48
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    .line 49
    invoke-virtual {p2}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHasOwned()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v0, 0x8

    .line 50
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4c

    :cond_3d
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    invoke-virtual {p2}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_49

    const/4 v0, 0x1

    :cond_49
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 57
    :goto_4c
    invoke-virtual {p2}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHeadFrameUrl()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    const p3, 0x7f0a0892

    .line 59
    invoke-virtual {p2}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getHeadFrameName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_64
    :goto_64
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarInfoDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01fa

    goto :goto_b

    :cond_8
    const v0, 0x7f0d01f9

    :goto_b
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 28
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 29
    :goto_a
    instance-of p2, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    const/4 v0, 0x0

    if-eqz p2, :cond_18

    .line 30
    check-cast p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->getItemType()I

    move-result p1

    if-nez p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method
