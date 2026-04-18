.class public Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;
.super Ljava/lang/Object;
.source "WorkDetailBottomDelegateTa.java"

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

.field private isPad:Z

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->context:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->isPad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;)Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->context:Landroid/content/Context;

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

    .line 56
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;

    if-nez p2, :cond_9

    return-void

    .line 61
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a0447

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

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

    if-lez v4, :cond_38

    const/4 v0, 0x0

    goto :goto_3a

    :cond_38
    const/16 v0, 0x8

    :goto_3a
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

    const p3, 0x7f0a091b

    .line 68
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->getView_times()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa$1;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa$1;-><init>(Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d0206

    goto :goto_b

    :cond_8
    const v0, 0x7f0d0205

    :goto_b
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

    .line 51
    iget-boolean p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->isPad:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->typeName:Ljava/lang/String;

    const-string p2, "Ta的作品"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public setTypeName(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkDetailBottomDelegateTa;->typeName:Ljava/lang/String;

    return-void
.end method
