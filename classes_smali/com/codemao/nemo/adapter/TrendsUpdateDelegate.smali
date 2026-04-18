.class public Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;
.super Ljava/lang/Object;
.source "TrendsUpdateDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/TrendsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsInfo;",
            ">;I)V"
        }
    .end annotation

    .line 47
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/TrendsInfo;

    const v0, 0x7f0a0923

    .line 48
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0912

    .line 49
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0447

    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 51
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;

    invoke-direct {v3, p0, p2}, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$1;-><init>(Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;Lcom/codemao/nemo/bean/TrendsInfo;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a08f9

    .line 58
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getCreated_at()J

    move-result-wide v4

    sget v6, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v4, v5, v6}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime3(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a091b

    .line 59
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getView_times()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a08aa

    .line 60
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getLike_times()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getParent_id()J

    move-result-wide v3

    const v5, 0x7f0a0408

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_bf

    .line 62
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x40400000  # 3.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_db

    .line 65
    :cond_bf
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41000000  # 8.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 69
    :goto_db
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 70
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 71
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/high16 v4, 0x40800000  # 4.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v6, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v1, 0x7f0a08a4

    .line 74
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 75
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 76
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 77
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v0, 0x7f0a0921

    .line 78
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/ExpandTextView;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object p2

    invoke-virtual {v1, p2, p3}, Lcom/codemao/nemo/view/ExpandTextView;->bindData(Lcom/codemao/nemo/view/ExpandContentItem;I)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/ExpandTextView;

    new-instance p2, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate$2;-><init>(Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;)V

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ExpandTextView;->setOnExpandOrShrinkListener(Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01f4

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_status()I

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "COLLECTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method
