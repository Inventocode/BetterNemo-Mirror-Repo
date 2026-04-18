.class final Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceComponentBuilder"
.end annotation


# instance fields
.field private final clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

.field private macAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)V
    .registers 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$1;)V
    .registers 3

    .line 166
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;-><init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;->macAddress:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lbleshadow/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 184
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;->clientComponentImpl:Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;->macAddress:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentImpl;-><init>(Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$ClientComponentImpl;Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$1;)V

    return-object v0
.end method

.method public macAddress(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;
    .registers 2

    .line 177
    invoke-static {p1}, Lbleshadow/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;->macAddress:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic macAddress(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent$Builder;
    .registers 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;->macAddress(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/DaggerClientComponent$DeviceComponentBuilder;

    move-result-object p1

    return-object p1
.end method
