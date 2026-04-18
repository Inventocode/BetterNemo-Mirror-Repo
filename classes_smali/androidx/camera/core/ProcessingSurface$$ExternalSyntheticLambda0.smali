.class public final synthetic Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ProcessingSurface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ProcessingSurface;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/ProcessingSurface;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/ProcessingSurface$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/ProcessingSurface;

    check-cast p1, Landroid/view/Surface;

    invoke-static {v0, p1}, Landroidx/camera/core/ProcessingSurface;->$r8$lambda$GmPfxlMj6O4ZbQPJ9TtTK3X0-xA(Landroidx/camera/core/ProcessingSurface;Landroid/view/Surface;)Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method
