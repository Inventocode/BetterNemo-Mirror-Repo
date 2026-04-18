.class public Landroidx/camera/core/CameraUnavailableException;
.super Ljava/lang/Exception;
.source "CameraUnavailableException.java"


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 116
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 117
    iput p1, p0, Landroidx/camera/core/CameraUnavailableException;->mReason:I

    return-void
.end method
