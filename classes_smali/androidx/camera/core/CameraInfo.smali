.class public interface abstract Landroidx/camera/core/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"


# virtual methods
.method public abstract getCameraState()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/CameraState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImplementationType()Ljava/lang/String;
.end method

.method public abstract getSensorRotationDegrees(I)I
.end method
