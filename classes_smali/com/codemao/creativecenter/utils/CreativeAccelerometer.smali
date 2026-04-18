.class public Lcom/codemao/creativecenter/utils/CreativeAccelerometer;
.super Ljava/lang/Object;
.source "CreativeAccelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private volatile isShakeOpen:Z

.field private volatile isTiltOpen:Z

.field private lastQingxieReading:D

.field private lastShakeReading:D

.field private mHandler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

.field private qingxieInterval:I

.field private ratio:F

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private shakeInterval:I

.field private final shakeSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->lastShakeReading:D

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->lastQingxieReading:D

    const/16 v0, 0x190

    .line 22
    iput v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeInterval:I

    .line 23
    iput v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->qingxieInterval:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    .line 25
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    const v0, 0x4112c9fb

    .line 27
    iput v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->ratio:F

    const-string v0, "sensor"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private sendShakeEvent(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "x"

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "y"

    .line 100
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "z"

    .line 101
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 102
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 103
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->mHandler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    if-eqz p1, :cond_49

    const-wide/high16 v2, 0x4034000000000000L  # 20.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_49

    .line 104
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    .line 105
    iput v0, p1, Landroid/os/Message;->what:I

    .line 106
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->mHandler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    return-void
.end method

.method private sendTiltEvent(Lcom/codemao/creativestore/bean/TiltMsg;)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->mHandler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    if-eqz v0, :cond_12

    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 115
    iput v1, v0, Landroid/os/Message;->what:I

    .line 116
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->mHandler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 126
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 127
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 129
    :try_start_c
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a0

    .line 131
    iget-boolean v2, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_59

    .line 132
    iget-wide v7, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->lastShakeReading:D

    sub-double v7, v0, v7

    iget v2, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeInterval:I

    int-to-double v9, v2

    cmpl-double v2, v7, v9

    if-ltz v2, :cond_59

    .line 133
    iput-wide v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->lastShakeReading:D

    const-string v2, "x"

    .line 134
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "y"

    .line 135
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "z"

    .line 136
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timestamp"

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-direct {p0, v3}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sendShakeEvent(Ljava/util/HashMap;)V

    .line 142
    :cond_59
    iget-boolean v2, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    if-eqz v2, :cond_a0

    .line 143
    iget-wide v2, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->lastQingxieReading:D

    sub-double v2, v0, v2

    iget v7, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->qingxieInterval:I

    int-to-double v7, v7

    cmpl-double v9, v2, v7

    if-ltz v9, :cond_a0

    .line 144
    iput-wide v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->lastQingxieReading:D

    .line 147
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v6

    iget v1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->ratio:F

    mul-float v0, v0, v1

    .line 148
    aget v2, p1, v5

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7f

    .line 149
    aget p1, p1, v4

    neg-float p1, p1

    mul-float p1, p1, v1

    goto :goto_91

    .line 151
    :cond_7f
    aget v2, p1, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8a

    const/high16 v2, 0x43340000  # 180.0f

    .line 152
    aget p1, p1, v4

    goto :goto_8e

    :cond_8a
    const/high16 v2, -0x3ccc0000  # -180.0f

    .line 154
    aget p1, p1, v4

    :goto_8e
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    .line 157
    :goto_91
    new-instance v8, Lcom/codemao/creativestore/bean/TiltMsg;

    const-wide/16 v2, 0x0

    neg-float p1, p1

    float-to-double v4, p1

    neg-float p1, v0

    float-to-double v6, p1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/codemao/creativestore/bean/TiltMsg;-><init>(DDD)V

    .line 158
    invoke-direct {p0, v8}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sendTiltEvent(Lcom/codemao/creativestore/bean/TiltMsg;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_a0} :catch_a0

    :catch_a0
    :cond_a0
    return-void
.end method

.method public setHandler(Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->mHandler:Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;

    return-void
.end method

.method public setQingxieInterval(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->qingxieInterval:I

    return-void
.end method

.method public setShakeInterval(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeInterval:I

    return-void
.end method

.method public startShakeUpdates()V
    .registers 5

    .line 51
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    if-eqz v0, :cond_a

    goto :goto_1e

    .line 55
    :cond_a
    iput-boolean v1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    .line 56
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeInterval:I

    iget v3, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->qingxieInterval:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    .line 52
    :cond_1e
    :goto_1e
    iput-boolean v1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    return-void
.end method

.method public startTiltUpdates()V
    .registers 5

    .line 79
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    if-eqz v0, :cond_a

    goto :goto_1e

    .line 83
    :cond_a
    iput-boolean v1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    .line 84
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeInterval:I

    iget v3, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->qingxieInterval:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    .line 80
    :cond_1e
    :goto_1e
    iput-boolean v1, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    return-void
.end method

.method public stopSensor()V
    .registers 2

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    .line 71
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    const/16 v0, 0x190

    .line 72
    iput v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeInterval:I

    .line 73
    iput v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->qingxieInterval:I

    .line 74
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->setHandler(Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;)V

    return-void
.end method

.method public stopShakeUpdates()V
    .registers 2

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    const/16 v0, 0x190

    .line 61
    iput v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->shakeInterval:I

    .line 62
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    if-nez v0, :cond_14

    .line 63
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->setHandler(Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;)V

    :cond_14
    return-void
.end method

.method public stopTiltUpdates()V
    .registers 2

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isTiltOpen:Z

    const/16 v0, 0x190

    .line 89
    iput v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->qingxieInterval:I

    .line 90
    iget-boolean v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->isShakeOpen:Z

    if-nez v0, :cond_14

    .line 91
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeAccelerometer;->setHandler(Lcom/codemao/creativecenter/utils/CreativeHandlerUtil;)V

    :cond_14
    return-void
.end method
