.class Lcom/smarx/notchlib/NotchScreenManager$1;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"

# interfaces
.implements Lcom/smarx/notchlib/INotchScreen$NotchSizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smarx/notchlib/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$notchScreenCallback:Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;

.field final synthetic val$notchScreenInfo:Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;


# direct methods
.method constructor <init>(Lcom/smarx/notchlib/NotchScreenManager;Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;)V
    .registers 4

    .line 36
    iput-object p2, p0, Lcom/smarx/notchlib/NotchScreenManager$1;->val$notchScreenInfo:Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;

    iput-object p3, p0, Lcom/smarx/notchlib/NotchScreenManager$1;->val$notchScreenCallback:Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 40
    iget-object v0, p0, Lcom/smarx/notchlib/NotchScreenManager$1;->val$notchScreenInfo:Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;->hasNotch:Z

    .line 41
    iput-object p1, v0, Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    .line 43
    :cond_f
    iget-object p1, p0, Lcom/smarx/notchlib/NotchScreenManager$1;->val$notchScreenCallback:Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;

    iget-object v0, p0, Lcom/smarx/notchlib/NotchScreenManager$1;->val$notchScreenInfo:Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;

    invoke-interface {p1, v0}, Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;->onResult(Lcom/smarx/notchlib/INotchScreen$NotchScreenInfo;)V

    return-void
.end method
