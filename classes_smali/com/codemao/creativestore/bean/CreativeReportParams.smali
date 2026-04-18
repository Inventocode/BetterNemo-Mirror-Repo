.class public Lcom/codemao/creativestore/bean/CreativeReportParams;
.super Ljava/lang/Object;
.source "CreativeReportParams.java"


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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    return-void
.end method

.method public static create()Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 1

    .line 18
    new-instance v0, Lcom/codemao/creativestore/bean/CreativeReportParams;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/CreativeReportParams;-><init>()V

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

    .line 165
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 23
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setDelay(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 100
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setHelpName(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 150
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "help_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setHelpType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 157
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "help_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setLessonName(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 44
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "lesson_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setLimitNumber(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 122
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "limited_number"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setNoticeId(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 107
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "notice_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setNoticeType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 114
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "notice_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setRoleType(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 143
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "role_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setSpace(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 136
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "space"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setTemplateId(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 51
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "template_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setTemplateRank(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "template_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setThemeId(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 72
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "theme_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setThemeRank(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 79
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "theme_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setThemeTag(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "theme_tag"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setVoiceName(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 129
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "vioce_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkColumn(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "work_column"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkId(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 30
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "work_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkRank(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 65
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "work_rank"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method

.method public setWorkState(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;
    .registers 4

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 93
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreativeReportParams;->params:Ljava/util/Map;

    const-string v1, "work_state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object p0
.end method
