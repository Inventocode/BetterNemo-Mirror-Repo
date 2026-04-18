.class public Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "SensorsDataScreenOrientationDetector.java"


# instance fields
.field private mCurrentOrientation:I

.field private mEnableState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mEnableState:Z

    return-void
.end method


# virtual methods
.method public getOrientation()Ljava/lang/String;
    .registers 4

    .line 32
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mEnableState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 35
    :cond_6
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    if-eqz v0, :cond_1c

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_f

    goto :goto_1c

    :cond_f
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_19

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_18

    goto :goto_19

    :cond_18
    return-object v1

    :cond_19
    :goto_19
    const-string v0, "landscape"

    return-object v0

    :cond_1c
    :goto_1c
    const-string v0, "portrait"

    return-object v0
.end method

.method public isEnableState()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mEnableState:Z

    return v0
.end method

.method public onOrientationChanged(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_2c

    const/16 v1, 0x13b

    if-le p1, v1, :cond_d

    goto :goto_2c

    :cond_d
    const/16 v2, 0x87

    if-le p1, v0, :cond_18

    if-ge p1, v2, :cond_18

    const/16 p1, 0x5a

    .line 61
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    goto :goto_2f

    :cond_18
    const/16 v0, 0xe1

    if-le p1, v2, :cond_23

    if-ge p1, v0, :cond_23

    const/16 p1, 0xb4

    .line 63
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    goto :goto_2f

    :cond_23
    if-le p1, v0, :cond_2f

    if-ge p1, v1, :cond_2f

    const/16 p1, 0x10e

    .line 65
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    goto :goto_2f

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setState(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mEnableState:Z

    return-void
.end method
