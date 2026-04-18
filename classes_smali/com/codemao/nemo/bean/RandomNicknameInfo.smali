.class public Lcom/codemao/nemo/bean/RandomNicknameInfo;
.super Ljava/lang/Object;
.source "RandomNicknameInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/nemo/bean/RandomNicknameInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/codemao/nemo/bean/RandomNicknameInfo;->nickname:Ljava/lang/String;

    return-void
.end method
