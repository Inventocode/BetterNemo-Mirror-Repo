.class public final Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CustomKeyboard.kt"

# interfaces
.implements Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->initKeyboardView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .registers 7

    if-eqz p1, :cond_f

    .line 318
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->playSoundEffect$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;IILjava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$sendVibrationEffect(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V

    .line 321
    :cond_f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$performKey(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;I[I)V

    return-void
.end method

.method public onPress(I)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    :cond_b
    return-void
.end method

.method public onRelease(I)V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    :cond_b
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public swipeDown()V
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    :cond_b
    return-void
.end method

.method public swipeLeft()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    :cond_b
    return-void
.end method

.method public swipeRight()V
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    :cond_b
    return-void
.end method

.method public swipeUp()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getOnKeyboardActionListener$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    :cond_b
    return-void
.end method
