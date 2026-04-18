.class public final Lcom/codemao/toolssdk/model/dsbridge/FileData;
.super Ljava/lang/Object;
.source "FileResult.kt"


# instance fields
.field private height:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    .line 17
    iput p3, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/FileData;Ljava/lang/String;IIILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/FileData;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/FileData;->copy(Ljava/lang/String;II)Lcom/codemao/toolssdk/model/dsbridge/FileData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    return v0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/codemao/toolssdk/model/dsbridge/FileData;
    .registers 5

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/FileData;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/FileData;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/FileData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/FileData;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    iget p1, p1, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    if-eq v1, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getHeight()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setHeight(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    .line 13
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileData(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/FileData;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
