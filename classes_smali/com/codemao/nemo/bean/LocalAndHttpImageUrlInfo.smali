.class public Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;
.super Ljava/lang/Object;
.source "LocalAndHttpImageUrlInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adapterIndex:I

.field private httpUrl:Ljava/lang/String;

.field public isSelected:Z

.field private localResId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->localResId:I

    .line 15
    iput-object p2, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->httpUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;
    .registers 4

    .line 35
    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    iget v1, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->localResId:I

    iget-object v2, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->httpUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->adapterIndex:I

    iput v1, v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->adapterIndex:I

    .line 37
    iget-boolean v1, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    iput-boolean v1, v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    return-object v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->httpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalResId()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->localResId:I

    return v0
.end method

.method public setHttpUrl(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->httpUrl:Ljava/lang/String;

    return-void
.end method

.method public setLocalResId(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->localResId:I

    return-void
.end method
