.class public final Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;
.super Ljava/lang/Object;
.source "CMToolsAccelerometerManager.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;
    }
.end annotation


# instance fields
.field private final accelerometer:Landroid/hardware/Sensor;

.field private final context:Landroid/content/Context;

.field private final geomagnetic:[F

.field private final gravity:[F

.field private final magnetometer:Landroid/hardware/Sensor;

.field private final orientation:[F

.field private final rotationMatrix:[F

.field private sensorChangedListener:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->context:Landroid/content/Context;

    const-string v0, "sensor"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->accelerometer:Landroid/hardware/Sensor;

    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->magnetometer:Landroid/hardware/Sensor;

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 19
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->gravity:[F

    new-array v0, p1, [F

    .line 20
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->geomagnetic:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 21
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->rotationMatrix:[F

    new-array p1, p1, [F

    .line 22
    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->orientation:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    const-string p2, "sensor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_17

    .line 43
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->gravity:[F

    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    :cond_17
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_27

    .line 48
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->geomagnetic:[F

    invoke-static {v0, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    :cond_27
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->rotationMatrix:[F

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->gravity:[F

    iget-object v6, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->geomagnetic:[F

    invoke-static {v0, v1, v5, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    .line 54
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->rotationMatrix:[F

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->orientation:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 56
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->orientation:[F

    aget p1, p1, v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float p1, v5

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->orientation:[F

    aget v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 58
    iget-object v2, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->orientation:[F

    aget v2, v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_62

    const/16 v1, 0x168

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 68
    :cond_62
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorChangedListener:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;

    if-eqz v1, :cond_9b

    invoke-interface {v1, v2, v0, p1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;->onSensorChanged(FFF)V

    goto :goto_9b

    :cond_6a
    const v0, 0x4112c9fb

    .line 71
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, p1, v2

    neg-float v2, v2

    mul-float v2, v2, v0

    .line 73
    aget v4, p1, v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_80

    .line 74
    aget p1, p1, v3

    neg-float p1, p1

    mul-float p1, p1, v0

    goto :goto_94

    .line 76
    :cond_80
    aget v4, p1, v3

    cmpg-float v4, v4, v1

    if-gez v4, :cond_8c

    const/16 v4, 0xb4

    int-to-float v4, v4

    .line 77
    aget p1, p1, v3

    goto :goto_91

    :cond_8c
    const/16 v4, -0xb4

    int-to-float v4, v4

    .line 79
    aget p1, p1, v3

    :goto_91
    mul-float p1, p1, v0

    add-float/2addr p1, v4

    .line 82
    :goto_94
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorChangedListener:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;

    if-eqz v0, :cond_9b

    invoke-interface {v0, p1, v2, v1}, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;->onSensorChanged(FFF)V

    :cond_9b
    :goto_9b
    return-void
.end method

.method public final setSensorChangedListener(Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorChangedListener:Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager$SensorChangedListener;

    return-void
.end method

.method public final startSensor()V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 32
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->accelerometer:Landroid/hardware/Sensor;

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    .line 33
    iget-object v2, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 35
    :cond_f
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->magnetometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_18

    .line 36
    iget-object v2, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_18
    return-void
.end method

.method public final stopSensor()V
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsAccelerometerManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
