.class public Lcom/codemao/nemo/bean/CommonErrorM;
.super Ljava/lang/Object;
.source "CommonErrorM.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private d:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/codemao/nemo/bean/CommonErrorM;->d:I

    .line 13
    iput-object p2, p0, Lcom/codemao/nemo/bean/CommonErrorM;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getD()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/codemao/nemo/bean/CommonErrorM;->d:I

    return v0
.end method

.method public getP()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/CommonErrorM;->p:Ljava/lang/String;

    return-object v0
.end method

.method public setD(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/nemo/bean/CommonErrorM;->d:I

    return-void
.end method

.method public setP(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/CommonErrorM;->p:Ljava/lang/String;

    return-void
.end method
