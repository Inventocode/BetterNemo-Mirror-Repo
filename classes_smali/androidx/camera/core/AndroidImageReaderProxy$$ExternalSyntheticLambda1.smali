.class public final synthetic Landroidx/camera/core/AndroidImageReaderProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/AndroidImageReaderProxy;

.field public final synthetic f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/AndroidImageReaderProxy;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/AndroidImageReaderProxy$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/AndroidImageReaderProxy;

    iput-object p2, p0, Landroidx/camera/core/AndroidImageReaderProxy$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/AndroidImageReaderProxy$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/AndroidImageReaderProxy;

    iget-object v1, p0, Landroidx/camera/core/AndroidImageReaderProxy$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-static {v0, v1}, Landroidx/camera/core/AndroidImageReaderProxy;->$r8$lambda$ydxkGVJ03P0ZMYkq3dfSV-hzi3E(Landroidx/camera/core/AndroidImageReaderProxy;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    return-void
.end method
