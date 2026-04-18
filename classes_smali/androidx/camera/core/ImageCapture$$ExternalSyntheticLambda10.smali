.class public final synthetic Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageCapture;

.field public final synthetic f$1:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;->f$0:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;->f$1:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;->f$0:Landroidx/camera/core/ImageCapture;

    iget-object v1, p0, Landroidx/camera/core/ImageCapture$$ExternalSyntheticLambda10;->f$1:Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    invoke-static {v0, v1}, Landroidx/camera/core/ImageCapture;->$r8$lambda$Dobvxml5F1eyPLeboyCQYkPDz_o(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method
