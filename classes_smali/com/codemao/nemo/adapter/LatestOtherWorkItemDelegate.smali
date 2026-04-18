.class public Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;
.super Ljava/lang/Object;
.source "LatestOtherWorkItemDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/LatestWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private isLargePad:Z

.field private typeName:Ljava/lang/String;

.field private widthPercent:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3ecccccd  # 0.4f

    .line 42
    iput v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->widthPercent:F

    .line 45
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->context:Landroid/app/Activity;

    .line 46
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->isLargePad:Z

    if-eqz p1, :cond_17

    const p1, 0x3e3851ec  # 0.18f

    .line 48
    iput p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->widthPercent:F

    :cond_17
    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;)Landroid/app/Activity;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->context:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 72
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0673

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 74
    iget v2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->widthPercent:F

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v2, 0x41880000  # 17.0f

    if-nez p3, :cond_29

    .line 76
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_31

    :cond_29
    const/4 v3, 0x0

    .line 78
    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 80
    :goto_31
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_41

    .line 81
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_4a

    :cond_41
    const/high16 v2, 0x41400000  # 12.0f

    .line 83
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 85
    :goto_4a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-nez p2, :cond_56

    return-void

    .line 91
    :cond_56
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 92
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a0912

    .line 94
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getUser_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0923

    .line 95
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a08aa

    .line 96
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getLike_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a091b

    .line 97
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getView_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a08f9

    .line 98
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getPublished_at()J

    move-result-wide v1

    sget v3, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime3(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$1;-><init>(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;ILcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0663

    .line 108
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate$2;-><init>(Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getParent_id()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    const v2, 0x7f0a0406

    cmp-long v3, p2, v0

    if-lez v3, :cond_fd

    .line 116
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_106

    .line 118
    :cond_fd
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_106
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->isLargePad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01b8

    goto :goto_b

    :cond_8
    const v0, 0x7f0d01b7

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

    const/4 p1, 0x1

    return p1
.end method

.method public setTypeName(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkItemDelegate;->typeName:Ljava/lang/String;

    return-void
.end method
