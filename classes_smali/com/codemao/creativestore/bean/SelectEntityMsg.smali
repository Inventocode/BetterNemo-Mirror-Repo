.class public Lcom/codemao/creativestore/bean/SelectEntityMsg;
.super Ljava/lang/Object;
.source "SelectEntityMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actor_id:Ljava/lang/String;

.field private scene_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SelectEntityMsg;->scene_id:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/codemao/creativestore/bean/SelectEntityMsg;->actor_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActor_id()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SelectEntityMsg;->actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getScene_id()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SelectEntityMsg;->scene_id:Ljava/lang/String;

    return-object v0
.end method

.method public setActor_id(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SelectEntityMsg;->actor_id:Ljava/lang/String;

    return-void
.end method

.method public setScene_id(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SelectEntityMsg;->scene_id:Ljava/lang/String;

    return-void
.end method
