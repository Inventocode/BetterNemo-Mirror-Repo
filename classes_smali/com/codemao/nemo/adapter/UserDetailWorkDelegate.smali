.class public Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;
.super Ljava/lang/Object;
.source "UserDetailWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;",
        ">;"
    }
.end annotation


# instance fields
.field private workCallBack:Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;)Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;",
            ">;I)V"
        }
    .end annotation

    .line 68
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;

    if-nez p2, :cond_9

    return-void

    :cond_9
    const v0, 0x7f0a0923

    .line 72
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getWork_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0921

    .line 73
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getPublish_time()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const v6, 0x7f0a0353

    const v7, 0x7f0a0447

    const/4 v8, 0x0

    const v9, 0x7f0a0408

    const/16 v10, 0x8

    cmp-long v11, v2, v4

    if-ltz v11, :cond_81

    .line 75
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getParent_id()I

    move-result v2

    if-gtz v2, :cond_49

    .line 76
    invoke-virtual {p1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_50

    .line 78
    :cond_49
    invoke-virtual {p1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :goto_50
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {p1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 83
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#FF333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_cd

    .line 95
    :cond_81
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-virtual {p1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    invoke-virtual {p1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$2;-><init>(Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    const-string v0, "#FF999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    new-instance p3, Landroid/graphics/ColorMatrix;

    invoke-direct {p3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p3, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 111
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 112
    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 113
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getPreview()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_cd
    const p3, 0x7f0a08aa

    .line 115
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getLiked_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0814

    .line 116
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getCollect_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a091b

    .line 117
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getView_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a08b3

    .line 118
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getPublish_time()J

    move-result-wide p2

    sget v0, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {p2, p3, v0}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime1(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01ff

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
