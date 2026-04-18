.class final Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormalModeChange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomKeyboard.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/creativecenter/customview/keyboard/Keyboard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormalModeChange$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;
    .registers 4

    .line 37
    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    .line 38
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormalModeChange$2;->this$0:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;->access$getContext$p(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard;)Landroid/content/Context;

    move-result-object v1

    .line 39
    sget v2, Lcom/codemao/creativecenter/R$xml;->creative_keyboard_normal_mode_change:I

    .line 37
    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboard$keyboardNormalModeChange$2;->invoke()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    return-object v0
.end method
