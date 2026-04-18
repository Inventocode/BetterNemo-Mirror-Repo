.class public Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;
.super Ljava/lang/Object;
.source "CreateOptionActorChangeOrder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actorId:Ljava/lang/String;

.field private from:I

.field private to:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->actorId:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->from:I

    .line 14
    iput p3, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->to:I

    return-void
.end method


# virtual methods
.method public getActorId()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->actorId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->from:I

    return v0
.end method

.method public getTo()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->to:I

    return v0
.end method

.method public setActorId(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->actorId:Ljava/lang/String;

    return-void
.end method

.method public setFrom(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->from:I

    return-void
.end method

.method public setTo(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->to:I

    return-void
.end method
