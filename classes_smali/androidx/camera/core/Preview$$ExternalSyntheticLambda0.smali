.class public final synthetic Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/Preview;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/camera/core/impl/PreviewConfig;

.field public final synthetic f$3:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/Preview;Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$2:Landroidx/camera/core/impl/PreviewConfig;

    iput-object p4, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$3:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 9

    iget-object v0, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/Preview;

    iget-object v1, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$2:Landroidx/camera/core/impl/PreviewConfig;

    iget-object v3, p0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->f$3:Landroid/util/Size;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/camera/core/Preview;->$r8$lambda$5e_0c4TClsYblcOW0lB8hfnKdcI(Landroidx/camera/core/Preview;Ljava/lang/String;Landroidx/camera/core/impl/PreviewConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
