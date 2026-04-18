.class Lcn/codemao/android/sketch/SketchActivity$3;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 431
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 434
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 435
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 437
    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 438
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 439
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$700(Lcn/codemao/android/sketch/SketchActivity;)I

    move-result v0

    const/4 v2, 0x0

    if-le v1, v0, :cond_32

    if-gtz v1, :cond_b4

    :cond_32
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$800(Lcn/codemao/android/sketch/SketchActivity;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 440
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$600(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 441
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$600(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 442
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$600(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity;->access$900(Lcn/codemao/android/sketch/SketchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7e

    .line 444
    :cond_67
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$600(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity;->access$600(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :goto_7e
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$1000(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity;->access$1100(Lcn/codemao/android/sketch/SketchActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->setTextInputing(Z)V

    .line 449
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, v2}, Lcn/codemao/android/sketch/SketchActivity;->access$1202(Lcn/codemao/android/sketch/SketchActivity;Z)Z

    .line 450
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, v2}, Lcn/codemao/android/sketch/SketchActivity;->access$1302(Lcn/codemao/android/sketch/SketchActivity;Z)Z

    .line 451
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    iget-object v0, v0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 452
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, v2}, Lcn/codemao/android/sketch/SketchActivity;->access$1400(Lcn/codemao/android/sketch/SketchActivity;Z)V

    goto :goto_bf

    .line 454
    :cond_b4
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity;->access$1302(Lcn/codemao/android/sketch/SketchActivity;Z)Z

    .line 455
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$3;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-static {v0, v2}, Lcn/codemao/android/sketch/SketchActivity;->access$802(Lcn/codemao/android/sketch/SketchActivity;Z)Z

    :goto_bf
    return-void
.end method
