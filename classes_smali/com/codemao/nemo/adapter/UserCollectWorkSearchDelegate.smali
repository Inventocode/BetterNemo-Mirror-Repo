.class public Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;
.super Ljava/lang/Object;
.source "UserCollectWorkSearchDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;
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

.field private key:Ljava/lang/String;

.field private nameWitdh:I

.field private transX1:I

.field private workCallBack:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->nameWitdh:I

    .line 49
    iput-boolean v0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->isOwner:Z

    .line 60
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->workCallBack:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;

    const/high16 p1, 0x42680000  # 58.0f

    .line 62
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->transX1:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->nameWitdh:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;I)I
    .registers 2

    .line 31
    iput p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->nameWitdh:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;)Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->removeOpenAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;)Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->workCallBack:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;

    return-object p0
.end method

.method private removeOpenAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 14

    const v0, 0x7f0a0643

    .line 180
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    iget v5, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->transX1:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "translationX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const v2, 0x7f0a0400

    .line 181
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    new-array v8, v1, [F

    aput v4, v8, v3

    iget v9, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->transX1:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v6

    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const v8, 0x7f0a04e0

    .line 182
    invoke-virtual {p1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    new-array v10, v1, [F

    iget v11, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->transX1:I

    int-to-float v11, v11

    aput v11, v10, v3

    aput v4, v10, v6

    invoke-static {v9, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 183
    invoke-virtual {p1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    new-array v9, v1, [F

    fill-array-data v9, :array_80

    const-string v10, "alpha"

    invoke-static {v5, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 184
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v10, 0x14d

    .line 185
    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v0, v10, v3

    aput-object v7, v10, v6

    aput-object v4, v10, v1

    const/4 v0, 0x3

    aput-object v5, v10, v0

    .line 186
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 187
    invoke-virtual {p1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
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
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v3, p1

    .line 78
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/codemao/nemo/bean/CollectWorkInfo;

    if-nez v4, :cond_e

    return-void

    .line 82
    :cond_e
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getPublish_time()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    cmp-long v5, v0, v7

    if-gtz v5, :cond_1c

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    .line 83
    :goto_1d
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {v3, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a0912

    .line 84
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0814

    const v1, 0x7f0a08aa

    const v7, 0x7f0a091b

    const v8, 0x7f0a0447

    const v9, 0x7f0a0923

    if-eqz v5, :cond_8b

    .line 86
    invoke-virtual {v3, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060160

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const v10, 0x7f08044f

    .line 87
    invoke-virtual {v3, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/codemao/nemo/util/GlideUtils;->load(ILandroid/widget/ImageView;)V

    .line 88
    invoke-virtual {v3, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, "作品失效"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v3, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v3, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12f

    .line 93
    :cond_8b
    invoke-virtual {v3, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06015f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 95
    iget-object v8, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->key:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_be

    .line 96
    invoke-virtual {v3, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_df

    .line 99
    :cond_be
    iget v8, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->nameWitdh:I

    if-gtz v8, :cond_cd

    .line 100
    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v9, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$1;

    invoke-direct {v9, v6, v3, v4}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CollectWorkInfo;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_df

    .line 108
    :cond_cd
    invoke-virtual {v3, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->key:Ljava/lang/String;

    const/4 v14, 0x2

    iget v15, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->nameWitdh:I

    const-string v13, "#6F60DD"

    invoke-static/range {v10 .. v15}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 111
    :goto_df
    invoke-virtual {v3, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getViews_count()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v3, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getLikes_count()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getCollections_count()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12f
    const v0, 0x7f0a0643

    .line 117
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const v0, 0x7f0a0400

    .line 118
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    const v7, 0x7f0a04e0

    .line 119
    invoke-virtual {v3, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    iget v9, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->transX1:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 120
    invoke-virtual {v3, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    .line 121
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 122
    invoke-virtual {v3, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-boolean v1, v6, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->isOwner:Z

    if-eqz v1, :cond_17d

    .line 127
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_184

    .line 129
    :cond_17d
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_184
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$2;

    invoke-direct {v1, v6, v3}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$2;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05f7

    .line 140
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$3;

    invoke-direct {v1, v6, v3}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$3;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05f9

    .line 150
    invoke-virtual {v3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$4;

    move/from16 v7, p3

    invoke-direct {v1, v6, v7}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$4;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v9, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v5

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$5;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;ZLcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CollectWorkInfo;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01fd

    return v0
.end method

.method public getNameWitdh()I
    .registers 2

    .line 227
    iget v0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->nameWitdh:I

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

    .line 193
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->transX1:I

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

    .line 194
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    new-array v7, v1, [F

    iget v8, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->transX1:I

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v5, v7, v3

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v5, 0x7f0a04e0

    .line 196
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    new-array v6, v1, [F

    fill-array-data v6, :array_6e

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 198
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0x14d

    .line 199
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object v2, v7, v3

    aput-object v5, v7, v1

    .line 200
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 201
    new-instance v0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$6;-><init>(Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_6e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->key:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->isOwner:Z

    return-void
.end method
