.class public Lcom/codemao/nemo/adapter/TrendsPublishDelegate;
.super Ljava/lang/Object;
.source "TrendsPublishDelegate.java"

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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setWorkName(ZLandroid/widget/TextView;Ljava/lang/String;)V
    .registers 7

    .line 123
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_26

    .line 126
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 v2, 0x41a00000  # 20.0f

    .line 127
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    const/high16 p1, 0x3f800000  # 1.0f

    add-float/2addr v2, p1

    float-to-int p1, v2

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p1, :cond_26

    .line 130
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 133
    :cond_26
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsInfo;",
            ">;I)V"
        }
    .end annotation

    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/TrendsInfo;

    .line 66
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getParent_id()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-lez v6, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const v1, 0x7f0a0923

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v1, v6}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate;->setWorkName(ZLandroid/widget/TextView;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a0912

    .line 68
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f0a0447

    invoke-virtual {p1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v1, 0x7f0a0406

    .line 70
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getParent_id()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-lez v8, :cond_76

    const/4 v3, 0x0

    goto :goto_78

    :cond_76
    const/16 v3, 0x8

    :goto_78
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$1;

    invoke-direct {v3, p0, p2}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$1;-><init>(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;Lcom/codemao/nemo/bean/TrendsInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0665

    .line 78
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;

    invoke-direct {v3, p0, p2}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$2;-><init>(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;Lcom/codemao/nemo/bean/TrendsInfo;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a08f9

    .line 85
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getCreated_at()J

    move-result-wide v3

    sget v6, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v3, v4, v6}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime3(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a091b

    .line 86
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getView_times()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a08aa

    .line 87
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getLike_times()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0363

    .line 88
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/AvatarFrameImagView;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/view/AvatarFrameImagView;->setUserLevel(Ljava/lang/String;)V

    const v1, 0x7f0a0441

    .line 89
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/view/UserSignImagView;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getAuthor_level()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/codemao/nemo/view/UserSignImagView;->setUserLevel(IZ)V

    .line 91
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getAuthor_level()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_11a

    const/high16 v2, 0x42f80000  # 124.0f

    .line 92
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    goto :goto_120

    :cond_11a
    const/high16 v2, 0x42900000  # 72.0f

    .line 94
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    .line 96
    :goto_120
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a04d0

    .line 97
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const v0, 0x7f0a0921

    .line 99
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/ExpandTextView;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/codemao/nemo/view/ExpandTextView;->bindData(Lcom/codemao/nemo/view/ExpandContentItem;I)V

    .line 100
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/ExpandTextView;

    new-instance v0, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$3;-><init>(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;)V

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/ExpandTextView;->setOnExpandOrShrinkListener(Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;)V

    .line 112
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$4;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate$4;-><init>(Lcom/codemao/nemo/adapter/TrendsPublishDelegate;Lcom/codemao/nemo/bean/TrendsInfo;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01f0

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

    .line 60
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

    const-string p2, "PUBLISH"

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
