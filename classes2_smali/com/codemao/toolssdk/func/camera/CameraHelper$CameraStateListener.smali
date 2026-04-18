.class public interface abstract Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;
.super Ljava/lang/Object;
.source "CameraHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/func/camera/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraStateListener"
.end annotation


# virtual methods
.method public abstract onCameraClose()V
.end method

.method public abstract onCameraError(ILjava/lang/String;)V
.end method

.method public abstract onCameraReady()V
.end method
