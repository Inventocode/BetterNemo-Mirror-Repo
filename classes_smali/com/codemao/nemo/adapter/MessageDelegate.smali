.class public Lcom/codemao/nemo/adapter/MessageDelegate;
.super Ljava/lang/Object;
.source "MessageDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/MessageVO;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private workCallBack:Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->workCallBack:Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/MessageDelegate;)Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->workCallBack:Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;

    return-object p0
.end method

.method private setWorkDetail(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V
    .registers 10

    .line 139
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->isIs_delete()Z

    move-result v0

    const v1, 0x7f0a03be

    const v2, 0x7f0a08c2

    if-nez v0, :cond_3d

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPublish_at()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1f

    goto :goto_3d

    .line 143
    :cond_1f
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06015d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_59

    .line 140
    :cond_3d
    :goto_3d
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060160

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    :goto_59
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a067d

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 148
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setWorkDetailReply1(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V
    .registers 10

    .line 152
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->isIs_delete()Z

    move-result v0

    const v1, 0x7f0a03bf

    const v2, 0x7f0a08c3

    if-nez v0, :cond_3d

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPublish_at()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1f

    goto :goto_3d

    .line 156
    :cond_1f
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06015d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_59

    .line 153
    :cond_3d
    :goto_3d
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060160

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    :goto_59
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a067e

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 161
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setWorkDetailReply2(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V
    .registers 12

    .line 165
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->isIs_delete()Z

    move-result v0

    const v1, 0x7f06015d

    const v2, 0x7f060160

    const v3, 0x7f0a03c0

    const v4, 0x7f0a08c4

    if-nez v0, :cond_40

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPublish_at()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_25

    goto :goto_40

    .line 169
    :cond_25
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_59

    .line 166
    :cond_40
    :goto_40
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    :goto_59
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getWork_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0a067f

    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 174
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->isBe_comment_delete_status()Z

    move-result v0

    const v3, 0x7f0a0926

    if-eqz v0, :cond_a3

    .line 175
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    const-string/jumbo v0, "内容已被删除"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c3

    .line 178
    :cond_a3
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getBe_commented_content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/adapter/MessageDelegate;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_c3
    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MessageVO;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 46
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/MessageVO;

    if-nez v2, :cond_d

    return-void

    :cond_d
    const v3, 0x7f0a0888

    .line 51
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0a0886

    .line 52
    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v6, 0x7f0a081d

    .line 53
    invoke-virtual {v1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x7f0a06b9

    .line 54
    invoke-virtual {v1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0a06ba

    .line 55
    invoke-virtual {v1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0a06bb

    .line 56
    invoke-virtual {v1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0a0912

    .line 58
    invoke-virtual {v1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getNickname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getAvatar_url()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0a043c

    invoke-virtual {v1, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v10, 0x7f0a08f9

    .line 60
    invoke-virtual {v1, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getUpdated_at()J

    move-result-wide v12

    sget v14, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v12, v13, v14}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime(JI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v10

    const/16 v12, 0x12d

    const/16 v13, 0x66

    const/16 v14, 0x65

    const/4 v15, 0x0

    if-eq v10, v14, :cond_126

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v10

    if-eq v10, v13, :cond_126

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v10

    if-ne v10, v12, :cond_a7

    goto/16 :goto_126

    .line 75
    :cond_a7
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v10

    const/16 v12, 0xca

    const/16 v13, 0xc9

    if-eq v10, v13, :cond_bd

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v10

    if-ne v10, v12, :cond_b8

    goto :goto_bd

    .line 94
    :cond_b8
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    goto/16 :goto_169

    .line 76
    :cond_bd
    :goto_bd
    invoke-virtual {v1, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getComment_content()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v4

    if-ne v4, v13, :cond_f2

    .line 82
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "评论了你的作品"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_102

    .line 83
    :cond_f2
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v4

    if-ne v4, v12, :cond_102

    .line 84
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "回复了你"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_102
    :goto_102
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->getBe_commented_id()J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v6, v3, v12

    if-eqz v6, :cond_11b

    .line 88
    invoke-virtual {v1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate;->setWorkDetailReply2(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    goto :goto_169

    .line 91
    :cond_11b
    invoke-virtual {v1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate;->setWorkDetailReply1(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    goto :goto_169

    .line 63
    :cond_126
    :goto_126
    invoke-virtual {v1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v4

    if-ne v4, v14, :cond_145

    .line 66
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "点赞了你的作品"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_166

    .line 67
    :cond_145
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v4

    if-ne v4, v13, :cond_156

    .line 68
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "收藏了你的作品"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_166

    .line 69
    :cond_156
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/MessageVO;->getMessage_type()I

    move-result v4

    if-ne v4, v12, :cond_166

    .line 70
    invoke-virtual {v1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    const-string/jumbo v4, "再创作了你的作品"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_166
    :goto_166
    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate;->setWorkDetail(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    .line 98
    :goto_169
    invoke-virtual {v1, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/MessageDelegate$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate$1;-><init>(Lcom/codemao/nemo/adapter/MessageDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/MessageDelegate$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate$2;-><init>(Lcom/codemao/nemo/adapter/MessageDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/MessageDelegate$3;

    invoke-direct {v4, v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate$3;-><init>(Lcom/codemao/nemo/adapter/MessageDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v1, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/MessageDelegate$4;

    invoke-direct {v4, v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate$4;-><init>(Lcom/codemao/nemo/adapter/MessageDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/MessageDelegate$5;

    invoke-direct {v4, v0, v1, v2}, Lcom/codemao/nemo/adapter/MessageDelegate$5;-><init>(Lcom/codemao/nemo/adapter/MessageDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/MessageVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01d7

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/MessageVO;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
