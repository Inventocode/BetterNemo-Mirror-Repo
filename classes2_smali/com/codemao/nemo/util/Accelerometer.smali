.class public Lcom/codemao/nemo/util/Accelerometer;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private interval:I

.field private lastReading:D

.field private mHandler:Lcom/giu/xzz/utils/HandlerUtil;

.field private final sensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/codemao/nemo/util/Accelerometer;->lastReading:D

    const-string v0, "sensor"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/codemao/nemo/util/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/util/Accelerometer;->sensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string p1, "x"

    .line 50
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "y"

    .line 51
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "z"

    .line 52
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 53
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/util/Accelerometer;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    if-eqz v0, :cond_49

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_49

    .line 55
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x3

    .line 56
    iput p2, p1, Landroid/os/Message;->what:I

    .line 57
    iget-object p2, p0, Lcom/codemao/nemo/util/Accelerometer;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 67
    iget-wide v2, p0, Lcom/codemao/nemo/util/Accelerometer;->lastReading:D

    sub-double v2, v0, v2

    iget v4, p0, Lcom/codemao/nemo/util/Accelerometer;->interval:I

    int-to-double v4, v4

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_57

    .line 68
    iput-wide v0, p0, Lcom/codemao/nemo/util/Accelerometer;->lastReading:D

    .line 70
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_57

    .line 74
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v5, "x"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v4, "y"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "z"

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "timestamp"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Accelerometer"

    .line 78
    invoke-direct {p0, p1, v3}, Lcom/codemao/nemo/util/Accelerometer;->sendEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_57
    return-void
.end method

.method public setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/util/Accelerometer;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method public setUpdateInterval(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/util/Accelerometer;->interval:I

    return-void
.end method

.method public startUpdates()V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/util/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/codemao/nemo/util/Accelerometer;->sensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/codemao/nemo/util/Accelerometer;->interval:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public stopUpdates()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/util/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
