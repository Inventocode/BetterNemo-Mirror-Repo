.class public final Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;
.super Ljava/lang/Object;
.source "DeviceOption.kt"


# instance fields
.field private final orientation:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;IILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->copy(I)Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    return v0
.end method

.method public final copy(I)Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;
    .registers 3

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    iget p1, p1, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getOrientation()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOption(orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
