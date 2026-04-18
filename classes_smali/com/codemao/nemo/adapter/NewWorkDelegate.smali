.class public Lcom/codemao/nemo/adapter/NewWorkDelegate;
.super Ljava/lang/Object;
.source "NewWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/NewWorkDelegate$RecommendWorkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/NewWorkDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isPad:Z

.field private workCallBack:Lcom/codemao/nemo/adapter/NewWorkDelegate$RecommendWorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/NewWorkDelegate$RecommendWorkCallBack;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/NewWorkDelegate$RecommendWorkCallBack;

    .line 37
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate;->isPad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/NewWorkDelegate;)Lcom/codemao/nemo/adapter/NewWorkDelegate$RecommendWorkCallBack;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/NewWorkDelegate$RecommendWorkCallBack;

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
            "Lcom/codemao/nemo/bean/NewWorkDetailInfo;",
            ">;I)V"
        }
    .end annotation

    .line 55
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    .line 56
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/NewWorkDelegate$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/NewWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/NewWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/NewWorkDetailInfo;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getWork_preview()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a0447

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    const p3, 0x7f0a0663

    .line 66
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/adapter/NewWorkDelegate$2;-><init>(Lcom/codemao/nemo/adapter/NewWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/NewWorkDetailInfo;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getParent_id()J

    move-result-wide v0

    const p3, 0x7f0a0408

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_43

    .line 75
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4c

    .line 77
    :cond_43
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4c
    const p3, 0x7f0a0816

    .line 80
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/ColorTextView;

    .line 81
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getRecommend_word()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getBackground_color()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(Ljava/lang/String;)V

    const p3, 0x7f0a091b

    .line 84
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getView_times()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a08aa

    .line 85
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getLike_times()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0923

    .line 86
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a08f9

    .line 87
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getUpdated_at()J

    move-result-wide v0

    sget v2, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime3(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0912

    .line 88
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getAvatar()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0a043c

    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/NewWorkDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01b6

    return v0

    :cond_8
    const v0, 0x7f0d01b5

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NewWorkDetailInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
