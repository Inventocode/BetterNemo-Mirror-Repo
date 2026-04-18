.class public final synthetic Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;

    invoke-static {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;->$r8$lambda$wVVf9Zt2uJt7y1EpOt8i6somt1g(Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
