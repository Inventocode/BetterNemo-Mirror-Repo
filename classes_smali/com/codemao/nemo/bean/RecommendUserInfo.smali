.class public Lcom/codemao/nemo/bean/RecommendUserInfo;
.super Ljava/lang/Object;
.source "RecommendUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attention:Z

.field private avatar_url:Ljava/lang/String;

.field private n_likes:I

.field private nickname:Ljava/lang/String;

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getN_likes()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->n_likes:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->user_id:J

    return-wide v0
.end method

.method public isAttention()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->attention:Z

    return v0
.end method

.method public setAttention(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->attention:Z

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setN_likes(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->n_likes:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 51
    iput-wide p1, p0, Lcom/codemao/nemo/bean/RecommendUserInfo;->user_id:J

    return-void
.end method
