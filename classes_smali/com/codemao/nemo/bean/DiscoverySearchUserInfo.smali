.class public Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;
.super Ljava/lang/Object;
.source "DiscoverySearchUserInfo.java"

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

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->id:J

    return-wide v0
.end method

.method public getN_works()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->n_works:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_likes()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->total_likes:I

    return v0
.end method

.method public isFollowed()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->is_followed:Z

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setFollowed(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->is_followed:Z

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 30
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->id:J

    return-void
.end method

.method public setN_works(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->n_works:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setTotal_likes(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->total_likes:I

    return-void
.end method
