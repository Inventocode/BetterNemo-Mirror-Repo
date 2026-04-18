.class final Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectionComponentBuilder"
.end annotation


# instance fields
.field private autoConnect:Ljava/lang/Boolean;

.field private final clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

.field private final deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

.field private operationTimeout:Lcom/polidea/rxandroidble2_codemao/Timeout;

.field private suppressOperationChecks:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)V
    .registers 3

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    .line 202
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$1;)V
    .registers 4

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;-><init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;)V

    return-void
.end method


# virtual methods
.method public autoConnect(Z)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;
    .registers 2

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic autoConnect(Z)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent$Builder;
    .registers 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect(Z)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent;
    .registers 10

    .line 225
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lbleshadow/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 226
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lbleshadow/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 227
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout:Lcom/polidea/rxandroidble2_codemao/Timeout;

    const-class v1, Lcom/polidea/rxandroidble2_codemao/Timeout;

    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 228
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    iget-object v4, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->deviceComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->autoConnect:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout:Lcom/polidea/rxandroidble2_codemao/Timeout;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentImpl;-><init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/polidea/rxandroidble2_codemao/Timeout;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$1;)V

    return-object v0
.end method

.method public operationTimeout(Lcom/polidea/rxandroidble2_codemao/Timeout;)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;
    .registers 2

    .line 219
    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/Timeout;

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout:Lcom/polidea/rxandroidble2_codemao/Timeout;

    return-object p0
.end method

.method public bridge synthetic operationTimeout(Lcom/polidea/rxandroidble2_codemao/Timeout;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent$Builder;
    .registers 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->operationTimeout(Lcom/polidea/rxandroidble2_codemao/Timeout;)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public suppressOperationChecks(Z)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;
    .registers 2

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic suppressOperationChecks(Z)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionComponent$Builder;
    .registers 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;->suppressOperationChecks(Z)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method
