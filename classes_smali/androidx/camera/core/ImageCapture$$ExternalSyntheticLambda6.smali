.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 5

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Landroidx/camera/core/ImageCapture;->$r8$lambda$BqJgs3Aq5x0Z6r8cGA8dgqI2TQ0(Landroidx/camera/core/ImageCapture;Ljava/lang/String;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
