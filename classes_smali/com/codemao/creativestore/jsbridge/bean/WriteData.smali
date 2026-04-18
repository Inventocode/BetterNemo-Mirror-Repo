.class public final Lcom/codemao/creativestore/jsbridge/bean/WriteData;
.super Ljava/lang/Object;
.source "IResult.kt"


# instance fields
.field private final characteristicId:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final peripheralId:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;

.field private final withResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "peripheralId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "characteristicId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/codemao/creativestore/jsbridge/bean/WriteData;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-boolean p5, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    :cond_21
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/creativestore/jsbridge/bean/WriteData;
    .registers 13

    const-string v0, "peripheralId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "characteristicId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_39

    instance-of v0, p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    if-eqz v0, :cond_37

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    iget-boolean p1, p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    if-ne v0, p1, :cond_37

    goto :goto_39

    :cond_37
    const/4 p1, 0x0

    return p1

    :cond_39
    :goto_39
    const/4 p1, 0x1

    return p1
.end method

.method public final getCharacteristicId()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeripheralId()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWithResponse()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    :cond_37
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WriteData(peripheralId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->peripheralId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", characteristicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->characteristicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", withResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->withResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
