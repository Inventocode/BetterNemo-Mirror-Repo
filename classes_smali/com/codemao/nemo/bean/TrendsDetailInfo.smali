.class public Lcom/codemao/nemo/bean/TrendsDetailInfo;
.super Lcom/codemao/nemo/view/ExpandContentItem;
.source "TrendsDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author_level:I

.field private avatar:Ljava/lang/String;

.field private consume_level:I

.field private created_at:J

.field private description:Ljava/lang/String;

.field private head_frame_url:Ljava/lang/String;

.field private is_official_certification:Ljava/lang/String;

.field private like_times:I

.field private nickname:Ljava/lang/String;

.field private parent_id:J

.field private preview:Ljava/lang/String;

.field private small_head_frame_url:Ljava/lang/String;

.field private user_id:J

.field private view_times:I

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/codemao/nemo/view/ExpandContentItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor_level()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->author_level:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getConsume_level()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->consume_level:I

    return v0
.end method

.method public getCreated_at()J
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->created_at:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandContent()Ljava/lang/CharSequence;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_official_certification()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->is_official_certification:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_times()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->like_times:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()J
    .registers 3

    .line 163
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->parent_id:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->user_id:J

    return-wide v0
.end method

.method public getView_times()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->view_times:I

    return v0
.end method

.method public getWork_id()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor_level(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->author_level:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setConsume_level(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->consume_level:I

    return-void
.end method

.method public setCreated_at(J)V
    .registers 3

    .line 159
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->created_at:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setIs_official_certification(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->is_official_certification:Ljava/lang/String;

    return-void
.end method

.method public setLike_times(I)V
    .registers 2

    .line 143
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->like_times:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 167
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->parent_id:J

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 95
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->user_id:J

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 135
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->view_times:I

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 87
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsDetailInfo;->work_name:Ljava/lang/String;

    return-void
.end method
