.class public Lcom/codemao/creativestore/bean/BlockErrorMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "BlockErrorMsg.java"


# instance fields
.field private error_entity:Ljava/lang/String;

.field private scene_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_entity()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BlockErrorMsg;->error_entity:Ljava/lang/String;

    return-object v0
.end method

.method public getScene_id()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/creativestore/bean/BlockErrorMsg;->scene_id:Ljava/lang/String;

    return-object v0
.end method

.method public setError_entity(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BlockErrorMsg;->error_entity:Ljava/lang/String;

    return-void
.end method

.method public setScene_id(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BlockErrorMsg;->scene_id:Ljava/lang/String;

    return-void
.end method
