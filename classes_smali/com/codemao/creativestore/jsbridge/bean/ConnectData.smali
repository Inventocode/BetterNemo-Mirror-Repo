.class public final Lcom/codemao/creativestore/jsbridge/bean/ConnectData;
.super Ljava/lang/Object;
.source "IResult.kt"


# instance fields
.field private final peripheralId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "peripheralId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/creativestore/jsbridge/bean/ConnectData;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->copy(Ljava/lang/String;)Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/codemao/creativestore/jsbridge/bean/ConnectData;
    .registers 3

    const-string v0, "peripheralId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    invoke-direct {v0, p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public final getPeripheralId()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectData(peripheralId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->peripheralId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
