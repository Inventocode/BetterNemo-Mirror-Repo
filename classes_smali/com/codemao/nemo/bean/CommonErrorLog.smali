.class public Lcom/codemao/nemo/bean/CommonErrorLog;
.super Ljava/lang/Object;
.source "CommonErrorLog.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private data:Lcom/codemao/nemo/bean/CommonErrorData;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/bean/CommonErrorData;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorLog;->data:Lcom/codemao/nemo/bean/CommonErrorData;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/codemao/nemo/bean/CommonErrorLog;->type:I

    return-void
.end method


# virtual methods
.method public getData()Lcom/codemao/nemo/bean/CommonErrorData;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorLog;->data:Lcom/codemao/nemo/bean/CommonErrorData;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/codemao/nemo/bean/CommonErrorLog;->type:I

    return v0
.end method

.method public setData(Lcom/codemao/nemo/bean/CommonErrorData;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorLog;->data:Lcom/codemao/nemo/bean/CommonErrorData;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/codemao/nemo/bean/CommonErrorLog;->type:I

    return-void
.end method
