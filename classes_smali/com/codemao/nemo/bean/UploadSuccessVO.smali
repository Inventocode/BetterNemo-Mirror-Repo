.class public Lcom/codemao/nemo/bean/UploadSuccessVO;
.super Ljava/lang/Object;
.source "UploadSuccessVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hash:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->type:I

    return v0
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->hash:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/nemo/bean/UploadSuccessVO;->type:I

    return-void
.end method
