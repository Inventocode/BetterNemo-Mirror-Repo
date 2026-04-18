.class Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;
.super Ljava/lang/Object;
.source "KeyboardView.java"

# interfaces
.implements Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onLongPress(Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)Z
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

    .line 1039
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .registers 4

    .line 1041
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1300(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1042
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1400(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V

    return-void
.end method

.method public onPress(I)V
    .registers 3

    .line 1055
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1300(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    return-void
.end method

.method public onRelease(I)V
    .registers 3

    .line 1058
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1300(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1300(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->access$1400(Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;)V

    return-void
.end method

.method public swipeDown()V
    .registers 1

    return-void
.end method

.method public swipeLeft()V
    .registers 1

    return-void
.end method

.method public swipeRight()V
    .registers 1

    return-void
.end method

.method public swipeUp()V
    .registers 1

    return-void
.end method
