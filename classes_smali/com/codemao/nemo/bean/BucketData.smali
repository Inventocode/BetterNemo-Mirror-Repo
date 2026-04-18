.class public Lcom/codemao/nemo/bean/BucketData;
.super Ljava/lang/Object;
.source "BucketData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filename:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/BucketData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/BucketData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/BucketData;->filename:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/BucketData;->token:Ljava/lang/String;

    return-void
.end method
