.class public Lcom/codemao/nemo/bean/UserDynamicInfo;
.super Ljava/lang/Object;
.source "UserDynamicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ATTENTION_USER:Ljava/lang/String; = "ATTENTION_USER"

.field public static final COLLECTION_WORK:Ljava/lang/String; = "COLLECTION_WORK"

.field public static final COMMENT_WORK:Ljava/lang/String; = "COMMENT_WORK"

.field public static final LIKE_WORK:Ljava/lang/String; = "LIKE_WORK"

.field public static final PUBLISH_WORK:Ljava/lang/String; = "PUBLISH_WORK"

.field public static final RE_CREATE_WORK:Ljava/lang/String; = "RE_CREATE_WORK"

.field public static final UPDATE_WORK:Ljava/lang/String; = "UPDATE_WORK"


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private created_at:J

.field private details_json:Ljava/lang/String;

.field private dynamic_type:Ljava/lang/String;

.field private id:J

.field private nickname:Ljava/lang/String;

.field private updated_at:J

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

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->created_at:J

    return-wide v0
.end method

.method public getDetails_json()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->details_json:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamic_type()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->dynamic_type:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->id:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->updated_at:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->user_id:J

    return-wide v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(J)V
    .registers 3

    .line 36
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->created_at:J

    return-void
.end method

.method public setDetails_json(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->details_json:Ljava/lang/String;

    return-void
.end method

.method public setDynamic_type(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->dynamic_type:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 60
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->id:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 76
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->updated_at:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 84
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserDynamicInfo;->user_id:J

    return-void
.end method
