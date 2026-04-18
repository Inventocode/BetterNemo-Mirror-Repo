.class public Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;
.super Ljava/lang/Object;
.source "WorkCommentDetailDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/WorkReplyItem;",
        ">;"
    }
.end annotation


# instance fields
.field private commentDetailCallBack:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

.field private context:Landroid/content/Context;

.field private touchPostion:I

.field private workId:Ljava/lang/String;

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->touchPostion:I

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->context:Landroid/content/Context;

    .line 59
    iput-object p4, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->commentDetailCallBack:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

    .line 60
    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->workId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->workType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->commentDetailCallBack:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

    return-object p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->touchPostion:I

    return p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Landroid/content/Context;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->workId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->workType:Ljava/lang/String;

    return-object p0
.end method

.method private formartReply(Lcom/codemao/nemo/bean/WorkReplyItem;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 252
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 253
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getParent_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "回复 "

    .line 254
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 255
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getParent_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getParent_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->setClickableSpan(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, ": "

    .line 256
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 258
    :cond_2d
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 260
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->isIsManager()Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "【"

    .line 261
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v1, "】"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_55
    return-object v0
.end method

.method private setClickableSpan(Ljava/lang/String;J)Landroid/text/SpannableString;
    .registers 6

    .line 268
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    new-instance p1, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;

    invoke-direct {p1, p0, p2, p3}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;J)V

    .line 284
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/4 p3, 0x0

    const/16 v1, 0x21

    invoke-virtual {v0, p1, p3, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private setUserLevelInfo(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V
    .registers 10

    const/4 p1, 0x0

    .line 290
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v0, 0x42580000  # 54.0f

    .line 291
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    invoke-virtual {p4, p1, p1, v0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 292
    new-instance v0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;

    invoke-direct {v0, p0, p5}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$12;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eqz p5, :cond_52

    const/4 v2, 0x1

    if-eq p5, v2, :cond_4b

    const/4 v2, 0x2

    if-eq p5, v2, :cond_44

    const/4 v2, 0x3

    if-eq p5, v2, :cond_3d

    if-eq p5, v0, :cond_36

    const/4 v2, 0x5

    if-eq p5, v2, :cond_2f

    .line 321
    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 322
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_58

    :cond_2f
    const p4, 0x7f0804e0

    .line 318
    invoke-static {p4, p2}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_58

    :cond_36
    const p4, 0x7f0804df

    .line 315
    invoke-static {p4, p2}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_58

    :cond_3d
    const p4, 0x7f0804de

    .line 312
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_58

    :cond_44
    const p4, 0x7f0804dd

    .line 309
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_58

    .line 305
    :cond_4b
    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 306
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_58

    .line 301
    :cond_52
    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 302
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :goto_58
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 326
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_68

    .line 328
    :cond_62
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
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
            "Lcom/codemao/nemo/bean/WorkReplyItem;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p3

    .line 85
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkReplyItem;

    if-nez v1, :cond_f

    return-void

    :cond_f
    const v2, 0x7f0a0912

    .line 89
    invoke-virtual {v8, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a081e

    .line 90
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getCreated_at()J

    move-result-wide v4

    sget v6, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v4, v5, v6}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0a08a8

    .line 93
    invoke-virtual {v8, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getN_likes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->isIs_liked()Z

    move-result v3

    const v10, 0x7f0a03f3

    if-eqz v3, :cond_68

    .line 95
    invoke-virtual {v8, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0803fd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_72

    .line 97
    :cond_68
    invoke-virtual {v8, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0803fc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_72
    const v11, 0x7f0a0383

    .line 100
    invoke-virtual {v8, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$1;

    invoke-direct {v4, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$1;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a043c

    invoke-virtual {v8, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v3, 0x7f0a08c1

    const v5, 0x7f0a0952

    const/4 v6, 0x0

    const/16 v12, 0x8

    if-nez v0, :cond_ad

    .line 111
    invoke-virtual {v8, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_bb

    .line 114
    :cond_ad
    invoke-virtual {v8, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_bb
    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$2;

    invoke-direct {v5, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$2;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$3;

    invoke-direct {v5, v7, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$3;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;Lcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0a081b

    .line 131
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v13, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$4;

    invoke-direct {v13, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$4;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v8, v10}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v5

    new-instance v13, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$5;

    invoke-direct {v13, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$5;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v8, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    new-instance v13, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$6;

    invoke-direct {v13, v7, v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$6;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;I)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getEmoji_content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v13, 0x7f0a0692

    if-eqz v5, :cond_10b

    .line 153
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_169

    .line 155
    :cond_10b
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getEmoji_content()Ljava/lang/String;

    move-result-object v5

    .line 157
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string v15, ","

    .line 158
    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 159
    array-length v15, v5

    const/4 v9, 0x0

    :goto_123
    if-ge v9, v15, :cond_137

    aget-object v10, v5, v9

    .line 160
    new-instance v12, Lcom/codemao/nemo/bean/ExpressionItem;

    invoke-direct {v12, v10}, Lcom/codemao/nemo/bean/ExpressionItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const v10, 0x7f0a03f3

    const/16 v12, 0x8

    goto :goto_123

    .line 162
    :cond_137
    new-instance v5, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v9, v7, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->context:Landroid/content/Context;

    invoke-direct {v5, v9, v14}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 163
    new-instance v9, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;

    iget-object v10, v7, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->context:Landroid/content/Context;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0xa

    new-instance v14, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;

    invoke-direct {v14, v7, v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;ILcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-direct {v9, v10, v12, v14}, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;-><init>(Landroid/content/Context;ILcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;)V

    invoke-virtual {v5, v9}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 175
    invoke-virtual {v8, v13}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v12, v7, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->context:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 178
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 179
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_169
    const v5, 0x7f0a0679

    if-eqz v0, :cond_195

    .line 181
    iget v9, v7, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->touchPostion:I

    if-ne v0, v9, :cond_195

    .line 182
    invoke-virtual {v8, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iget-object v9, v7, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06005e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 183
    invoke-virtual {v8, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;

    invoke-direct {v5, v7, v8}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$8;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    const-wide/16 v9, 0x7d0

    invoke-virtual {v0, v5, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a9

    .line 202
    :cond_195
    invoke-virtual {v8, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, v7, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0601af

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 204
    :goto_1a9
    invoke-virtual {v8, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v4, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;

    invoke-direct {v4, v7, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$9;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;Lcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/view/LinkMovementClickMethod;->getInstance()Lcom/codemao/nemo/view/LinkMovementClickMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 212
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/MainApplication;->isIsManager()Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 213
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {v7, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->formartReply(Lcom/codemao/nemo/bean/WorkReplyItem;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$10;

    invoke-direct {v3, v7, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$10;-><init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;Lcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1ed

    .line 222
    :cond_1e2
    invoke-virtual {v8, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {v7, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->formartReply(Lcom/codemao/nemo/bean/WorkReplyItem;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1ed
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-eqz v0, :cond_209

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v9

    cmp-long v0, v3, v9

    if-nez v0, :cond_209

    const/4 v0, 0x1

    const/4 v6, 0x1

    :cond_209
    const v0, 0x7f0a0441

    .line 228
    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v3

    const v0, 0x7f0a0363

    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v8, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserInfo;->getAuthor_level()I

    move-result v9

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserInfo;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->setUserLevelInfo(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_259

    .line 231
    invoke-virtual {v8, v11}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a03f3

    .line 232
    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a08a8

    .line 233
    invoke-virtual {v8, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_259
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0203

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkReplyItem;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setTouchPostion(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->touchPostion:I

    return-void
.end method
