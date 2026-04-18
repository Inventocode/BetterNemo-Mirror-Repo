.class public Lcom/codemao/nemo/bean/UserDetailInfo;
.super Ljava/lang/Object;
.source "UserDetailInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author_level:I

.field private avatar_url:Ljava/lang/String;

.field private consume_level:I

.field private is_attention:Z

.field private is_official_certification:I

.field private nattention:I

.field private nblock:I

.field private ncollect:I

.field private nfans:I

.field private nfork:I

.field private nickname:Ljava/lang/String;

.field private user_cover:Ljava/lang/String;

.field private user_description:Ljava/lang/String;

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor_level()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->author_level:I

    return v0
.end method

.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getConsume_level()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->consume_level:I

    return v0
.end method

.method public getIs_official_certification()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->is_official_certification:I

    return v0
.end method

.method public getNattention()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nattention:I

    return v0
.end method

.method public getNblock()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nblock:I

    return v0
.end method

.method public getNcollect()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->ncollect:I

    return v0
.end method

.method public getNfans()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nfans:I

    return v0
.end method

.method public getNfork()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nfork:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_cover()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->user_cover:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_description()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->user_description:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->user_id:J

    return-wide v0
.end method

.method public isIs_attention()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->is_attention:Z

    return v0
.end method

.method public setAuthor_level(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->author_level:I

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setConsume_level(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->consume_level:I

    return-void
.end method

.method public setIs_attention(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->is_attention:Z

    return-void
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->is_official_certification:I

    return-void
.end method

.method public setNattention(I)V
    .registers 2

    .line 123
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nattention:I

    return-void
.end method

.method public setNblock(I)V
    .registers 2

    .line 115
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nblock:I

    return-void
.end method

.method public setNcollect(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->ncollect:I

    return-void
.end method

.method public setNfans(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nfans:I

    return-void
.end method

.method public setNfork(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nfork:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUser_cover(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->user_cover:Ljava/lang/String;

    return-void
.end method

.method public setUser_description(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->user_description:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserDetailInfo;->user_id:J

    return-void
.end method
