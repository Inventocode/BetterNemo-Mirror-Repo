.class public Lcom/codemao/nemo/bean/BucketVO;
.super Ljava/lang/Object;
.source "BucketVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucket_url:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BucketData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucket_url()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/BucketVO;->bucket_url:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BucketData;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/BucketVO;->data:Ljava/util/List;

    return-object v0
.end method

.method public setBucket_url(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/BucketVO;->bucket_url:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BucketData;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/BucketVO;->data:Ljava/util/List;

    return-void
.end method
