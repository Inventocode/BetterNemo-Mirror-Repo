.class public final synthetic Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageSaver;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageSaver;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/core/ImageSaver;

    iput-object p2, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;->f$0:Landroidx/camera/core/ImageSaver;

    iget-object v1, p0, Landroidx/camera/core/ImageSaver$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Landroidx/camera/core/ImageSaver;->$r8$lambda$B3iHDvDM2UNgfd15W3q-MlcpXJc(Landroidx/camera/core/ImageSaver;Ljava/io/File;)V

    return-void
.end method
