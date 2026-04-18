.class Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen$1;
.super Ljava/lang/Object;
.source "AndroidPNotchScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen;->getNotchRect(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen;Landroid/view/View;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;)V
    .registers 4

    .line 49
    iput-object p2, p0, Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen$1;->val$contentView:Landroid/view/View;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen$1;->val$callback:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 54
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 56
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen$1;->val$callback:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;

    invoke-interface {v1, v0}, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void

    .line 61
    :cond_18
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/notchscreen/AndroidPNotchScreen$1;->val$callback:Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void
.end method
