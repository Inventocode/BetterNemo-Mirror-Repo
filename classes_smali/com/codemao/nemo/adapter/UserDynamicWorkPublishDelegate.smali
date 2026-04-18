.class public Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;
.super Ljava/lang/Object;
.source "UserDynamicWorkPublishDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/UserDynamicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;

.field private isOwner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->isOwner:Z

    .line 44
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;)Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;

    return-object p0
.end method

.method private getWorkInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicWorkInfo;
    .registers 4

    .line 125
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 126
    const-class v1, Lcom/codemao/nemo/bean/DynamicWorkInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/DynamicWorkInfo;

    return-object p1
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;I)V"
        }
    .end annotation

    .line 59
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/UserDynamicInfo;

    if-nez p2, :cond_9

    return-void

    .line 63
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a0912

    .line 64
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/nemo/util/StringUtil;->getDynamicOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a08f9

    .line 65
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getUpdated_at()J

    move-result-wide v1

    sget v3, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDetails_json()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->getWorkInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicWorkInfo;

    move-result-object p2

    if-nez p2, :cond_60

    return-void

    .line 70
    :cond_60
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getParent_id()J

    move-result-wide v0

    const v2, 0x7f0a0408

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    cmp-long v7, v0, v3

    if-gtz v7, :cond_78

    .line 71
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7f

    .line 73
    :cond_78
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :goto_7f
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->isDelete()Z

    move-result v0

    const v1, 0x7f0a0834

    const v2, 0x7f0a066c

    const v7, 0x7f0a066b

    if-eqz v0, :cond_a5

    .line 76
    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1df

    .line 79
    :cond_a5
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getPublish_at()J

    move-result-wide v8

    const-string v0, ""

    cmp-long v10, v8, v3

    if-gtz v10, :cond_14b

    .line 80
    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0924

    .line 83
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const v2, 0x7f0a0448

    .line 86
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/view/RoundStrokeImageView;

    .line 87
    invoke-virtual {v3, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setColorMatix(Landroid/graphics/ColorMatrix;)V

    const v1, 0x7f0a091c

    .line 88
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getView_times()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a08ab

    .line 89
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getLike_times()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0815

    .line 90
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getCollect_times()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_1df

    .line 94
    :cond_14b
    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0447

    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v1, 0x7f0a0923

    .line 98
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a091b

    .line 99
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getView_times()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a08aa

    .line 100
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getLike_times()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0814

    .line 101
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getCollect_times()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DynamicWorkInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :goto_1df
    iget-boolean p2, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->isOwner:Z

    const v0, 0x7f0a03e2

    if-eqz p2, :cond_1fa

    .line 111
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$2;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$2;-><init>(Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_201

    .line 120
    :cond_1fa
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_201
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01a7

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 54
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUBLISH_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UPDATE_WORK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method public setOwner(Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->isOwner:Z

    return-void
.end method
