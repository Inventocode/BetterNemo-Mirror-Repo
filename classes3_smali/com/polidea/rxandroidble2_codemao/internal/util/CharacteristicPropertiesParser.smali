.class public Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;
.super Ljava/lang/Object;
.source "CharacteristicPropertiesParser.java"


# instance fields
.field private final possibleProperties:[I

.field private final propertyBroadcast:I

.field private final propertyIndicate:I

.field private final propertyNotify:I

.field private final propertyRead:I

.field private final propertySignedWrite:I

.field private final propertyWrite:I

.field private final propertyWriteNoResponse:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .registers 8

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyBroadcast:I

    .line 28
    iput p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyRead:I

    .line 29
    iput p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyWriteNoResponse:I

    .line 30
    iput p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyWrite:I

    .line 31
    iput p5, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyNotify:I

    .line 32
    iput p6, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyIndicate:I

    .line 33
    iput p7, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertySignedWrite:I

    .line 34
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->getPossibleProperties()[I

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->possibleProperties:[I

    return-void
.end method

.method private getPossibleProperties()[I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 53
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyBroadcast:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 54
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyRead:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 55
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyWriteNoResponse:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 56
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyWrite:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 57
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyNotify:I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 58
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyIndicate:I

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 59
    iget v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertySignedWrite:I

    const/4 v2, 0x6

    aput v1, v0, v2

    return-object v0
.end method

.method private static propertiesIntContains(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private propertyToString(I)Ljava/lang/String;
    .registers 5

    .line 70
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyRead:I

    if-ne p1, v0, :cond_7

    const-string p1, "READ"

    return-object p1

    .line 72
    :cond_7
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyWrite:I

    if-ne p1, v0, :cond_e

    const-string p1, "WRITE"

    return-object p1

    .line 74
    :cond_e
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyWriteNoResponse:I

    if-ne p1, v0, :cond_15

    const-string p1, "WRITE_NO_RESPONSE"

    return-object p1

    .line 76
    :cond_15
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertySignedWrite:I

    if-ne p1, v0, :cond_1c

    const-string p1, "SIGNED_WRITE"

    return-object p1

    .line 78
    :cond_1c
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyIndicate:I

    if-ne p1, v0, :cond_23

    const-string p1, "INDICATE"

    return-object p1

    .line 80
    :cond_23
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyBroadcast:I

    if-ne p1, v0, :cond_2a

    const-string p1, "BROADCAST"

    return-object p1

    .line 82
    :cond_2a
    iget v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyNotify:I

    if-ne p1, v0, :cond_31

    const-string p1, "NOTIFY"

    return-object p1

    :cond_31
    if-nez p1, :cond_36

    const-string p1, ""

    return-object p1

    :cond_36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unknown property specified (%d)"

    invoke-static {v1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> check android.bluetooth.BluetoothGattCharacteristic)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public propertiesIntToString(I)Ljava/lang/String;
    .registers 8

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->possibleProperties:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_27

    aget v4, v1, v3

    .line 42
    invoke-static {p1, v4}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertiesIntContains(II)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 43
    invoke-direct {p0, v4}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;->propertyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_27
    const-string p1, "]"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
