.class public Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;
.super Ljava/lang/Object;
.source "WorkDetailBottomDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;)Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;)Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->context:Landroid/content/Context;

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
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    if-nez p2, :cond_9

    return-void

    .line 59
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a0447

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 60
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getAvatar()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a043c

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const p3, 0x7f0a0912

    .line 62
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0923

    .line 63
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0408

    .line 65
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getParent_id()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_54

    const/4 v0, 0x0

    goto :goto_56

    :cond_54
    const/16 v0, 0x8

    :goto_56
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f0a08aa

    .line 67
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getLike_times()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate$1;-><init>(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0204

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->typeName:Ljava/lang/String;

    const-string p2, "Ta的作品"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setTypeName(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegate;->typeName:Ljava/lang/String;

    return-void
.end method
