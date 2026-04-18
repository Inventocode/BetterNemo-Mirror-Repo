.class public final Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2;
.super Ljava/lang/Object;
.source "CustomKeyboard.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->initKeyboardView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomKeyboard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomKeyboard.kt\ncom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1011:1\n251#2:1012\n253#2,2:1013\n*E\n*S KotlinDebug\n*F\n+ 1 CustomKeyboard.kt\ncom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2\n*L\n354#1:1012\n355#1,2:1013\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 354
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getKeyboardViewGroup$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Landroid/view/View;

    move-result-object p1

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_1c

    .line 355
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$initKeyboardView$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getKeyboardViewGroup$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 1013
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
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
