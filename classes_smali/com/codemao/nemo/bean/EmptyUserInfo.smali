.class public Lcom/codemao/nemo/bean/EmptyUserInfo;
.super Ljava/lang/Object;
.source "EmptyUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private is_attention:Z

.field private nickname:Ljava/lang/String;

.field private total_likes:I

.field private total_works:I

.field private user_id:J


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

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_likes()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->total_likes:I

    return v0
.end method

.method public getTotal_works()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->total_works:I

    return v0
.end method

.method public getUser_id()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->user_id:J

    return-wide v0
.end method

.method public isIs_attention()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->is_attention:Z

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setIs_attention(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->is_attention:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setTotal_likes(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->total_likes:I

    return-void
.end method

.method public setTotal_works(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->total_works:I

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/codemao/nemo/bean/EmptyUserInfo;->user_id:J

    return-void
.end method
