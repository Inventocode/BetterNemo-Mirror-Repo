.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda9;->f$0:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda9;->f$0:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-static {v0}, Landroidx/camera/core/ImageCapture;->$r8$lambda$lmzQY0TNrLPUP9Vd_Iw9x2otYJI(Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method
