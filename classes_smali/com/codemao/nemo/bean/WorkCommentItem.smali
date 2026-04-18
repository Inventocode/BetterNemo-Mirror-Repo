.class public Lcom/codemao/nemo/bean/WorkCommentItem;
.super Lcom/codemao/nemo/view/ExpandContentItem;
.source "WorkCommentItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_OFFICIAL_NONE:I = 0x0

.field public static final TYPE_OFFICIAL_RECOMMEND:I = 0x1

.field public static final TYPE_OFFICIAL_RECOMMEND_HARD:I = 0x2


# instance fields
.field private content:Ljava/lang/String;

.field private created_at:J

.field private emoji_content:Ljava/lang/String;

.field private id:J

.field private is_liked:Z

.field private is_own:Z

.field private is_top:Z

.field private n_likes:I

.field private official_type:I

.field private replies:Lcom/codemao/nemo/bean/WorkCommentReplys;

.field private updated_at:J

.field private user:Lcom/codemao/nemo/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/codemao/nemo/view/ExpandContentItem;-><init>()V

    return-void
.end method

.method private addOfficalRecommend(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 50
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0803fe

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x42600000  # 56.0f

    .line 52
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41800000  # 16.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    new-instance v1, Lcom/codemao/nemo/view/CustomImageSpan;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, v3}, Lcom/codemao/nemo/view/CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/16 p1, 0x21

    .line 54
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private addOfficalRecommendHard(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 59
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0803ff

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x42880000  # 68.0f

    .line 61
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41800000  # 16.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    new-instance v1, Lcom/codemao/nemo/view/CustomImageSpan;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, v3}, Lcom/codemao/nemo/view/CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/16 p1, 0x21

    .line 63
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private addTopDrawable(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 68
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080400

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x42000000  # 32.0f

    .line 70
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41800000  # 16.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    new-instance v1, Lcom/codemao/nemo/view/CustomImageSpan;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, v3}, Lcom/codemao/nemo/view/CustomImageSpan;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/16 p1, 0x21

    .line 72
    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/codemao/nemo/bean/WorkCommentItem;
    .registers 4

    .line 187
    new-instance v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->replies:Lcom/codemao/nemo/bean/WorkCommentReplys;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setReplies(Lcom/codemao/nemo/bean/WorkCommentReplys;)V

    .line 189
    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setId(J)V

    .line 190
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setContent(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->user:Lcom/codemao/nemo/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setUser(Lcom/codemao/nemo/bean/UserInfo;)V

    .line 192
    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->updated_at:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setUpdated_at(J)V

    .line 193
    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->created_at:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setCreated_at(J)V

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()J
    .registers 3

    .line 157
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->created_at:J

    return-wide v0
.end method

.method public getEmoji_content()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->emoji_content:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandContent()Ljava/lang/CharSequence;
    .registers 3

    .line 38
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_top:Z

    if-eqz v0, :cond_b

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->addTopDrawable(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 40
    :cond_b
    iget v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->official_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->addOfficalRecommendHard(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->addOfficalRecommend(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 45
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->id:J

    return-wide v0
.end method

.method public getN_likes()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->n_likes:I

    return v0
.end method

.method public getOfficial_type()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->official_type:I

    return v0
.end method

.method public getReplies()Lcom/codemao/nemo/bean/WorkCommentReplys;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->replies:Lcom/codemao/nemo/bean/WorkCommentReplys;

    return-object v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->updated_at:J

    return-wide v0
.end method

.method public getUser()Lcom/codemao/nemo/bean/UserInfo;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->user:Lcom/codemao/nemo/bean/UserInfo;

    return-object v0
.end method

.method public isExpand()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isExpand:Z

    return v0
.end method

.method public isIs_liked()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_liked:Z

    return v0
.end method

.method public isIs_own()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_own:Z

    return v0
.end method

.method public isIs_top()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_top:Z

    return v0
.end method

.method public isOverMax()Z
    .registers 2

    .line 204
    iget-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isOverMax:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(J)V
    .registers 3

    .line 161
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->created_at:J

    return-void
.end method

.method public setEmoji_content(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->emoji_content:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 89
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->id:J

    return-void
.end method

.method public setIs_liked(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_liked:Z

    return-void
.end method

.method public setIs_own(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_own:Z

    return-void
.end method

.method public setIs_top(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_top:Z

    return-void
.end method

.method public setN_likes(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->n_likes:I

    return-void
.end method

.method public setOfficial_type(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->official_type:I

    return-void
.end method

.method public setReplies(Lcom/codemao/nemo/bean/WorkCommentReplys;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->replies:Lcom/codemao/nemo/bean/WorkCommentReplys;

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 153
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->updated_at:J

    return-void
.end method

.method public setUser(Lcom/codemao/nemo/bean/UserInfo;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->user:Lcom/codemao/nemo/bean/UserInfo;

    return-void
.end method

.method public transToReply()Lcom/codemao/nemo/bean/WorkReplyItem;
    .registers 4

    .line 173
    new-instance v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->user:Lcom/codemao/nemo/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setReply_user(Lcom/codemao/nemo/bean/UserInfo;)V

    .line 175
    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->created_at:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkReplyItem;->setCreated_at(J)V

    .line 176
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setContent(Ljava/lang/String;)V

    .line 177
    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkReplyItem;->setId(J)V

    .line 178
    iget v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->n_likes:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setN_likes(I)V

    .line 179
    iget-boolean v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_liked:Z

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setIs_liked(Z)V

    .line 180
    iget-boolean v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->is_own:Z

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setIs_own(Z)V

    .line 181
    iget-wide v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->updated_at:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkReplyItem;->setUpdated_at(J)V

    .line 182
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkCommentItem;->emoji_content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->setEmoji_content(Ljava/lang/String;)V

    return-object v0
.end method
