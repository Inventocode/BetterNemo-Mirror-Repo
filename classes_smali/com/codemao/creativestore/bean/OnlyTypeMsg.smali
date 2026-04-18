.class public Lcom/codemao/creativestore/bean/OnlyTypeMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "OnlyTypeMsg.java"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/creativestore/bean/OnlyTypeMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/OnlyTypeMsg;->type:Ljava/lang/String;

    return-void
.end method
