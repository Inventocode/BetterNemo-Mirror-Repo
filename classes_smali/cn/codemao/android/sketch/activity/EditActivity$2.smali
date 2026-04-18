.class Lcn/codemao/android/sketch/activity/EditActivity$2;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/EditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/EditActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/EditActivity;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 76
    iget-object p2, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/codemao/android/sketch/activity/EditActivity;->beforeText:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/EditActivity;->access$200(Lcn/codemao/android/sketch/activity/EditActivity;)Lcn/codemao/android/sketch/utils/CEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/activity/EditActivity;->access$102(Lcn/codemao/android/sketch/activity/EditActivity;I)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 82
    iget-object p2, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/codemao/android/sketch/activity/EditActivity;->afterText:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    iget-object p2, p1, Lcn/codemao/android/sketch/activity/EditActivity;->beforeText:Ljava/lang/String;

    iget-object p1, p1, Lcn/codemao/android/sketch/activity/EditActivity;->afterText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    .line 84
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    iget-object p1, p1, Lcn/codemao/android/sketch/activity/EditActivity;->afterText:Ljava/lang/String;

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/ValidateUtils;->getStringLength(Ljava/lang/String;)D

    move-result-wide p1

    const-wide/high16 p3, 0x4059000000000000L  # 100.0

    cmpl-double v0, p1, p3

    if-lez v0, :cond_53

    .line 86
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/EditActivity;->access$100(Lcn/codemao/android/sketch/activity/EditActivity;)I

    move-result p1

    iget-object p2, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    iget-object p2, p2, Lcn/codemao/android/sketch/activity/EditActivity;->beforeText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_42

    .line 87
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/EditActivity;->access$200(Lcn/codemao/android/sketch/activity/EditActivity;)Lcn/codemao/android/sketch/utils/CEditText;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-static {p2}, Lcn/codemao/android/sketch/activity/EditActivity;->access$100(Lcn/codemao/android/sketch/activity/EditActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_53

    .line 89
    :cond_42
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/EditActivity;->access$200(Lcn/codemao/android/sketch/activity/EditActivity;)Lcn/codemao/android/sketch/utils/CEditText;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    iget-object p2, p2, Lcn/codemao/android/sketch/activity/EditActivity;->beforeText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 92
    :cond_53
    :goto_53
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/EditActivity$2;->this$0:Lcn/codemao/android/sketch/activity/EditActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/EditActivity;->access$300(Lcn/codemao/android/sketch/activity/EditActivity;)V

    :cond_58
    return-void
.end method
