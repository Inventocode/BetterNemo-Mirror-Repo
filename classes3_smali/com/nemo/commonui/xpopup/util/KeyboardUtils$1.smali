.class Lcom/nemo/commonui/xpopup/util/KeyboardUtils$1;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Landroid/view/View;Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->access$000(Landroid/app/Activity;)I

    move-result v0

    .line 64
    sget v1, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewInvisibleHeightPre:I

    if-eq v1, v0, :cond_28

    .line 66
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;

    .line 67
    invoke-interface {v2, v0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    goto :goto_16

    .line 69
    :cond_26
    sput v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewInvisibleHeightPre:I

    :cond_28
    return-void
.end method
