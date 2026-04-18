.class public Lcom/polidea/rxandroidble2_codemao/LogOptions;
.super Ljava/lang/Object;
.source "LogOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;,
        Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;
    }
.end annotation


# instance fields
.field private final logLevel:Ljava/lang/Integer;

.field private final logger:Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;

.field private final macAddressLogSetting:Ljava/lang/Integer;

.field private final shouldLogAttributeValues:Ljava/lang/Boolean;

.field private final shouldLogScannedPeripherals:Ljava/lang/Boolean;

.field private final uuidLogSetting:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;)V
    .registers 7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->logLevel:Ljava/lang/Integer;

    .line 29
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->macAddressLogSetting:Ljava/lang/Integer;

    .line 30
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->uuidLogSetting:Ljava/lang/Integer;

    .line 31
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->shouldLogAttributeValues:Ljava/lang/Boolean;

    .line 32
    iput-object p5, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->shouldLogScannedPeripherals:Ljava/lang/Boolean;

    .line 33
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->logger:Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;

    return-void
.end method


# virtual methods
.method public getLogLevel()Ljava/lang/Integer;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->logLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLogger()Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->logger:Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;

    return-object v0
.end method

.method public getMacAddressLogSetting()Ljava/lang/Integer;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->macAddressLogSetting:Ljava/lang/Integer;

    return-object v0
.end method

.method public getShouldLogAttributeValues()Ljava/lang/Boolean;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->shouldLogAttributeValues:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getShouldLogScannedPeripherals()Ljava/lang/Boolean;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->shouldLogScannedPeripherals:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUuidLogSetting()Ljava/lang/Integer;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->uuidLogSetting:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogOptions{logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->logLevel:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", macAddressLogSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->macAddressLogSetting:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuidLogSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->uuidLogSetting:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldLogAttributeValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->shouldLogAttributeValues:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldLogScannedPeripherals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->shouldLogScannedPeripherals:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions;->logger:Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
