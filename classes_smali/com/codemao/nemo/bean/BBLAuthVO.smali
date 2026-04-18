.class public Lcom/codemao/nemo/bean/BBLAuthVO;
.super Ljava/lang/Object;
.source "BBLAuthVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Lcom/codemao/nemo/bean/AuthVO;

.field private msg:Ljava/lang/String;

.field private ret:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/codemao/nemo/bean/AuthVO;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/BBLAuthVO;->data:Lcom/codemao/nemo/bean/AuthVO;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/BBLAuthVO;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/nemo/bean/BBLAuthVO;->ret:I

    return v0
.end method

.method public setData(Lcom/codemao/nemo/bean/AuthVO;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/bean/BBLAuthVO;->data:Lcom/codemao/nemo/bean/AuthVO;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/BBLAuthVO;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRet(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/bean/BBLAuthVO;->ret:I

    return-void
.end method
