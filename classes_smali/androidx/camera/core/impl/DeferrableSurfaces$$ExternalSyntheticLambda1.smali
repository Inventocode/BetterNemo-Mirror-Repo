.class public final synthetic Landroidx/camera/core/impl/DeferrableSurfaces$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/DeferrableSurfaces$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/camera/core/impl/DeferrableSurfaces$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Landroidx/camera/core/impl/DeferrableSurfaces;->$r8$lambda$EGqAWGETFT7PhtXUvUxtyOw5gdQ(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
