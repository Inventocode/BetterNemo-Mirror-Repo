.class public Lcom/codemao/nemo/bean/BaseVO;
.super Ljava/lang/Object;
.source "BaseVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/bean/BaseVO;->response:Ljava/lang/String;

    return-object v0
.end method

.method public setResponse(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/bean/BaseVO;->response:Ljava/lang/String;

    return-void
.end method
