.class public Lcom/codemao/nemo/bean/AuthorInfo;
.super Ljava/lang/Object;
.source "AuthorInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author_level:I

.field private avatar:Ljava/lang/String;

.field private consume_level:I

.field private fork_user:Z

.field private head_frame_url:Ljava/lang/String;

.field private id:J

.field private is_official_certification:I

.field private nickname:Ljava/lang/String;

.field private small_head_frame_url:Ljava/lang/String;


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

    .line 33
    iget v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->author_level:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getConsume_level()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->consume_level:I

    return v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->id:J

    return-wide v0
.end method

.method public getIs_official_certification()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->is_official_certification:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public isFork_user()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/AuthorInfo;->fork_user:Z

    return v0
.end method

.method public setAuthor_level(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->author_level:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setConsume_level(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->consume_level:I

    return-void
.end method

.method public setFork_user(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->fork_user:Z

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 61
    iput-wide p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->id:J

    return-void
.end method

.method public setIs_official_certification(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->is_official_certification:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/AuthorInfo;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method
