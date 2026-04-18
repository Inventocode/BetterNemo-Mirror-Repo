.class public final Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;
.super Ljava/lang/Object;
.source "IResult.kt"


# instance fields
.field private final localName:Ljava/lang/String;

.field private final peripheralId:Ljava/lang/String;

.field private final rssi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const-string v0, "peripheralId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    iput p2, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    iput-object p3, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->copy(Ljava/lang/String;ILjava/lang/String;)Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;)Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;
    .registers 5

    const-string v0, "peripheralId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_25

    instance-of v0, p1, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;

    if-eqz v0, :cond_23

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    iget v1, p1, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method public final getLocalName()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeripheralId()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRssi()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeripheralReturnData(peripheralId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->peripheralId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", localName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
