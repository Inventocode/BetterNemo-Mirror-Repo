.class public final Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;
.super Ljava/lang/Object;
.source "AiImageGenerateResponse.kt"


# instance fields
.field private final pic_url:Ljava/lang/String;

.field private final style_id:I

.field private final template_id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    .line 32
    iput p3, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;Ljava/lang/String;IIILjava/lang/Object;)Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->copy(Ljava/lang/String;II)Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    return v0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;
    .registers 5

    new-instance v0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    iget p1, p1, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    if-eq v1, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getPic_url()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyle_id()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    return v0
.end method

.method public final getTemplate_id()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MatchPaintingImgRequest(pic_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->pic_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", style_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->style_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", template_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/MatchPaintingImgRequest;->template_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
