.class public final synthetic Landroidx/camera/core/imagecapture/RequestWithCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/RequestWithCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/RequestWithCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/imagecapture/RequestWithCallback;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-static {v0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->$r8$lambda$93Da1zWfySLcgf8xbEiz3tAkZpg(Landroidx/camera/core/imagecapture/RequestWithCallback;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
