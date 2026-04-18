.class Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;
.super Ljava/lang/Object;
.source "BasePopupView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/core/BasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackPressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    .line 470
    iget-object p1, p0, Lcom/lxj/xpopup/core/BasePopupView$BackPressListener;->this$0:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p1, p2, p3}, Lcom/lxj/xpopup/core/BasePopupView;->processKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
