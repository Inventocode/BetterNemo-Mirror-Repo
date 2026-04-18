.class public Lcom/codemao/nemo/adapter/WorkCommentDelegate;
.super Ljava/lang/Object;
.source "WorkCommentDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/WorkCommentItem;",
        ">;"
    }
.end annotation


# instance fields
.field private commentCallBack:Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

.field private context:Landroid/content/Context;

.field private workId:J

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    .line 48
    iput-wide p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->workId:J

    .line 49
    iput-object p4, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->workType:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->commentCallBack:Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->commentCallBack:Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->workId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->workType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Landroid/content/Context;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setUserLevelInfo(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V
    .registers 9

    const/4 p1, 0x0

    .line 258
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v0, 0x42580000  # 54.0f

    .line 259
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p4, p1, p1, v0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 260
    new-instance v0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;

    invoke-direct {v0, p0, p5}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$11;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    if-eqz p5, :cond_52

    const/4 v1, 0x1

    if-eq p5, v1, :cond_4b

    const/4 v1, 0x2

    if-eq p5, v1, :cond_44

    const/4 v1, 0x3

    if-eq p5, v1, :cond_3d

    const/4 v1, 0x4

    if-eq p5, v1, :cond_36

    const/4 v1, 0x5

    if-eq p5, v1, :cond_2f

    .line 289
    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 290
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_58

    :cond_2f
    const p4, 0x7f0804e0

    .line 286
    invoke-static {p4, p2}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_58

    :cond_36
    const p4, 0x7f0804df

    .line 283
    invoke-static {p4, p2}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_58

    :cond_3d
    const p4, 0x7f0804de

    .line 280
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_58

    :cond_44
    const p4, 0x7f0804dd

    .line 277
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_58

    .line 273
    :cond_4b
    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_58

    .line 269
    :cond_52
    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 270
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    :goto_58
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 294
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_68

    .line 296
    :cond_62
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    invoke-static {p6, p3}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_68
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
            "Lcom/codemao/nemo/bean/WorkCommentItem;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p3

    .line 65
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    if-nez v1, :cond_f

    return-void

    :cond_f
    const v2, 0x7f0a0912

    .line 69
    invoke-virtual {v8, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a081e

    .line 70
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getCreated_at()J

    move-result-wide v4

    sget v6, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v4, v5, v6}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0a0383

    .line 72
    invoke-virtual {v8, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/WorkCommentDelegate$1;

    invoke-direct {v4, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$1;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0a08a8

    .line 79
    invoke-virtual {v8, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getN_likes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->isIs_liked()Z

    move-result v3

    const v11, 0x7f0a03f3

    if-eqz v3, :cond_77

    .line 81
    invoke-virtual {v8, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0803fd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_81

    .line 83
    :cond_77
    invoke-virtual {v8, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0803fc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    :goto_81
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a043c

    invoke-virtual {v8, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 86
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v3

    const v6, 0x7f0a094b

    const v12, 0x7f0a06a6

    const v13, 0x7f0a0902

    const/16 v14, 0x8

    const/4 v15, 0x0

    if-eqz v3, :cond_181

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_181

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_181

    .line 87
    invoke-virtual {v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    new-instance v9, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    invoke-virtual {v3, v15}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 91
    invoke-virtual {v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result v2

    const/4 v9, 0x3

    if-gt v2, v9, :cond_f1

    .line 93
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {v8, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_126

    .line 96
    :cond_f1
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "查看全部"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v10

    invoke-virtual {v10}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getTotal()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "条回复"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v8, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_149

    .line 102
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_154

    .line 104
    :cond_149
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkCommentReplys;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :goto_154
    new-instance v6, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v9, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    invoke-direct {v6, v9, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 107
    new-instance v2, Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    iget-object v9, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->workId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->workType:Ljava/lang/String;

    new-instance v11, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;

    invoke-direct {v11, v7, v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;ILcom/codemao/nemo/bean/WorkCommentItem;)V

    invoke-direct {v2, v9, v5, v10, v11}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;)V

    invoke-virtual {v6, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 133
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_196

    .line 135
    :cond_181
    invoke-virtual {v8, v12}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v8, v6}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_196
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/codemao/nemo/adapter/WorkCommentDelegate$3;

    invoke-direct {v3, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$3;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/codemao/nemo/adapter/WorkCommentDelegate$4;

    invoke-direct {v3, v7, v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$4;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;Lcom/codemao/nemo/bean/WorkCommentItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    invoke-virtual {v8, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/adapter/WorkCommentDelegate$5;

    invoke-direct {v3, v7, v8, v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$5;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/WorkCommentItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0692

    .line 160
    invoke-virtual {v8, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/WorkCommentDelegate$6;

    invoke-direct {v4, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$6;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;

    invoke-direct {v4, v7, v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$7;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;ILcom/codemao/nemo/bean/WorkCommentItem;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a03f3

    .line 174
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v3, Lcom/codemao/nemo/adapter/WorkCommentDelegate$8;

    invoke-direct {v3, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$8;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;I)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a08a8

    .line 181
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    new-instance v3, Lcom/codemao/nemo/adapter/WorkCommentDelegate$9;

    invoke-direct {v3, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$9;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a08ed

    .line 189
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/view/ExpandTextView;

    invoke-virtual {v4, v1, v0}, Lcom/codemao/nemo/view/ExpandTextView;->bindData(Lcom/codemao/nemo/view/ExpandContentItem;I)V

    .line 191
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_22a

    .line 192
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->isIs_top()Z

    move-result v4

    if-nez v4, :cond_222

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getOfficial_type()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_222

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getOfficial_type()I

    move-result v4

    if-ne v4, v5, :cond_21a

    goto :goto_222

    .line 195
    :cond_21a
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_231

    .line 193
    :cond_222
    :goto_222
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_231

    .line 198
    :cond_22a
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_231
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getEmoji_content()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_243

    .line 201
    invoke-virtual {v8, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29c

    .line 203
    :cond_243
    invoke-virtual {v8, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getEmoji_content()Ljava/lang/String;

    move-result-object v3

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, ","

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 207
    array-length v6, v3

    const/4 v9, 0x0

    :goto_25b
    if-ge v9, v6, :cond_26a

    aget-object v10, v3, v9

    .line 208
    new-instance v11, Lcom/codemao/nemo/bean/ExpressionItem;

    invoke-direct {v11, v10}, Lcom/codemao/nemo/bean/ExpressionItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_25b

    .line 210
    :cond_26a
    new-instance v3, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v6, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    invoke-direct {v3, v6, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 211
    new-instance v4, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;

    iget-object v6, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0xa

    new-instance v10, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;

    invoke-direct {v10, v7, v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;ILcom/codemao/nemo/bean/WorkCommentItem;)V

    invoke-direct {v4, v6, v9, v10}, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;-><init>(Landroid/content/Context;ILcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;)V

    invoke-virtual {v3, v4}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 222
    invoke-virtual {v8, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 223
    new-instance v2, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    iget-object v4, v7, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 225
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 226
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 230
    :goto_29c
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2b7

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v9

    cmp-long v0, v2, v9

    if-nez v0, :cond_2b7

    const/4 v15, 0x1

    :cond_2b7
    const v0, 0x7f0a0441

    .line 233
    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    const v0, 0x7f0a0363

    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    const v0, 0x7f0a0912

    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserInfo;->getAuthor_level()I

    move-result v5

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserInfo;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->setUserLevelInfo(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_306

    const v0, 0x7f0a0383

    .line 236
    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a03f3

    .line 237
    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a08a8

    .line 238
    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_306
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0202

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkCommentItem;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
