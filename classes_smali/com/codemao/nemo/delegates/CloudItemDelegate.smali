.class public Lcom/codemao/nemo/delegates/CloudItemDelegate;
.super Ljava/lang/Object;
.source "CloudItemDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/CloudData;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private context:Landroid/content/Context;

.field private downloadAnim:Landroid/animation/ObjectAnimator;

.field private keyword:Ljava/lang/String;

.field private mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

.field private nameWitdh:I

.field private transX1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/giu/xzz/adapter/rv/RVBaseAdapter;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->nameWitdh:I

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 67
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p2

    const-class v0, Lcom/codemao/nemo/retrofit/api/CloudService;

    invoke-virtual {p2, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/retrofit/api/CloudService;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

    const/high16 p2, 0x42680000  # 58.0f

    .line 68
    invoke-static {p1, p2}, Lcom/giu/xzz/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/delegates/CloudItemDelegate;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->nameWitdh:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/delegates/CloudItemDelegate;I)I
    .registers 2

    .line 54
    iput p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->nameWitdh:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Lcom/codemao/nemo/retrofit/api/CloudService;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 84
    :try_start_4
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/codemao/nemo/bean/CloudData;

    .line 85
    iget-object v1, v3, Lcom/codemao/nemo/bean/CloudData;->preview:Ljava/lang/String;

    const v2, 0x7f0a019d

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 86
    iget-object v1, v3, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    const-string v2, "bcm"

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v3, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_28
    iget-object v1, v3, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    :goto_2a
    iput-object v1, v3, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    .line 87
    iget-object v1, v7, Lcom/codemao/nemo/delegates/CloudItemDelegate;->keyword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f0a055f

    if-eqz v1, :cond_46

    .line 88
    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 89
    iget-object v1, v3, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_6e

    .line 91
    :cond_46
    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 92
    iget v1, v7, Lcom/codemao/nemo/delegates/CloudItemDelegate;->nameWitdh:I

    if-gtz v1, :cond_5e

    .line 93
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;

    invoke-direct {v2, v7, v0, v3}, Lcom/codemao/nemo/delegates/CloudItemDelegate$1;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6e

    .line 101
    :cond_5e
    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v3, Lcom/codemao/nemo/bean/CloudData;->name:Ljava/lang/String;

    iget-object v10, v7, Lcom/codemao/nemo/delegates/CloudItemDelegate;->keyword:Ljava/lang/String;

    const-string v11, "#6F60DD"

    const/4 v12, 0x1

    iget v13, v7, Lcom/codemao/nemo/delegates/CloudItemDelegate;->nameWitdh:I

    invoke-static/range {v8 .. v13}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 104
    :goto_6e
    iget v1, v3, Lcom/codemao/nemo/bean/CloudData;->work_type:I

    const v8, 0x7f0a01f3

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-ne v1, v11, :cond_80

    .line 105
    invoke-virtual {v0, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_87

    .line 107
    :cond_80
    invoke-virtual {v0, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_87
    iget-wide v1, v3, Lcom/codemao/nemo/bean/CloudData;->publish_time:J

    const v4, 0x7f0a05d4

    const-wide/16 v5, 0x3e8

    const-wide/16 v12, 0x0

    const v14, 0x7f0a07a7

    cmp-long v15, v1, v12

    if-eqz v15, :cond_b5

    mul-long v1, v1, v5

    .line 111
    invoke-static {v1, v2}, Lcom/giu/xzz/utils/DateFormats;->formatYmdHm(J)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v4, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 发布"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_d8

    .line 116
    :cond_b5
    iget-object v1, v3, Lcom/codemao/nemo/bean/CloudData;->update_time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    mul-long v1, v1, v5

    invoke-static {v1, v2}, Lcom/giu/xzz/utils/DateFormats;->formatYmdHm(J)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v4, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 更新"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 121
    :goto_d8
    iget v1, v3, Lcom/codemao/nemo/bean/CloudData;->template_type:I

    const/4 v15, 0x2

    const v6, 0x7f0a05fc

    if-ne v1, v15, :cond_e8

    .line 122
    invoke-virtual {v0, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_109

    .line 123
    :cond_e8
    iget-wide v1, v3, Lcom/codemao/nemo/bean/CloudData;->publish_time:J

    cmp-long v4, v1, v12

    if-eqz v4, :cond_f6

    .line 124
    invoke-virtual {v0, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_109

    .line 126
    :cond_f6
    iget v1, v3, Lcom/codemao/nemo/bean/CloudData;->work_type:I

    if-ne v1, v11, :cond_102

    .line 127
    invoke-virtual {v0, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_109

    .line 129
    :cond_102
    invoke-virtual {v0, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_109
    invoke-virtual {v0, v14}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$2;

    invoke-direct {v2, v7, v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate$2;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 156
    iget v1, v3, Lcom/codemao/nemo/bean/CloudData;->template_type:I

    const v2, 0x7f0a03c7

    if-ne v1, v15, :cond_124

    .line 157
    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12d

    .line 159
    :cond_124
    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_12d
    sget-object v1, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_149

    sget-object v1, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    iget-wide v4, v3, Lcom/codemao/nemo/bean/CloudData;->work_id:J

    .line 163
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    sget-boolean v1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v1, :cond_149

    .line 165
    iput v11, v3, Lcom/codemao/nemo/bean/CloudData;->downloadStatus:I

    .line 167
    :cond_149
    iget v1, v3, Lcom/codemao/nemo/bean/CloudData;->downloadStatus:I

    if-ne v1, v11, :cond_161

    .line 168
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$3;

    invoke-direct {v2, v7, v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate$3;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    invoke-virtual {v0, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16a

    :cond_161
    if-ne v1, v15, :cond_167

    .line 176
    invoke-virtual {v7, v0, v3}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadEndUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V

    goto :goto_16a

    .line 178
    :cond_167
    invoke-virtual/range {p0 .. p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->resetUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 181
    :goto_16a
    new-instance v12, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    const v13, 0x7f0a05fc

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/codemao/nemo/bean/CloudData;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;ILjava/util/List;)V

    new-array v1, v10, [I

    aput v8, v1, v9

    aput v13, v1, v11

    const v2, 0x7f0a05f7

    aput v2, v1, v15

    const/4 v2, 0x3

    const v3, 0x7f0a05f9

    aput v3, v1, v2

    invoke-virtual {v0, v12, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18f} :catch_190

    goto :goto_194

    :catch_190
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_194
    return-void
.end method

.method public downloadEndUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V
    .registers 5

    const/4 v0, 0x0

    .line 354
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    const v0, 0x7f0a019d

    .line 355
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/delegates/CloudItemDelegate$5;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public downloadStartUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 5

    const v0, 0x7f0a01f3

    const v1, 0x7f080138

    .line 373
    invoke-virtual {p1, v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 374
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->startDownloadAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    const v0, 0x7f0a05fc

    .line 375
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_21

    .line 376
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0192

    return v0
.end method

.method public getNameWitdh()I
    .registers 2

    .line 397
    iget v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->nameWitdh:I

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 16

    const v0, 0x7f0a019d

    .line 323
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

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

    const v2, 0x7f0a05fe

    .line 324
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    new-array v7, v1, [F

    iget v8, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v4

    aput v5, v7, v3

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v7, 0x7f0a0581

    .line 325
    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    new-array v9, v1, [F

    iget v10, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v4

    aput v5, v9, v3

    invoke-static {v8, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 326
    invoke-virtual {p1, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    new-array v10, v1, [F

    fill-array-data v10, :array_a2

    const-string v11, "alpha"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const v10, 0x7f0a05f8

    .line 327
    invoke-virtual {p1, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    new-array v13, v1, [F

    aput v5, v13, v4

    iget v5, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    int-to-float v5, v5

    aput v5, v13, v3

    invoke-static {v12, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 328
    invoke-virtual {p1, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    new-array v10, v1, [F

    fill-array-data v10, :array_aa

    invoke-static {v6, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 329
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v11, 0x14d

    .line 330
    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v0, v11, v4

    aput-object v2, v11, v3

    aput-object v8, v11, v1

    const/4 v0, 0x3

    aput-object v9, v11, v0

    const/4 v0, 0x4

    aput-object v5, v11, v0

    const/4 v0, 0x5

    aput-object v6, v11, v0

    .line 331
    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 332
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 333
    invoke-virtual {p1, v7, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v0, 0x7f0a02fe

    .line 334
    invoke-virtual {p1, v0, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-void

    nop

    :array_a2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_aa
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public removeOpenAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a019d

    .line 308
    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    iget v7, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v4, v8

    const-string v7, "translationX"

    invoke-static {v2, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v4, 0x7f0a05fe

    .line 309
    invoke-virtual {v1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    new-array v9, v3, [F

    aput v6, v9, v5

    iget v10, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v8

    invoke-static {v4, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const v9, 0x7f0a0581

    .line 310
    invoke-virtual {v1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    new-array v11, v3, [F

    aput v6, v11, v5

    iget v12, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    neg-int v12, v12

    int-to-float v12, v12

    aput v12, v11, v8

    invoke-static {v10, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 311
    invoke-virtual {v1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    new-array v12, v3, [F

    fill-array-data v12, :array_a8

    const-string v13, "alpha"

    invoke-static {v11, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const v12, 0x7f0a05f8

    .line 312
    invoke-virtual {v1, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v14

    new-array v15, v3, [F

    iget v9, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->transX1:I

    int-to-float v9, v9

    aput v9, v15, v5

    aput v6, v15, v8

    invoke-static {v14, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 313
    invoke-virtual {v1, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    new-array v9, v3, [F

    fill-array-data v9, :array_b0

    invoke-static {v7, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 314
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v12, 0x14d

    .line 315
    invoke-virtual {v9, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v12, 0x6

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v2, v12, v5

    aput-object v4, v12, v8

    aput-object v10, v12, v3

    const/4 v2, 0x3

    aput-object v11, v12, v2

    const/4 v2, 0x4

    aput-object v6, v12, v2

    const/4 v2, 0x5

    aput-object v7, v12, v2

    .line 316
    invoke-virtual {v9, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 317
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    const v2, 0x7f0a0581

    .line 318
    invoke-virtual {v1, v2, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v2, 0x7f0a02fe

    .line 319
    invoke-virtual {v1, v2, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-void

    :array_a8
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_b0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public resetUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 4

    const v0, 0x7f0a019d

    .line 382
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/delegates/CloudItemDelegate$6;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate$6;-><init>(Lcom/codemao/nemo/delegates/CloudItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->keyword:Ljava/lang/String;

    return-void
.end method

.method public startDownloadAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 4

    .line 338
    invoke-virtual {p0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->stopDownloadAnim()V

    const v0, 0x7f0a01f3

    .line 339
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadAnim:Landroid/animation/ObjectAnimator;

    .line 340
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 342
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadAnim:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 343
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_34
    .array-data 4
        0x0
        0x43b40000  # 360.0f
    .end array-data
.end method

.method public stopDownloadAnim()V
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 348
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_f
    return-void
.end method
