.class public Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;
.super Ljava/lang/Object;
.source "ReworkHistoryItemDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private count:I

.field private reworkCallBack:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->reworkCallBack:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;

    .line 30
    iput-object p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->context:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;)Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->reworkCallBack:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;)Landroid/app/Activity;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->context:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 50
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ReworkHistoryVO;

    .line 52
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x2

    const v7, 0x7f0a04b7

    const v8, 0x7f0a04f0

    const v9, 0x7f0a04b2

    const v10, 0x7f0a04cb

    const v11, 0x7f0a04c9

    const/4 v12, 0x0

    if-ne v2, v4, :cond_39

    .line 53
    invoke-virtual {v1, v11, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 54
    invoke-virtual {v4, v10, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 55
    invoke-virtual {v4, v9, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 56
    invoke-virtual {v4, v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 57
    invoke-virtual {v4, v7, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_7c

    :cond_39
    if-nez v2, :cond_4f

    .line 59
    invoke-virtual {v1, v11, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v10, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v9, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v7, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_7c

    :cond_4f
    if-ne v2, v6, :cond_69

    .line 64
    iget v4, v0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->count:I

    if-lez v4, :cond_69

    .line 65
    invoke-virtual {v1, v11, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 66
    invoke-virtual {v4, v10, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v9, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v7, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_7c

    .line 71
    :cond_69
    invoke-virtual {v1, v11, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v10, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 73
    invoke-virtual {v4, v9, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 74
    invoke-virtual {v4, v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v7, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 78
    :goto_7c
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getPublish_time()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v4, v13, v15

    if-nez v4, :cond_9f

    if-ne v2, v6, :cond_8c

    iget v4, v0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->count:I

    if-nez v4, :cond_9f

    .line 79
    :cond_8c
    invoke-virtual {v1, v11, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v10, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v9, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v8, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 83
    invoke-virtual {v4, v7, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 85
    :cond_9f
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->isIs_deleted()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 86
    invoke-virtual {v1, v11, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 87
    invoke-virtual {v4, v10, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 88
    invoke-virtual {v4, v9, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    .line 90
    invoke-virtual {v4, v7, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 94
    :cond_b8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    const-wide/16 v5, 0x3e8

    if-ne v2, v4, :cond_cc

    .line 95
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getCreated_time()J

    move-result-wide v7

    mul-long v7, v7, v5

    invoke-static {v7, v8}, Lcom/giu/xzz/utils/DateFormats;->formatYmdChina(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_d6

    .line 97
    :cond_cc
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getCreated_time()J

    move-result-wide v7

    mul-long v7, v7, v5

    invoke-static {v7, v8}, Lcom/giu/xzz/utils/DateFormats;->formatYmd(J)Ljava/lang/String;

    move-result-object v2

    :goto_d6
    const v4, 0x7f0a0892

    .line 99
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getWork_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    const v5, 0x7f0a0893

    .line 100
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getWork_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    const v5, 0x7f0a090a

    .line 101
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getWork_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    const v5, 0x7f0a090b

    .line 102
    invoke-virtual {v4, v5, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    const v5, 0x7f0a08b4

    .line 103
    invoke-virtual {v4, v5, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    const v5, 0x7f0a0890

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {v4, v5, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v4

    const v5, 0x7f0a08b3

    .line 105
    invoke-virtual {v4, v5, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v5, 0x7f0e005c

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    const v4, 0x7f0a019d

    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    const v4, 0x7f0a019e

    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    const v4, 0x7f0a01cb

    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    const v4, 0x7f0a092d

    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 112
    new-instance v2, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;

    invoke-direct {v2, v0, v1, v3}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$1;-><init>(Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/ReworkHistoryVO;)V

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_204

    invoke-virtual {v1, v2, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-void

    :array_204
    .array-data 4
        0x7f0a04cb
        0x7f0a019d
        0x7f0a019e
        0x7f0a04ae
        0x7f0a04af
        0x7f0a0394
        0x7f0a0393
        0x7f0a01cb
        0x7f0a092d
    .end array-data
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01ea

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setMoreCount(I)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->count:I

    return-void
.end method
