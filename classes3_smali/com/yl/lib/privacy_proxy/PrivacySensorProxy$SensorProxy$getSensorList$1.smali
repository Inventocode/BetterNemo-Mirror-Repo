.class final Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacySensorProxy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy;->getSensorList(Landroid/hardware/SensorManager;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Landroid/hardware/Sensor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $sensorManager:Landroid/hardware/SensorManager;

.field final synthetic $type:I


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;->$sensorManager:Landroid/hardware/SensorManager;

    iput p2, p0, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;->$type:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;->$sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/yl/lib/privacy_proxy/PrivacySensorProxy$SensorProxy$getSensorList$1;->$type:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0
.end method
