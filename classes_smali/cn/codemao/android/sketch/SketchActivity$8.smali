.class Lcn/codemao/android/sketch/SketchActivity$8;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 2

    .line 519
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$8;->this$0:Lcn/codemao/android/sketch/SketchActivity;

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

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 527
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity$8;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p2}, Lcn/codemao/android/sketch/SketchActivity;->access$2900(Lcn/codemao/android/sketch/SketchActivity;)Z

    move-result p2

    if-nez p2, :cond_3b

    .line 528
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 529
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$8;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object p2, p1, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    sget p3, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_codemao:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setChangeText(Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$8;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/SketchActivity;->access$3000(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity$8;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_41

    .line 532
    :cond_2f
    iget-object p2, p0, Lcn/codemao/android/sketch/SketchActivity$8;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object p2, p2, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setChangeText(Ljava/lang/String;)V

    goto :goto_41

    .line 535
    :cond_3b
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$8;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/SketchActivity;->access$2902(Lcn/codemao/android/sketch/SketchActivity;Z)Z

    :goto_41
    return-void
.end method
