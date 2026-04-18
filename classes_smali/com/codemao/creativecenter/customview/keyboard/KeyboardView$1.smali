.class Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;
.super Landroid/os/Handler;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V
    .registers 2

    .line 356
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    if-eq v0, v2, :cond_f

    goto :goto_3c

    .line 373
    :cond_f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$400(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_3c

    .line 367
    :cond_19
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$300(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 368
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x32

    .line 369
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3c

    .line 364
    :cond_2b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$200(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c

    .line 361
    :cond_35
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$100(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;I)V

    :cond_3c
    :goto_3c
    return-void
.end method
