.class public Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;
.super Ljava/lang/Object;
.source "ThemeDetailBottomDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/SubjectWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private final isPad:Z

.field private mItemWidth:I

.field private themeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->context:Landroid/app/Activity;

    .line 46
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->isPad:Z

    if-eqz p1, :cond_11

    const v0, 0x3e54fdf4  # 0.208f

    goto :goto_14

    :cond_11
    const v0, 0x3eb126e9  # 0.346f

    .line 51
    :goto_14
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->mItemWidth:I

    if-eqz p1, :cond_28

    const/16 p1, 0x1a0

    .line 53
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->mItemWidth:I

    :cond_28
    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->themeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;)Landroid/app/Activity;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->context:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 76
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/SubjectWorkInfo;

    if-nez p2, :cond_9

    return-void

    .line 80
    :cond_9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->mItemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 83
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 85
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getParent_id()I

    move-result v0

    const v1, 0x7f0a0408

    if-lez v0, :cond_41

    .line 86
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4a

    .line 88
    :cond_41
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4a
    const v0, 0x7f0a08aa

    .line 91
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getN_likes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a091b

    .line 92
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getN_views()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver1w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0912

    .line 93
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0923

    .line 94
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$1;-><init>(Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;Lcom/codemao/nemo/bean/SubjectWorkInfo;ILcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0132

    .line 106
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate$2;-><init>(Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;Lcom/codemao/nemo/bean/SubjectWorkInfo;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01ef

    return v0

    :cond_8
    const v0, 0x7f0d01ee

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectWorkInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setThemeId(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ThemeDetailBottomDelegate;->themeId:Ljava/lang/String;

    return-void
.end method
