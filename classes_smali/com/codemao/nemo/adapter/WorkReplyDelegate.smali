.class public Lcom/codemao/nemo/adapter/WorkReplyDelegate;
.super Ljava/lang/Object;
.source "WorkReplyDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;
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
.field private context:Landroid/content/Context;

.field private workId:Ljava/lang/String;

.field private workReplyCallBack:Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->workType:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->workReplyCallBack:Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;

    .line 49
    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->workId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->workReplyCallBack:Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->workId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->workType:Ljava/lang/String;

    return-object p0
.end method

.method private formartReply(Lcom/codemao/nemo/bean/WorkReplyItem;)Landroid/text/SpannableStringBuilder;
    .registers 6

    .line 111
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getParent_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "回复 "

    .line 113
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 114
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getParent_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getParent_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->setClickableSpan(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, ": "

    .line 115
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    :cond_2d
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 119
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/MainApplication;->isIsManager()Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "【"

    .line 120
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

    .line 127
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    new-instance p1, Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;

    invoke-direct {p1, p0, p2, p3}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;-><init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;J)V

    .line 142
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/4 p3, 0x0

    const/16 v1, 0x21

    invoke-virtual {v0, p1, p3, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private setUserLevelInfo(Lcom/codemao/nemo/view/UserSignImagView;Lcom/codemao/nemo/view/AvatarFrameImagView;Landroid/widget/TextView;ILjava/lang/String;)V
    .registers 7

    .line 147
    new-instance v0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$6;

    invoke-direct {v0, p0, p4}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$6;-><init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1, p4, v0}, Lcom/codemao/nemo/view/UserSignImagView;->setUserLevel(IZ)V

    .line 155
    invoke-virtual {p2, p5}, Lcom/codemao/nemo/view/AvatarFrameImagView;->setUserLevel(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    if-lt p4, p2, :cond_1d

    const/high16 p2, 0x42580000  # 54.0f

    .line 157
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-virtual {p3, p1, p1, p2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_20

    .line 159
    :cond_1d
    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_20
    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkReplyItem;",
            ">;I)V"
        }
    .end annotation

    .line 64
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const v1, 0x7f0a0912

    .line 68
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a043c

    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const v2, 0x7f0a0951

    if-ne p3, p2, :cond_42

    .line 72
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4a

    .line 74
    :cond_42
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_4a
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/codemao/nemo/adapter/WorkReplyDelegate$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$1;-><init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;ILcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a081b

    .line 84
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView;

    new-instance v4, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;

    invoke-direct {v4, p0, p3, v0}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;-><init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;ILcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-virtual {v2, v4}, Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView;->setNormalClickListener(Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;)V

    .line 91
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    new-instance v2, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$3;-><init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0441

    .line 99
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/codemao/nemo/view/UserSignImagView;

    const p3, 0x7f0a0363

    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/codemao/nemo/view/AvatarFrameImagView;

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/UserInfo;->getAuthor_level()I

    move-result v6

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/UserInfo;->getSmall_head_frame_url()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->setUserLevelInfo(Lcom/codemao/nemo/view/UserSignImagView;Lcom/codemao/nemo/view/AvatarFrameImagView;Landroid/widget/TextView;ILjava/lang/String;)V

    .line 100
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, v0}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->formartReply(Lcom/codemao/nemo/bean/WorkReplyItem;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/codemao/nemo/adapter/WorkReplyDelegate$4;

    invoke-direct {p2, p0, v0}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$4;-><init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;Lcom/codemao/nemo/bean/WorkReplyItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0207

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
