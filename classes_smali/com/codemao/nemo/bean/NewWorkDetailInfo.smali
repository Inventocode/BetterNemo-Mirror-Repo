.class public Lcom/codemao/nemo/bean/NewWorkDetailInfo;
.super Ljava/lang/Object;
.source "NewWorkDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private background_color:Ljava/lang/String;

.field private like_times:J

.field private nickname:Ljava/lang/String;

.field private parent_id:J

.field private published_at:J

.field private recommend_word:Ljava/lang/String;

.field private recommend_word_id:J

.field private updated_at:J

.field private user_id:J

.field private view_times:J

.field private work_id:J

.field private work_name:Ljava/lang/String;

.field private work_preview:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground_color()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->background_color:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_times()J
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->like_times:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()J
    .registers 3

    .line 134
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->parent_id:J

    return-wide v0
.end method

.method public getPublished_at()J
    .registers 3

    .line 130
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->published_at:J

    return-wide v0
.end method

.method public getRecommend_word()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->recommend_word:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommend_word_id()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->recommend_word_id:J

    return-wide v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->updated_at:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->user_id:J

    return-wide v0
.end method

.method public getView_times()J
    .registers 3

    .line 122
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->view_times:J

    return-wide v0
.end method

.method public getWork_id()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_preview()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->work_preview:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBackground_color(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->background_color:Ljava/lang/String;

    return-void
.end method

.method public setLike_times(J)V
    .registers 3

    .line 70
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->like_times:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 78
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->parent_id:J

    return-void
.end method

.method public setPublished_at(J)V
    .registers 3

    .line 74
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->published_at:J

    return-void
.end method

.method public setRecommend_word(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->recommend_word:Ljava/lang/String;

    return-void
.end method

.method public setRecommend_word_id(J)V
    .registers 3

    .line 50
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->recommend_word_id:J

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 46
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->updated_at:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 42
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->user_id:J

    return-void
.end method

.method public setView_times(J)V
    .registers 3

    .line 66
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->view_times:J

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->work_name:Ljava/lang/String;

    return-void
.end method

.method public setWork_preview(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->work_preview:Ljava/lang/String;

    return-void
.end method
