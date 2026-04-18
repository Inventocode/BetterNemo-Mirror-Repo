.class public Lcom/codemao/nemo/bean/UserFanAndFollowInfo;
.super Ljava/lang/Object;
.source "UserFanAndFollowInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private id:J

.field private is_followed:Z

.field private n_works:I

.field private nickname:Ljava/lang/String;

.field private total_likes:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->id:J

    return-wide v0
.end method

.method public getN_works()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->n_works:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_likes()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->total_likes:I

    return v0
.end method

.method public isFollowed()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->is_followed:Z

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setFollowed(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->is_followed:Z

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->id:J

    return-void
.end method

.method public setN_works(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->n_works:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setTotal_likes(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->total_likes:I

    return-void
.end method
