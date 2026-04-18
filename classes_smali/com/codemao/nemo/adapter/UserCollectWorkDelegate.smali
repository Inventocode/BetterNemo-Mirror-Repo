.class public Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;
.super Ljava/lang/Object;
.source "UserCollectWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/CollectWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isOwner:Z

.field private transX1:I

.field private workCallBack:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->isOwner:Z

    .line 48
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;

    const/high16 p1, 0x42680000  # 58.0f

    .line 50
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->transX1:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->removeOpenAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;)Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;

    return-object p0
.end method

.method private removeOpenAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 14

    const v0, 0x7f0a0643

    .line 148
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    iget v5, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->transX1:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "translationX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const v2, 0x7f0a0400

    .line 149
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    new-array v8, v1, [F

    aput v4, v8, v3

    iget v9, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->transX1:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v6

    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const v8, 0x7f0a04e0

    .line 150
    invoke-virtual {p1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    new-array v10, v1, [F

    iget v11, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->transX1:I

    int-to-float v11, v11

    aput v11, v10, v3

    aput v4, v10, v6

    invoke-static {v9, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 151
    invoke-virtual {p1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    new-array v9, v1, [F

    fill-array-data v9, :array_80

    const-string v10, "alpha"

    invoke-static {v5, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 152
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v10, 0x14d

    .line 153
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v0, v10, v3

    aput-object v7, v10, v6

    aput-object v4, v10, v1

    const/4 v0, 0x3

    aput-object v5, v10, v0

    .line 154
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 155
    invoke-virtual {p1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_80
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 66
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/CollectWorkInfo;

    if-nez p2, :cond_9

    return-void

    .line 70
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getPublish_time()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 71
    :goto_17
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a043c

    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v1, 0x7f0a0912

    .line 72
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0814

    const v2, 0x7f0a08aa

    const v3, 0x7f0a091b

    const v5, 0x7f0a0447

    const v6, 0x7f0a0923

    if-eqz v0, :cond_84

    .line 75
    invoke-virtual {p1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060160

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v7, 0x7f08044f

    .line 76
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/codemao/nemo/util/GlideUtils;->load(ILandroid/widget/ImageView;)V

    .line 77
    invoke-virtual {p1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "作品失效"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_fe

    .line 83
    :cond_84
    invoke-virtual {p1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06015f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 85
    invoke-virtual {p1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getViews_count()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getLikes_count()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getCollections_count()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_fe
    const v1, 0x7f0a0643

    .line 90
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    const v1, 0x7f0a0400

    .line 91
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    const v3, 0x7f0a04e0

    .line 92
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->transX1:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 94
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 95
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-boolean v2, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->isOwner:Z

    if-eqz v2, :cond_14c

    .line 98
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_153

    .line 100
    :cond_14c
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :goto_153
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05f7

    .line 110
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$2;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05f9

    .line 118
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$3;

    invoke-direct {v2, p0, p3}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$3;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$4;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;ZLcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CollectWorkInfo;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01fd

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 11

    const v0, 0x7f0a0643

    .line 161
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->transX1:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    const-string v6, "translationX"

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const v2, 0x7f0a0400

    .line 162
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    new-array v7, v1, [F

    iget v8, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->transX1:I

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v5, v7, v3

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v5, 0x7f0a04e0

    .line 164
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    new-array v6, v1, [F

    fill-array-data v6, :array_6e

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 166
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0x14d

    .line 167
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object v2, v7, v3

    aput-object v5, v7, v1

    .line 168
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 169
    new-instance v0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$5;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_6e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public setOwner(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->isOwner:Z

    return-void
.end method
