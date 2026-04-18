.class public Lcom/codemao/nemo/bean/UserDetailInfoV2;
.super Ljava/lang/Object;
.source "UserDetailInfoV2.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attention_status:Z

.field private attention_total:I

.field private author_level:I

.field private avatar_url:Ljava/lang/String;

.field private block_total:I

.field private collect_times:I

.field private collected_total:I

.field private consume_level:I

.field private doing:Ljava/lang/String;

.field private fans_total:I

.field private head_frame_url:Ljava/lang/String;

.field private is_official_certification:I

.field private liked_total:I

.field private nickname:Ljava/lang/String;

.field private re_created_total:I

.field private small_head_frame_url:Ljava/lang/String;

.field private user_cover:Ljava/lang/String;

.field private user_description:Ljava/lang/String;

.field private user_id:J

.field private view_times:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttention_status()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->attention_status:Z

    return v0
.end method

.method public getAttention_total()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->attention_total:I

    return v0
.end method

.method public getAuthor_level()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->author_level:I

    return v0
.end method

.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBlock_total()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->block_total:I

    return v0
.end method

.method public getCollect_times()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->collect_times:I

    return v0
.end method

.method public getCollected_total()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->collected_total:I

    return v0
.end method

.method public getConsume_level()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->consume_level:I

    return v0
.end method

.method public getDoing()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->doing:Ljava/lang/String;

    return-object v0
.end method

.method public getFans_total()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->fans_total:I

    return v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_official_certification()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->is_official_certification:I

    return v0
.end method

.method public getLiked_total()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->liked_total:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRe_created_total()I
    .registers 2

    .line 143
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->re_created_total:I

    return v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_cover()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->user_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_description()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->user_description:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->user_id:J

    return-wide v0
.end method

.method public getView_times()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->view_times:I

    return v0
.end method

.method public isAttention_status()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->attention_status:Z

    return v0
.end method

.method public setAttention_status(Z)V
    .registers 2

    .line 187
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->attention_status:Z

    return-void
.end method

.method public setAttention_total(I)V
    .registers 2

    .line 171
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->attention_total:I

    return-void
.end method

.method public setAuthor_level(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->author_level:I

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setBlock_total(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->block_total:I

    return-void
.end method

.method public setCollect_times(I)V
    .registers 2

    .line 163
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->collect_times:I

    return-void
.end method

.method public setCollected_total(I)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->collected_total:I

    return-void
.end method

.method public setConsume_level(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->consume_level:I

    return-void
.end method

.method public setDoing(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->doing:Ljava/lang/String;

    return-void
.end method

.method public setFans_total(I)V
    .registers 2

    .line 179
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->fans_total:I

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 115
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->is_official_certification:I

    return-void
.end method

.method public setLiked_total(I)V
    .registers 2

    .line 123
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->liked_total:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRe_created_total(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->re_created_total:I

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setUser_cover(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->user_cover:Ljava/lang/String;

    return-void
.end method

.method public setUser_description(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->user_description:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->user_id:J

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 147
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfoV2;->view_times:I

    return-void
.end method
