.class public Lcom/codemao/nemo/bean/ImageCheckResult;
.super Ljava/lang/Object;
.source "ImageCheckResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private response:Ljava/lang/Object;

.field private result:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/Object;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/ImageCheckResult;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/ImageCheckResult;->result:Z

    return v0
.end method

.method public isResult()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/ImageCheckResult;->result:Z

    return v0
.end method

.method public setResponse(Ljava/lang/Object;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/bean/ImageCheckResult;->response:Ljava/lang/Object;

    return-void
.end method

.method public setResult(Z)V
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/ImageCheckResult;->result:Z

    return-void
.end method
