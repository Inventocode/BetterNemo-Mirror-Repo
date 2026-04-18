.class final Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImportWorkFloatInputPop.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 4

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->access$getEdittext$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    :cond_1b
    move-object p1, v0

    .line 37
    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-eqz p1, :cond_4c

    .line 38
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->access$getSureCallback$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    invoke-static {v1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->access$getEdittext$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    goto :goto_43

    :cond_42
    move-object v0, v1

    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    invoke-static {v1}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->access$getData$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Lcom/codemao/nemo/bean/KnWorkListItem;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    return-void
.end method
