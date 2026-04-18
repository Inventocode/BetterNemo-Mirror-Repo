.class public Lcom/codemao/nemo/delegates/CreateItemDelegate;
.super Ljava/lang/Object;
.source "CreateItemDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
        ">;"
    }
.end annotation


# instance fields
.field private isLargePad:Z

.field private keyword:Ljava/lang/String;

.field private mCreateCallBack:Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

.field private renameable:Z


# direct methods
.method public static synthetic $r8$lambda$ikZSYp4FalDmIr2KpSd9K9Zv28E(Lcom/codemao/nemo/delegates/CreateItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->lambda$convert$0(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->renameable:Z

    .line 33
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->mCreateCallBack:Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->mCreateCallBack:Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/delegates/CreateItemDelegate;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->renameable:Z

    return p0
.end method

.method private synthetic lambda$convert$0(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Landroid/view/View;)V
    .registers 5

    .line 206
    iget-object p3, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->mCreateCallBack:Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p3, p1, p2, v0}, Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;->onEnter(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 54
    :try_start_4
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 57
    iget-boolean v3, v1, Lcom/codemao/nemo/delegates/CreateItemDelegate;->isLargePad:Z

    const v4, 0x7f0a09bf

    const v5, 0x7f0a09be

    if-eqz v3, :cond_1f

    .line 58
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 59
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_89

    .line 61
    :cond_1f
    iget-object v3, v1, Lcom/codemao/nemo/delegates/CreateItemDelegate;->keyword:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 62
    invoke-virtual {v0, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 63
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 64
    invoke-virtual {v0, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_89

    .line 67
    :cond_44
    invoke-virtual {v0, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    invoke-virtual {v0, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69
    invoke-virtual {v0, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iget-object v9, v1, Lcom/codemao/nemo/delegates/CreateItemDelegate;->keyword:Ljava/lang/String;

    const-string v10, "#6F60DD"

    const/4 v11, 0x1

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x43160000  # 150.0f

    invoke-static {v3, v6}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v12

    invoke-static/range {v7 .. v12}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 70
    invoke-virtual {v0, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v13

    iget-object v14, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iget-object v15, v1, Lcom/codemao/nemo/delegates/CreateItemDelegate;->keyword:Ljava/lang/String;

    const-string v16, "#6F60DD"

    const/16 v17, 0x1

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v18

    invoke-static/range {v13 .. v18}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_89
    const v3, 0x7f0a05fa

    const/4 v4, 0x0

    .line 73
    invoke-virtual {v0, v3, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v3

    const v6, 0x7f0a0177

    .line 74
    invoke-virtual {v3, v6, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v3

    const v7, 0x7f0a0197

    const/4 v8, 0x1

    .line 75
    invoke-virtual {v3, v7, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v3

    const v9, 0x7f0a0174

    .line 76
    invoke-virtual {v3, v9, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v3

    const v10, 0x7f0a0671

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "角色数:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-virtual {v3, v10, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v3

    const v10, 0x7f0a00bc

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "积木数:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 78
    invoke-virtual {v3, v10, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v3

    const v10, 0x7f0a0670

    iget v11, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 79
    invoke-static {v11}, Lcom/codemao/nemo/util/CommonUtil;->convertRole(I)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setProgress(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v3

    const v10, 0x7f0a00bb

    iget v11, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 80
    invoke-static {v11}, Lcom/codemao/nemo/util/CommonUtil;->convertBlock(I)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setProgress(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 81
    iget-boolean v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    const/4 v11, 0x3

    const v12, 0x7f0a0541

    const v13, 0x7f0a05fc

    const v14, 0x7f0a0719

    const v15, 0x7f0a0538

    const v7, 0x7f0a0399

    const v5, 0x7f0a0175

    const v10, 0x7f0a05d3

    if-eqz v3, :cond_139

    .line 82
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v0, v15, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v9

    .line 84
    invoke-virtual {v9, v14, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v9

    .line 85
    invoke-virtual {v9, v10, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v9

    .line 86
    invoke-virtual {v9, v5, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v9

    .line 87
    invoke-virtual {v9, v13, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v9

    .line 88
    invoke-virtual {v9, v12, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v9

    .line 89
    invoke-virtual {v9, v7, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v9, 0x7f0805a5

    .line 90
    invoke-virtual {v0, v12, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto/16 :goto_210

    .line 94
    :cond_139
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v3, :cond_14d

    const-string v12, ".cover"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_144} :catch_34b

    if-eqz v3, :cond_14d

    .line 96
    :try_start_146
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/codemao/nemo/util/CommonUtil;->encodeBase64File(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_14c} :catch_14d

    goto :goto_14e

    :catch_14d
    :cond_14d
    move-object v3, v9

    .line 104
    :goto_14e
    :try_start_14e
    invoke-virtual {v0, v15, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v12

    .line 105
    invoke-virtual {v12, v14, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object v12

    .line 106
    invoke-virtual {v12, v10, v8}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 107
    iget-object v12, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    const/16 v14, 0x10

    invoke-virtual {v12, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v15, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 110
    iget v12, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    if-ne v12, v11, :cond_16a

    const/4 v12, 0x1

    goto :goto_16b

    :cond_16a
    const/4 v12, 0x0

    :goto_16b
    invoke-virtual {v0, v6, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 111
    iget v12, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    if-ne v12, v8, :cond_174

    const/4 v12, 0x1

    goto :goto_175

    :cond_174
    const/4 v12, 0x0

    :goto_175
    invoke-virtual {v0, v5, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 112
    iget v12, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v14, 0x2

    if-ne v12, v14, :cond_181

    const v12, 0x7f080448

    goto :goto_184

    :cond_181
    const v12, 0x7f080599

    :goto_184
    invoke-virtual {v0, v5, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 113
    iget v12, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const v14, 0x7f0a0176

    if-ne v12, v11, :cond_199

    const v9, 0x7f0803d4

    .line 114
    invoke-virtual {v0, v14}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_1a0

    .line 116
    :cond_199
    invoke-virtual {v0, v14}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :goto_1a0
    iget v9, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1a7

    const/4 v9, 0x1

    goto :goto_1a8

    :cond_1a7
    const/4 v9, 0x0

    :goto_1a8
    const v14, 0x7f0a0174

    invoke-virtual {v0, v14, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 121
    iget v9, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    if-ne v9, v12, :cond_1ba

    invoke-virtual {v0, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result v9

    if-eqz v9, :cond_1ba

    const/4 v9, 0x1

    goto :goto_1bb

    :cond_1ba
    const/4 v9, 0x0

    :goto_1bb
    invoke-virtual {v0, v6, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 123
    iget v9, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    if-ne v9, v8, :cond_1d0

    const v9, 0x7f0803b2

    const v12, 0x7f0a01f6

    .line 124
    invoke-virtual {v0, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_1d9

    :cond_1d0
    const v12, 0x7f0a01f6

    const v9, 0x7f08059b

    .line 126
    invoke-virtual {v0, v12, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 130
    :goto_1d9
    iget v9, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1e0

    const/4 v9, 0x1

    goto :goto_1e1

    :cond_1e0
    const/4 v9, 0x0

    :goto_1e1
    invoke-virtual {v0, v7, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 131
    iget v9, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-eq v9, v12, :cond_1ea

    const/4 v9, 0x1

    goto :goto_1eb

    :cond_1ea
    const/4 v9, 0x0

    :goto_1eb
    invoke-virtual {v0, v13, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 132
    iget v9, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-eq v9, v12, :cond_1f6

    const v9, 0x7f08059e

    goto :goto_1f9

    :cond_1f6
    const v9, 0x7f0803f3

    :goto_1f9
    invoke-virtual {v0, v10, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 133
    iget v9, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v12, 0x2

    if-ne v9, v12, :cond_203

    const/4 v9, 0x1

    goto :goto_204

    :cond_203
    const/4 v9, 0x0

    :goto_204
    const v12, 0x7f0a0541

    invoke-virtual {v0, v12, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v9, 0x7f0805a3

    .line 134
    invoke-virtual {v0, v12, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setImageResource(II)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 138
    :goto_210
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v9

    const/4 v12, 0x4

    const v14, 0x7f0a09bd

    if-eqz v9, :cond_273

    .line 139
    new-instance v9, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;

    invoke-direct {v9, v1, v0, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$1;-><init>(Lcom/codemao/nemo/delegates/CreateItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    const/16 v15, 0xf

    new-array v15, v15, [I

    const v19, 0x7f0a09be

    aput v19, v15, v4

    aput v7, v15, v8

    const/16 v18, 0x2

    aput v5, v15, v18

    const v18, 0x7f0a0197

    aput v18, v15, v11

    aput v13, v15, v12

    const/4 v11, 0x5

    const v18, 0x7f0a05f7

    aput v18, v15, v11

    const/4 v11, 0x6

    const v18, 0x7f0a05f9

    aput v18, v15, v11

    const/4 v11, 0x7

    const v18, 0x7f0a0719

    aput v18, v15, v11

    const/16 v11, 0x8

    aput v10, v15, v11

    const/16 v11, 0x9

    const v16, 0x7f0a01f6

    aput v16, v15, v11

    const/16 v11, 0xa

    const v16, 0x7f0a00fa

    aput v16, v15, v11

    const/16 v11, 0xb

    aput v14, v15, v11

    const/16 v11, 0xc

    const v16, 0x7f0a0220

    aput v16, v15, v11

    const/16 v11, 0xd

    aput v6, v15, v11

    const/16 v6, 0xe

    const v11, 0x7f0a0174

    aput v11, v15, v6

    invoke-virtual {v0, v9, v15}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_27d

    .line 206
    :cond_273
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v9, Lcom/codemao/nemo/delegates/CreateItemDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v0, v2}, Lcom/codemao/nemo/delegates/CreateItemDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/delegates/CreateItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :goto_27d
    iget-boolean v6, v1, Lcom/codemao/nemo/delegates/CreateItemDelegate;->renameable:Z

    if-nez v6, :cond_289

    .line 211
    invoke-virtual {v0, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29b

    .line 213
    :cond_289
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_297

    invoke-virtual {v0, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result v6

    if-eqz v6, :cond_297

    const/4 v6, 0x1

    goto :goto_298

    :cond_297
    const/4 v6, 0x0

    :goto_298
    invoke-virtual {v0, v7, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 215
    :goto_29b
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_2ac

    const v6, 0x7f0a0538

    invoke-virtual {v0, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result v7

    if-eqz v7, :cond_2af

    const/4 v7, 0x1

    goto :goto_2b0

    :cond_2ac
    const v6, 0x7f0a0538

    :cond_2af
    const/4 v7, 0x0

    :goto_2b0
    invoke-virtual {v0, v6, v7}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 216
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_2c1

    invoke-virtual {v0, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result v6

    if-eqz v6, :cond_2c1

    const/4 v6, 0x1

    goto :goto_2c2

    :cond_2c1
    const/4 v6, 0x0

    :goto_2c2
    invoke-virtual {v0, v5, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 217
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_2d3

    invoke-virtual {v0, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2d3

    const/4 v5, 0x1

    goto :goto_2d4

    :cond_2d3
    const/4 v5, 0x0

    :goto_2d4
    invoke-virtual {v0, v13, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 218
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_2e8

    const v5, 0x7f0a0719

    invoke-virtual {v0, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result v6

    if-eqz v6, :cond_2eb

    const/4 v6, 0x1

    goto :goto_2ec

    :cond_2e8
    const v5, 0x7f0a0719

    :cond_2eb
    const/4 v6, 0x0

    :goto_2ec
    invoke-virtual {v0, v5, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 219
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_2fd

    invoke-virtual {v0, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2fd

    const/4 v5, 0x1

    goto :goto_2fe

    :cond_2fd
    const/4 v5, 0x0

    :goto_2fe
    invoke-virtual {v0, v10, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 221
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v5

    const v6, 0x7f0a0197

    invoke-virtual {v0, v6, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v5, 0x7f0a0931

    .line 223
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v6

    if-nez v6, :cond_315

    const/4 v4, 0x1

    :cond_315
    invoke-virtual {v0, v5, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v4, 0x7f0a0470

    .line 225
    iget-boolean v5, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, v4, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-nez v3, :cond_32d

    const v2, 0x7f080407

    .line 227
    invoke-virtual {v0, v14}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(ILandroid/widget/ImageView;)V

    goto :goto_34f

    .line 229
    :cond_32d
    iget-boolean v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    if-eqz v2, :cond_343

    .line 230
    invoke-virtual {v0, v14}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadBcmBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v2, 0x7f0a0470

    .line 231
    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadBcm(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_34f

    .line 233
    :cond_343
    invoke-virtual {v0, v14}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadBcm(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_34a} :catch_34b

    goto :goto_34f

    :catch_34b
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34f
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 38
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d019d

    return v0

    :cond_c
    const v0, 0x7f0d019e

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setRenameable(Z)V
    .registers 2

    .line 246
    iput-boolean p1, p0, Lcom/codemao/nemo/delegates/CreateItemDelegate;->renameable:Z

    return-void
.end method
