.class public Lcom/codemao/nemo/bean/CopyVariableMsg;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "CopyVariableMsg.java"


# instance fields
.field private new_actor_id:Ljava/lang/String;

.field private original_actor_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/nemo/bean/CopyVariableMsg;->original_actor_id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codemao/nemo/bean/CopyVariableMsg;->new_actor_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNew_actor_id()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/CopyVariableMsg;->new_actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_actor_id()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/CopyVariableMsg;->original_actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public setNew_actor_id(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/nemo/bean/CopyVariableMsg;->new_actor_id:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_actor_id(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/bean/CopyVariableMsg;->original_actor_id:Ljava/lang/String;

    return-void
.end method
