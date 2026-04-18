.class Lcom/ljwx/basedialog/dialog/CustomDialog$1;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/basedialog/dialog/CustomDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/basedialog/dialog/CustomDialog;


# direct methods
.method constructor <init>(Lcom/ljwx/basedialog/dialog/CustomDialog;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$1;->this$0:Lcom/ljwx/basedialog/dialog/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 181
    iget-object p1, p0, Lcom/ljwx/basedialog/dialog/CustomDialog$1;->this$0:Lcom/ljwx/basedialog/dialog/CustomDialog;

    invoke-virtual {p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->dismissImmediately()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
