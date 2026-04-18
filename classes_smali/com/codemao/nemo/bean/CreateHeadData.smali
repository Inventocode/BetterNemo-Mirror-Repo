.class public Lcom/codemao/nemo/bean/CreateHeadData;
.super Lcom/codemao/nemo/bean/BaseData;
.source "CreateHeadData.java"


# instance fields
.field private author_level:I

.field private avatar_url:Ljava/lang/String;

.field private consume_level:I

.field private head_frame_url:Ljava/lang/String;

.field private is_official_certification:I

.field private n_likes:J

.field private n_re_create:J

.field private n_views:J

.field private nickname:Ljava/lang/String;

.field private small_head_frame_url:Ljava/lang/String;

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor_level()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->author_level:I

    return v0
.end method

.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getConsume_level()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->consume_level:I

    return v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_official_certification()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->is_official_certification:I

    return v0
.end method

.method public getN_likes()J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->n_likes:J

    return-wide v0
.end method

.method public getN_re_create()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->n_re_create:J

    return-wide v0
.end method

.method public getN_views()J
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->n_views:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CreateHeadData;->user_id:J

    return-wide v0
.end method

.method public setAuthor_level(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->author_level:I

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setConsume_level(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->consume_level:I

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->is_official_certification:I

    return-void
.end method

.method public setN_likes(J)V
    .registers 3

    .line 73
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->n_likes:J

    return-void
.end method

.method public setN_re_create(J)V
    .registers 3

    .line 105
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->n_re_create:J

    return-void
.end method

.method public setN_views(J)V
    .registers 3

    .line 81
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->n_views:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 97
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CreateHeadData;->user_id:J

    return-void
.end method
