.class final Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$4;
.super Ljava/lang/Object;
.source "CustomKeyboard.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->initKeyboardView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$4;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 375
    instance-of p1, p2, Landroid/widget/EditText;

    if-eqz p1, :cond_26

    .line 376
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$4;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getEditTextArray$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Landroid/util/ArrayMap;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 377
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$4;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$viewFocus(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;Landroid/view/View;)V

    goto :goto_26

    .line 379
    :cond_21
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$4;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->hide()V

    :cond_26
    :goto_26
    return-void
.end method
