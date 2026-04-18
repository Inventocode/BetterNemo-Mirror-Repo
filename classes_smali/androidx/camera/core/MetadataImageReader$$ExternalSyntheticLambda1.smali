.class public final synthetic Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/MetadataImageReader;

.field public final synthetic f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/MetadataImageReader;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/MetadataImageReader;

    iput-object p2, p0, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/MetadataImageReader;

    iget-object v1, p0, Landroidx/camera/core/MetadataImageReader$$ExternalSyntheticLambda1;->f$1:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    invoke-static {v0, v1}, Landroidx/camera/core/MetadataImageReader;->$r8$lambda$C7g90z7hwLV6QN-8XBXSjZSrz20(Landroidx/camera/core/MetadataImageReader;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    return-void
.end method
