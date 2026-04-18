.class public Lcom/codemao/nemo/bean/TrendsRecUserInfo;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "TrendsRecUserInfo.java"


# instance fields
.field private author_level:I

.field private avatar:Ljava/lang/String;

.field private consume_level:I

.field private head_frame_url:Ljava/lang/String;

.field private isFollowed:Z

.field private is_official_certification:I

.field private nickname:Ljava/lang/String;

.field private recommend_slogan:Ljava/lang/String;

.field private small_head_frame_url:Ljava/lang/String;

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->isFollowed:Z

    return-void
.end method


# virtual methods
.method public getAuthor_level()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->author_level:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getConsume_level()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->consume_level:I

    return v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_official_certification()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->is_official_certification:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommend_slogan()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->recommend_slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->user_id:J

    return-wide v0
.end method

.method public isFollowed()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->isFollowed:Z

    return v0
.end method

.method public setAuthor_level(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->author_level:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setConsume_level(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->consume_level:I

    return-void
.end method

.method public setFollowed(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->isFollowed:Z

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->is_official_certification:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRecommend_slogan(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->recommend_slogan:Ljava/lang/String;

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 53
    iput-wide p1, p0, Lcom/codemao/nemo/bean/TrendsRecUserInfo;->user_id:J

    return-void
.end method
