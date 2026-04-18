.class public Lcom/codemao/creativestore/bean/CopyVariableMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "CopyVariableMsg.java"


# instance fields
.field private new_actor_id:Ljava/lang/String;

.field private original_actor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CopyVariableMsg;->original_actor_id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CopyVariableMsg;->new_actor_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNew_actor_id()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CopyVariableMsg;->new_actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_actor_id()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CopyVariableMsg;->original_actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public setNew_actor_id(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CopyVariableMsg;->new_actor_id:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_actor_id(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CopyVariableMsg;->original_actor_id:Ljava/lang/String;

    return-void
.end method
