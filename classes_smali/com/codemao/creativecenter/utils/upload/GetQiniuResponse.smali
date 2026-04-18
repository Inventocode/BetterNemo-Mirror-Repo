.class public Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;
.super Ljava/lang/Object;
.source "GetQiniuResponse.java"


# instance fields
.field private bucket_url:Ljava/lang/String;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucket_url()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->bucket_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->tokens:Ljava/util/List;

    return-object v0
.end method
