.class public final Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;
.super Ljava/lang/Object;
.source "DiscoverData.kt"


# instance fields
.field private final characteristicId:Ljava/lang/String;

.field private final enable:Ljava/lang/Boolean;

.field private final peripheralId:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;

.field private final throttleMilliseconds:Ljava/lang/Long;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    .line 28
    iput-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;
    .registers 15

    new-instance v7, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public final getCharacteristicId()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnable()Ljava/lang/Boolean;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPeripheralId()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getThrottle()J
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public final getThrottleMilliseconds()Ljava/lang/Long;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    if-nez v2, :cond_46

    goto :goto_4a

    :cond_46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationsData(peripheralId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->peripheralId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", characteristicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->characteristicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->enable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throttleMilliseconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->throttleMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
