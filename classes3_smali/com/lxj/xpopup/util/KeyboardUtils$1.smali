.class final Lcom/lxj/xpopup/util/KeyboardUtils$1;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/lxj/xpopup/core/BasePopupView;Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$decorViewInvisibleHeightPre:[I

.field final synthetic val$listener:Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;[ILcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$decorViewInvisibleHeightPre",
            "val$window"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/lxj/xpopup/util/KeyboardUtils$1;->val$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/lxj/xpopup/util/KeyboardUtils$1;->val$decorViewInvisibleHeightPre:[I

    iput-object p3, p0, Lcom/lxj/xpopup/util/KeyboardUtils$1;->val$listener:Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/lxj/xpopup/util/KeyboardUtils$1;->val$window:Landroid/view/Window;

    invoke-static {v0}, Lcom/lxj/xpopup/util/KeyboardUtils;->access$000(Landroid/view/Window;)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/lxj/xpopup/util/KeyboardUtils$1;->val$decorViewInvisibleHeightPre:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eq v1, v0, :cond_16

    .line 67
    iget-object v1, p0, Lcom/lxj/xpopup/util/KeyboardUtils$1;->val$listener:Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;

    invoke-interface {v1, v0}, Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    .line 68
    iget-object v1, p0, Lcom/lxj/xpopup/util/KeyboardUtils$1;->val$decorViewInvisibleHeightPre:[I

    aput v0, v1, v2

    :cond_16
    return-void
.end method
