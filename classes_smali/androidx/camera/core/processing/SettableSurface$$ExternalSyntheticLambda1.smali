.class public final synthetic Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/SettableSurface;

.field public final synthetic f$1:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SettableSurface;Landroid/util/Size;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/processing/SettableSurface;

    iput-object p2, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda1;->f$1:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda1;->f$0:Landroidx/camera/core/processing/SettableSurface;

    iget-object v1, p0, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda1;->f$1:Landroid/util/Size;

    invoke-static {v0, v1, p1}, Landroidx/camera/core/processing/SettableSurface;->$r8$lambda$NdB3S7il6unqK5fq6KLjGATrgRI(Landroidx/camera/core/processing/SettableSurface;Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
