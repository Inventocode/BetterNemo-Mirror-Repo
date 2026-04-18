.class Lcom/codemao/nemo/view/TextCountLimitEditText$1;
.super Ljava/lang/Object;
.source "TextCountLimitEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/TextCountLimitEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/TextCountLimitEditText;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->afterTextChanged(Landroid/text/Editable;)V

    :cond_11
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$002(Lcom/codemao/nemo/view/TextCountLimitEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$102(Lcom/codemao/nemo/view/TextCountLimitEditText;I)I

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$202(Lcom/codemao/nemo/view/TextCountLimitEditText;I)I

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_2c
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 13

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$000(Lcom/codemao/nemo/view/TextCountLimitEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$400(Lcom/codemao/nemo/view/TextCountLimitEditText;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getWorkNameLength(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_26

    .line 90
    :cond_21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-double v0, v0

    .line 92
    :goto_26
    iget-object v2, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v2}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$500(Lcom/codemao/nemo/view/TextCountLimitEditText;)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_e9

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$000(Lcom/codemao/nemo/view/TextCountLimitEditText;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$400(Lcom/codemao/nemo/view/TextCountLimitEditText;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$000(Lcom/codemao/nemo/view/TextCountLimitEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_4e
    iget-object v1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$400(Lcom/codemao/nemo/view/TextCountLimitEditText;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v1

    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getWorkNameLength(Ljava/lang/String;)D

    move-result-wide v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->onTextChanged(Ljava/lang/CharSequence;IIID)V

    goto :goto_97

    .line 103
    :cond_7f
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v1

    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    int-to-double v6, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->onTextChanged(Ljava/lang/CharSequence;IIID)V

    .line 106
    :cond_97
    :goto_97
    iget-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {p1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$100(Lcom/codemao/nemo/view/TextCountLimitEditText;)I

    move-result p1

    iget-object p2, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-ge p1, p2, :cond_d5

    .line 107
    iget-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {p1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$200(Lcom/codemao/nemo/view/TextCountLimitEditText;)I

    move-result p1

    iget-object p2, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-ge p1, p2, :cond_cb

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {p1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$100(Lcom/codemao/nemo/view/TextCountLimitEditText;)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {p3}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$200(Lcom/codemao/nemo/view/TextCountLimitEditText;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_e2

    .line 110
    :cond_cb
    iget-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {p1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$100(Lcom/codemao/nemo/view/TextCountLimitEditText;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_e2

    .line 113
    :cond_d5
    iget-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 115
    :goto_e2
    iget-object p1, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_162

    .line 117
    :cond_e9
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v0

    if-eqz v0, :cond_162

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$400(Lcom/codemao/nemo/view/TextCountLimitEditText;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getWorkNameLength(Ljava/lang/String;)D

    move-result-wide v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->onTextChanged(Ljava/lang/CharSequence;IIID)V

    goto :goto_162

    .line 121
    :cond_10f
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-double v6, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->onTextChanged(Ljava/lang/CharSequence;IIID)V

    goto :goto_162

    .line 126
    :cond_122
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v0

    if-eqz v0, :cond_162

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$400(Lcom/codemao/nemo/view/TextCountLimitEditText;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v1

    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$000(Lcom/codemao/nemo/view/TextCountLimitEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getWorkNameLength(Ljava/lang/String;)D

    move-result-wide v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->onTextChanged(Ljava/lang/CharSequence;IIID)V

    goto :goto_162

    .line 130
    :cond_14a
    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$300(Lcom/codemao/nemo/view/TextCountLimitEditText;)Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;

    move-result-object v1

    iget-object v0, p0, Lcom/codemao/nemo/view/TextCountLimitEditText$1;->this$0:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/view/TextCountLimitEditText;->access$000(Lcom/codemao/nemo/view/TextCountLimitEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v6, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;->onTextChanged(Ljava/lang/CharSequence;IIID)V

    :cond_162
    :goto_162
    return-void
.end method
