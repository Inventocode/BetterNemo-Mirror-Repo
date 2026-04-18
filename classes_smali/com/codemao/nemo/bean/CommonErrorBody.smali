.class public Lcom/codemao/nemo/bean/CommonErrorBody;
.super Ljava/lang/Object;
.source "CommonErrorBody.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private d:Lcom/codemao/nemo/bean/CommonErrorMsg;

.field private e:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "nemo_error"

    .line 17
    iput-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->e:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/codemao/nemo/bean/CommonErrorMsg;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/nemo/bean/CommonErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->d:Lcom/codemao/nemo/bean/CommonErrorMsg;

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->i:Ljava/lang/String;

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getD()Lcom/codemao/nemo/bean/CommonErrorMsg;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->d:Lcom/codemao/nemo/bean/CommonErrorMsg;

    return-object v0
.end method

.method public getE()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getI()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getT()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->t:Ljava/lang/String;

    return-object v0
.end method

.method public setD(Lcom/codemao/nemo/bean/CommonErrorMsg;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->d:Lcom/codemao/nemo/bean/CommonErrorMsg;

    return-void
.end method

.method public setE(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->e:Ljava/lang/String;

    return-void
.end method

.method public setI(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->i:Ljava/lang/String;

    return-void
.end method

.method public setT(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorBody;->t:Ljava/lang/String;

    return-void
.end method
