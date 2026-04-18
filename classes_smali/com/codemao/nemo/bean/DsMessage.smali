.class public Lcom/codemao/nemo/bean/DsMessage;
.super Ljava/lang/Object;
.source "DsMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private payload:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/nemo/bean/DsMessage;->type:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/codemao/nemo/bean/DsMessage;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/DsMessage;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/DsMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setPayload(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/bean/DsMessage;->payload:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/nemo/bean/DsMessage;->type:Ljava/lang/String;

    return-void
.end method
