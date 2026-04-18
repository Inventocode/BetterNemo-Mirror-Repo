.class public Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;
.super Ljava/lang/Object;
.source "UserDynamicWorkOptionDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$UserDynamicCallBack;
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
.field private context:Landroid/content/Context;

.field private dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$UserDynamicCallBack;

.field private isOwner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$UserDynamicCallBack;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->isOwner:Z

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$UserDynamicCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;)Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$UserDynamicCallBack;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->dynamicCallBack:Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$UserDynamicCallBack;

    return-object p0
.end method

.method private getCommentInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicCommentInfo;
    .registers 4

    .line 144
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 145
    const-class v1, Lcom/codemao/nemo/bean/DynamicCommentInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/DynamicCommentInfo;

    return-object p1
.end method

.method private getNameAbate(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 8

    .line 149
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/high16 v1, 0x41800000  # 16.0f

    .line 151
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    .line 152
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "abate"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    mul-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    .line 154
    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    new-instance v1, Lcom/codemao/nemo/view/CustomImageSpan;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/codemao/nemo/view/CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v3, 0x5

    const/16 v4, 0x11

    .line 156
    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, " "

    .line 158
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private getWorkInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicWorkInfo;
    .registers 4

    .line 139
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 140
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

    .line 66
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    if-nez v0, :cond_9

    return-void

    .line 70
    :cond_9
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a043c

    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v1, 0x7f0a0912

    .line 71
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/StringUtil;->getDynamicOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a08f9

    .line 72
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getUpdated_at()J

    move-result-wide v2

    sget v4, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v2, v3, v4}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object p2

    const-string v1, "COMMENT_WORK"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v1, 0x7f0a081a

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p2, :cond_8c

    .line 77
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDetails_json()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->getCommentInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicCommentInfo;

    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicCommentInfo;->getWork_info()Lcom/codemao/nemo/bean/DynamicWorkInfo;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/DynamicCommentInfo;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9b

    .line 82
    :cond_8c
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDetails_json()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->getWorkInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicWorkInfo;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9b
    if-nez v0, :cond_9e

    return-void

    :cond_9e
    const p2, 0x7f0a0920

    .line 88
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a091b

    .line 89
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getView_times()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a08aa

    .line 90
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getLike_times()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0814

    .line 91
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getCollect_times()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->isDelete()Z

    move-result p2

    const v1, 0x7f0a0834

    const v4, 0x7f0a066b

    if-eqz p2, :cond_121

    .line 93
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1d7

    .line 95
    :cond_121
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getPublish_at()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const p2, 0x7f0a0923

    const v9, 0x7f0a0447

    cmp-long v10, v5, v7

    if-gtz v10, :cond_180

    .line 96
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 99
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 100
    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 101
    invoke-virtual {p1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/view/RoundStrokeImageView;

    .line 102
    invoke-virtual {v4, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setColorMatix(Landroid/graphics/ColorMatrix;)V

    .line 103
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060160

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->getNameAbate(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d7

    .line 106
    :cond_180
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 109
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v5, 0x3f800000  # 1.0f

    .line 110
    invoke-virtual {v1, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 111
    invoke-virtual {p1, v9}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/view/RoundStrokeImageView;

    .line 112
    invoke-virtual {v5, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setColorMatix(Landroid/graphics/ColorMatrix;)V

    .line 113
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    iget-object v5, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06015d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$1;-><init>(Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DynamicWorkInfo;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :goto_1d7
    iget-boolean p2, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->isOwner:Z

    const v0, 0x7f0a03e2

    if-eqz p2, :cond_1f2

    .line 124
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$2;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$2;-><init>(Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1f9

    .line 133
    :cond_1f2
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1f9
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01a6

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

    .line 61
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COMMENT_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COLLECTION_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIKE_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RE_CREATE_WORK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_4b

    :cond_49
    const/4 p1, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 p1, 0x1

    :goto_4c
    return p1
.end method

.method public setOwner(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->isOwner:Z

    return-void
.end method
