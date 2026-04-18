.class public final Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;
.super Ljava/lang/Object;
.source "FileUploadAgentData.kt"


# instance fields
.field private final dataUrl:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final availableDesc()Ljava/lang/String;
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_15

    const-string v0, "token空"

    return-object v0

    .line 26
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_20

    goto :goto_22

    :cond_20
    const/4 v0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v0, 0x1

    :goto_23
    if-eqz v0, :cond_28

    const-string v0, "key空"

    return-object v0

    .line 29
    :cond_28
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_43

    :cond_42
    const/4 v1, 0x1

    :cond_43
    if-eqz v1, :cond_46

    goto :goto_49

    :cond_46
    const-string v0, ""

    return-object v0

    :cond_49
    :goto_49
    const-string v0, "数据空"

    return-object v0
.end method

.method public final avaliable()Z
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_13

    return v2

    .line 16
    :cond_13
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz v0, :cond_24

    return v2

    .line 17
    :cond_24
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    :goto_32
    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, 0x1

    :goto_42
    if-eqz v0, :cond_45

    return v2

    :cond_45
    return v1
.end method

.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;
    .registers 6

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getDataUrl()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "base64文件"

    return-object v0

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "文本内容"

    return-object v0

    :cond_e
    const-string v0, "unknown"

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public final toCdnToken()Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;
    .registers 12

    .line 36
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTConstUploadFile;->getTestAli()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "asdfasdf"

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    :goto_d
    move-object v6, v0

    .line 37
    new-instance v7, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 41
    new-instance v0, Lcom/codemao/toolssdk/model/http/CndUploadToken;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/model/http/CndUploadToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileUploadAgentRequest(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->dataUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
