.class public final Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 CommonFloatInputPop.kt\ncom/codemao/nemo/dialog/pop/CommonFloatInputPop\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n46#2,9:98\n71#3:107\n77#4:108\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->access$getEdittext$p(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    goto :goto_29

    :cond_b
    new-array v3, v2, [Landroid/text/InputFilter$LengthFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    invoke-static {v6}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->access$getMaxLength$p(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 99
    :goto_29
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;->access$getSure$p(Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 100
    iget-object v3, p0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop$onCreate$$inlined$addTextChangedListener$default$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_46

    const/4 v1, 0x1

    :cond_46
    if-eqz v1, :cond_4c

    const p1, 0x7f06015c

    goto :goto_4f

    :cond_4c
    const p1, 0x7f06012c

    .line 100
    :goto_4f
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_56
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
