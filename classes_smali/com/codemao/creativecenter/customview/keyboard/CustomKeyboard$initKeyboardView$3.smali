.class final Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$3;
.super Ljava/lang/Object;
.source "CustomKeyboard.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "event"

    .line 366
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_16

    .line 367
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$3;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$viewFocus(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;Landroid/view/View;)V

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
