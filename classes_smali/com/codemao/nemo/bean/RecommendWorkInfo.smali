.class public Lcom/codemao/nemo/bean/RecommendWorkInfo;
.super Ljava/lang/Object;
.source "RecommendWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private comment_times:I

.field private create_time:J

.field private nickname:Ljava/lang/String;

.field private parent_id:I

.field private player_url:Ljava/lang/String;

.field private praise_times:I

.field private preview:Ljava/lang/String;

.field private publish_time:J

.field private recommended_description:Ljava/lang/String;

.field private recommended_preview:Ljava/lang/String;

.field private update_time:J

.field private user_id:J

.field private view_times:J

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_times()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->comment_times:I

    return v0
.end method

.method public getCreate_time()J
    .registers 3

    .line 130
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->create_time:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->parent_id:I

    return v0
.end method

.method public getPlayer_url()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->player_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_times()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->praise_times:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()J
    .registers 3

    .line 138
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->publish_time:J

    return-wide v0
.end method

.method public getRecommended_description()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->recommended_description:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommended_preview()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->recommended_preview:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()J
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->update_time:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 106
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getView_times()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->view_times:J

    return-wide v0
.end method

.method public getWork_id()J
    .registers 3

    .line 34
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setComment_times(I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->comment_times:I

    return-void
.end method

.method public setCreate_time(J)V
    .registers 3

    .line 134
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->create_time:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setParent_id(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->parent_id:I

    return-void
.end method

.method public setPlayer_url(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->player_url:Ljava/lang/String;

    return-void
.end method

.method public setPraise_times(I)V
    .registers 2

    .line 102
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->praise_times:I

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_time(J)V
    .registers 3

    .line 142
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->publish_time:J

    return-void
.end method

.method public setRecommended_description(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->recommended_description:Ljava/lang/String;

    return-void
.end method

.method public setRecommended_preview(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->recommended_preview:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(J)V
    .registers 3

    .line 150
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->update_time:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 110
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->user_id:J

    return-void
.end method

.method public setView_times(J)V
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->view_times:J

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 38
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
