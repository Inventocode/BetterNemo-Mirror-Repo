.class Lcom/lxj/xpopup/impl/BottomListPopupView$1;
.super Ljava/lang/Object;
.source "BottomListPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/BottomListPopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/impl/BottomListPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/impl/BottomListPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/BottomListPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/BottomListPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method
