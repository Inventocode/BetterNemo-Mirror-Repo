.class public final Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;
.super Ljava/lang/Object;
.source "CdnUploadTokenResponse.kt"


# instance fields
.field private final bucket:Ljava/lang/String;

.field private final bucket_url:Ljava/lang/String;

.field private final internal_upload_url:Ljava/lang/String;

.field private qiniuKey:Ljava/lang/String;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
            ">;"
        }
    .end annotation
.end field

.field private final upload_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    .line 8
    iput-object p5, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;"
        }
    .end annotation

    new-instance v6, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getBucket()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public final getBucket_url()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getInternal_upload_url()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getQiniuKey()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->qiniuKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokens()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public final getUpload_url()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    if-nez v2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3d
    add-int/2addr v0, v1

    return v0
.end method

.method public final setQiniuKey(Ljava/lang/String;)V
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->qiniuKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdnUploadTokenResponse(bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bucket_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->bucket_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internal_upload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->internal_upload_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->tokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->upload_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
