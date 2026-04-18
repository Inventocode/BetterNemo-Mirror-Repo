.class public Lcom/codemao/nemo/bean/AllClickMsgParams;
.super Ljava/lang/Object;
.source "AllClickMsgParams.java"


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 1

    .line 17
    new-instance v0, Lcom/codemao/nemo/bean/AllClickMsgParams;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;-><init>()V

    return-object v0
.end method


# virtual methods
.method public map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    return-object v0
.end method

.method public setActiveId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 36
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "active_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setBannerRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "banner_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setBannerUrl(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "banner_url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setButtonType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "button_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setCommentType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 198
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "comment_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setCoursePackageId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "package_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setDelay(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setFollowUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "follow_user_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setLessonId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "lesson_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setLessonName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "lesson_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setNoticeId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "notice_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setNoticeType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "notice_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setNoticeUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "notice_user_Id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setPageRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "page_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setSearchName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "search_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setSearchType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "search_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setShareId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "share_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setTagRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "tag_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setTemplateId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "template_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setTemplateRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "template_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setThemeId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "theme_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setThemeRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "theme_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setThemeTag(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "theme_tag"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setTypeWorkid(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "typeworkid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setUserRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 191
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "user_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 184
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "user_state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkColumn(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "work_column"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkCount(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "work_count"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "work_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "work_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "work_state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkTag(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 212
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "work_tag"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;
    .registers 4

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/bean/AllClickMsgParams;->params:Ljava/util/Map;

    const-string v1, "work_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method
