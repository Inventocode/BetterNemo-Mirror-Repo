.class Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;
.super Ljava/lang/Object;
.source "AndroidPNotchScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen;->getNotchRect(Landroid/app/Activity;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen;Landroid/view/View;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;)V
    .registers 4

    .line 44
    iput-object p2, p0, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;->val$contentView:Landroid/view/View;

    iput-object p3, p0, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;->val$callback:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 49
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 51
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;->val$callback:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;

    invoke-interface {v1, v0}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void

    .line 56
    :cond_18
    iget-object v0, p0, Lcn/codemao/android/sketch/notchlib/impl/AndroidPNotchScreen$1;->val$callback:Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void
.end method
