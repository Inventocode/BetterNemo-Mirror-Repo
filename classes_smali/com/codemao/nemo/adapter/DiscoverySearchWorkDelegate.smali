.class public Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;
.super Ljava/lang/Object;
.source "DiscoverySearchWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private key:Ljava/lang/String;

.field private nameWitdh:I

.field private workCallBack:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->nameWitdh:I

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->nameWitdh:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->nameWitdh:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;Landroid/text/SpannableString;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->addEndDrawable(Landroid/text/SpannableString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;

    return-object p0
.end method

.method private addEndDrawable(Landroid/text/SpannableString;)V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->context:Landroid/content/Context;

    const v1, 0x7f0804b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x41e00000  # 28.0f

    .line 113
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41600000  # 14.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    new-instance v1, Lcom/codemao/nemo/view/CustomImageSpan;

    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-direct {v1, v0, v2, v3}, Lcom/codemao/nemo/view/CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 115
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

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
            "Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 59
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    if-nez p2, :cond_9

    return-void

    .line 64
    :cond_9
    iget v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->nameWitdh:I

    if-gtz v0, :cond_18

    .line 65
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6a

    .line 82
    :cond_18
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->isCourseInfo()Z

    move-result v0

    const v1, 0x7f0a0923

    if-eqz v0, :cond_44

    .line 83
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->key:Ljava/lang/String;

    iget v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->nameWitdh:I

    mul-int/lit8 v0, v0, 0x2

    const/high16 v5, 0x41f00000  # 30.0f

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    sub-int v6, v0, v5

    const/4 v7, 0x2

    const-string v5, "#6F60DD"

    const-string v8, "m"

    invoke-static/range {v2 .. v8}, Lcom/codemao/nemo/util/StringUtil;->getHiglightString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->addEndDrawable(Landroid/text/SpannableString;)V

    goto :goto_63

    .line 86
    :cond_44
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->key:Ljava/lang/String;

    iget v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->nameWitdh:I

    mul-int/lit8 v0, v0, 0x2

    const/high16 v5, 0x41e00000  # 28.0f

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    sub-int v6, v0, v5

    const/4 v7, 0x2

    const-string v5, "#6F60DD"

    const-string v8, ""

    invoke-static/range {v2 .. v8}, Lcom/codemao/nemo/util/StringUtil;->getHiglightString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 88
    :goto_63
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_6a
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 93
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a0912

    .line 94
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a091b

    .line 96
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getView_times()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a08aa

    .line 97
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getPraise_times()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a081c

    .line 98
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getComment_times()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$2;-><init>(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 49
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d01a5

    goto :goto_d

    :cond_a
    const v0, 0x7f0d01a4

    :goto_d
    return v0
.end method

.method public getNameWitdh()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->nameWitdh:I

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->key:Ljava/lang/String;

    return-void
.end method
