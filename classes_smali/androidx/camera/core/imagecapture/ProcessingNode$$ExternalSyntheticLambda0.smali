.class public final synthetic Landroidx/camera/core/imagecapture/ProcessingNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/ProcessingNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingNode;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/ProcessingNode$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/imagecapture/ProcessingNode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/imagecapture/ProcessingNode;

    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    invoke-static {v0, p1}, Landroidx/camera/core/imagecapture/ProcessingNode;->$r8$lambda$1HOdwlEheY2cdpntOMpv2Sc82dQ(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;)V

    return-void
.end method
