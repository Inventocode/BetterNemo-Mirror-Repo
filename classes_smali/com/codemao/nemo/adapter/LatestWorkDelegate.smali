.class public Lcom/codemao/nemo/adapter/LatestWorkDelegate;
.super Ljava/lang/Object;
.source "LatestWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/LatestWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isPad:Z

.field private workCallBack:Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;

    .line 34
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->isPad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/LatestWorkDelegate;)Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 49
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/LatestWorkInfo;

    .line 50
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/LatestWorkDelegate$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/LatestWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/LatestWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/LatestWorkInfo;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 60
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/LatestWorkDelegate$2;-><init>(Lcom/codemao/nemo/adapter/LatestWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/LatestWorkInfo;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0663

    .line 69
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;-><init>(Lcom/codemao/nemo/adapter/LatestWorkDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getParent_id()J

    move-result-wide v0

    const p3, 0x7f0a0408

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4d

    .line 80
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_56

    .line 82
    :cond_4d
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_56
    const p3, 0x7f0a091b

    .line 84
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    .line 85
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getView_count()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a08aa

    .line 87
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    .line 88
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getLike_count()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0923

    .line 90
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    .line 91
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a08f9

    .line 93
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    .line 94
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getPublished_at()J

    move-result-wide v0

    sget v2, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime3(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0912

    .line 96
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    .line 97
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getUser_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a043c

    .line 99
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getAvatar()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01ba

    goto :goto_b

    :cond_8
    const v0, 0x7f0d01b9

    :goto_b
    return v0
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

    .line 44
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
