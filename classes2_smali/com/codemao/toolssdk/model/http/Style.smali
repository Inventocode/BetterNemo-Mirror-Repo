.class public final Lcom/codemao/toolssdk/model/http/Style;
.super Ljava/lang/Object;
.source "AiImageGenerateResponse.kt"


# instance fields
.field private final order:I

.field private final style_id:I

.field private final style_name:Ljava/lang/String;

.field private final style_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/codemao/toolssdk/model/http/Style;->order:I

    .line 24
    iput p2, p0, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    .line 25
    iput-object p3, p0, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/http/Style;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/http/Style;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/http/Style;->order:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/http/Style;->copy(IILjava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/http/Style;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/Style;->order:I

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/http/Style;
    .registers 6

    new-instance v0, Lcom/codemao/toolssdk/model/http/Style;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/http/Style;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/http/Style;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/http/Style;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/Style;->order:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/Style;->order:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final getOrder()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/codemao/toolssdk/model/http/Style;->order:I

    return v0
.end method

.method public final getStyle_id()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    return v0
.end method

.method public final getStyle_name()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyle_url()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/toolssdk/model/http/Style;->order:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    if-nez v1, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Style(order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/Style;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", style_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", style_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", style_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/Style;->style_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
