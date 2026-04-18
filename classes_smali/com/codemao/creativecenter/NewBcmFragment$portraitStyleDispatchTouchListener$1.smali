.class public final Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    if-eqz p1, :cond_9

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    :cond_9
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_36

    .line 443
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-nez v0, :cond_29

    goto :goto_36

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_36

    .line 444
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$portraitStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$defaultDispatchTouchEvent(Lcom/codemao/creativecenter/NewBcmFragment;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_36
    :goto_36
    const/4 p1, 0x0

    return p1
.end method
