.class public Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;
.super Ljava/lang/Object;
.source "MyPublishWorkDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/UserPublishedWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private workCallBack:Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;)Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;->workCallBack:Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;

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
            "Lcom/codemao/nemo/bean/UserPublishedWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 48
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

    if-nez p2, :cond_9

    return-void

    .line 52
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0a0447

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 53
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$1;-><init>(Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/UserPublishedWorkInfo;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0923

    .line 63
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a08aa

    .line 64
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPraise_times()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0814

    .line 65
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getCollect_times()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a091b

    .line 66
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getView_times()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a08b3

    .line 67
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "发布于 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPublish_time()J

    move-result-wide v1

    sget v3, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v1, v2, v3}, Lcom/codemao/nemo/util/TimeUtil;->getDateFormater2(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->isFork_enable()Z

    move-result p3

    const-string/jumbo v0, "次"

    const v1, 0x7f0a08a3

    const v2, 0x7f0a03eb

    if-eqz p3, :cond_e8

    .line 69
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const v2, 0x7f0e009e

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "代码开源 再创作"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getFork_times()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_112

    .line 72
    :cond_e8
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const v2, 0x7f0e009d

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "代码未开源 再创作"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getFork_times()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_112
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getParent_id()I

    move-result p3

    const v0, 0x7f0a0408

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-gtz p3, :cond_126

    .line 76
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12d

    .line 78
    :cond_126
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_12d
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getRecommend_type()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0x7f0a0428

    if-eqz p3, :cond_143

    .line 82
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1bb

    .line 84
    :cond_143
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getRecommend_type()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1bc

    :goto_159
    const/4 v2, -0x1

    goto :goto_185

    :sswitch_15b
    const-string v2, "SYSTEM_RECOMMEND"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_164

    goto :goto_159

    :cond_164
    const/4 v2, 0x3

    goto :goto_185

    :sswitch_166
    const-string v2, "SUBJECT_RECOMMEND"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16f

    goto :goto_159

    :cond_16f
    const/4 v2, 0x2

    goto :goto_185

    :sswitch_171
    const-string v2, "USER_COURSE_RECOMMEND"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17a

    goto :goto_159

    :cond_17a
    const/4 v2, 0x1

    goto :goto_185

    :sswitch_17c
    const-string v3, "NEW_RECOMMEND"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_185

    goto :goto_159

    :cond_185
    :goto_185
    packed-switch v2, :pswitch_data_1ce

    .line 99
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1bb

    .line 96
    :pswitch_190  #0x3
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080432

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1bb

    .line 93
    :pswitch_19b  #0x2
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080433

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1bb

    .line 87
    :pswitch_1a6  #0x1
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080434

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1bb

    .line 90
    :pswitch_1b1  #0x0
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080431

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1bb
    return-void

    :sswitch_data_1bc
    .sparse-switch
        -0x1f2a9763 -> :sswitch_17c
        -0x12030894 -> :sswitch_171
        0x31581d29 -> :sswitch_166
        0x4173d28c -> :sswitch_15b
    .end sparse-switch

    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_1b1  #00000000
        :pswitch_1a6  #00000001
        :pswitch_19b  #00000002
        :pswitch_190  #00000003
    .end packed-switch
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 37
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d01da

    goto :goto_d

    :cond_a
    const v0, 0x7f0d01d9

    :goto_d
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserPublishedWorkInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
