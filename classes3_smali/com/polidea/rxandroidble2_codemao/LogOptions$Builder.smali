.class public Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;
.super Ljava/lang/Object;
.source "LogOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/LogOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private logLevel:Ljava/lang/Integer;

.field private logger:Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;

.field private macAddressLogSetting:Ljava/lang/Integer;

.field private shouldLogAttributeValues:Ljava/lang/Boolean;

.field private shouldLogScannedPeripherals:Ljava/lang/Boolean;

.field private uuidsLogSetting:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2_codemao/LogOptions;
    .registers 9

    .line 179
    new-instance v7, Lcom/polidea/rxandroidble2_codemao/LogOptions;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->logLevel:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->macAddressLogSetting:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->uuidsLogSetting:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->shouldLogAttributeValues:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->shouldLogScannedPeripherals:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->logger:Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2_codemao/LogOptions;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/LogOptions$Logger;)V

    return-object v7
.end method

.method public setLogLevel(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->logLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMacAddressLogSetting(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->macAddressLogSetting:Ljava/lang/Integer;

    return-object p0
.end method

.method public setShouldLogAttributeValues(Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->shouldLogAttributeValues:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setUuidsLogSetting(Ljava/lang/Integer;)Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/LogOptions$Builder;->uuidsLogSetting:Ljava/lang/Integer;

    return-object p0
.end method
