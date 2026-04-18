.class public final Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 ImportWorkFloatInputPop.kt\ncom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n44#2,9:98\n71#3:107\n77#4:108\n*E\n"
.end annotation


# instance fields
.field final synthetic $helper$inlined:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;Landroid/widget/TextView;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->$helper$inlined:Landroid/widget/TextView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;->access$getSure$p(Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 99
    iget-object v3, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    if-eqz v4, :cond_27

    const v4, 0x7f06015c

    goto :goto_2a

    :cond_27
    const v4, 0x7f06012c

    .line 99
    :goto_2a
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 98
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :cond_31
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->$helper$inlined:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_45

    const-string/jumbo p1, "粘贴"

    goto :goto_48

    :cond_45
    const-string/jumbo p1, "清除"

    :goto_48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
