.class public Lcom/codemao/nemo/bean/DynamicUserInfo;
.super Ljava/lang/Object;
.source "DynamicUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attention_times:I

.field private avatar_url:Ljava/lang/String;

.field private fans_times:I

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
.method public getAttention_times()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->attention_times:I

    return v0
.end method

.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFans_times()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->fans_times:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->user_id:J

    return-wide v0
.end method

.method public setAttention_times(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->attention_times:I

    return-void
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setFans_times(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->fans_times:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 18
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DynamicUserInfo;->user_id:J

    return-void
.end method
